#include <gmpxx.h>
#include <algorithm>
#include <chrono>
#include <iostream>
#include <map>
#include <set>
#include <vector>
#include <functional>
#include <numeric>
#include <stdexcept>
#include <random>
using namespace std; using Z=mpz_class; using V=vector<unsigned long>;
vector<int> primes(int n){vector<int> a;for(int i=2;i<=n;i++){bool ok=1;for(int q:a){if(q>i/q)break;if(i%q==0){ok=0;break;}}if(ok)a.push_back(i);}return a;}
int val(int a,int p){int e=0;while(a%p==0){++e;a/=p;}return e;}
Z conv(const Z& x,const V& s){Z y=0,t;for(auto a:s){mpz_mul_2exp(t.get_mpz_t(),x.get_mpz_t(),a);mpz_ior(y.get_mpz_t(),y.get_mpz_t(),t.get_mpz_t());}return y;}
struct Checker{
 int target,changed=0; bool fresh=false; Z guards,lowbits; int n; vector<int> sm,bg; map<int,int> cnt; V radix,stride; unsigned long N=1; map<int,vector<V>> shapes; map<int,vector<V>> norm; Z smooth=1; vector<vector<pair<unsigned long,Z>>> masks;
 Checker(int n,int target=0,bool fresh=false):target(target),fresh(fresh),n(n){for(int p:primes(n))if(p<=n/p)sm.push_back(p);else bg.push_back(p);for(int p:bg)if(n/p>1)cnt[n/p]++;
 for(int p:bg)if(n%p==0)changed=n/p; if(target){auto it=find(sm.begin(),sm.end(),target);if(it==sm.end())throw runtime_error("invalid small target");rotate(sm.begin(),it,it+1);}
 for(int p:sm){unsigned long r=1+(p==target);for(int a=2;a<=n;a++)r+=val(a,p);stride.push_back(N);radix.push_back(r);if(N>1000000000ul/r)throw runtime_error("radix budget exceeded");N*=r;}
 for(int a=2;a<=n;a++){bool ok=1;for(int p:bg)if(a%p==0){ok=0;break;}if(ok)smooth|=smooth<<code(a);}
 for(auto [k,c]:cnt){vector<set<unsigned long>> dp(k+1);dp[0].insert(0);for(int a=1;a<=k;a++)for(int b=a;b>0;b--)for(auto x:dp[b-1])dp[b].insert(x+code(a));set<V> unique;for(auto &s:dp){V v(s.begin(),s.end());shapes[k].push_back(v);unique.insert(normalize(v));}norm[k]=vector<V>(unique.begin(),unique.end());}
 Z all=(Z(1)<<N)-1;if(target){lowbits=all/((Z(1)<<radix[0])-1);guards=lowbits<<(radix[0]-1);return;}for(size_t i=0;i<sm.size();i++){unsigned long b=radix[i],s=stride[i],per=b*s;Z rep=all/((Z(1)<<per)-1);vector<pair<unsigned long,Z>> v;for(unsigned long d=1;d<b;d*=2){Z ma=(((Z(1)<<((b-d)*s))-1)<<(d*s))*rep;v.emplace_back(d*s,ma);}masks.push_back(move(v));}}
 unsigned long code(int a){unsigned long c=0;for(size_t i=0;i<sm.size();i++)c+=stride[i]*val(a,sm[i]);return c;}
 V normalize(const V& v){unsigned long low=0;for(size_t i=0;i<sm.size();i++){unsigned long mn=radix[i];for(auto x:v)mn=min(mn,(x/stride[i])%radix[i]);low+=mn*stride[i];}V out=v;for(auto &x:out)x-=low;return out;}
 bool hole(const Z& S,size_t a){if(target){Z A=S&~(S<<1);Z Q=(A|guards)-lowbits;return (A&Q)!=0;}auto &steps=masks[a];const auto &[s,mask]=steps[0];Z prev=(S<<s)&mask;Z starts=S&~prev;Z reach=S;for(auto &[sh,ma]:steps)reach|=(reach<<sh)&ma;Z bad=starts&((reach<<s)&mask);return bad!=0;}
 // Fix ONE labeled group to b<=k/2. Complement of all original factors
 // reflects small coordinates and reverses target large coordinate, preserving holes.
 // Remaining equal-k groups are indistinguishable in the Minkowski sum; use multisets.
 // Exact aggregate deduplication; complements pair entire tuples, not
 // individual groups (independent reflections would be unsound).
 V sumset(const V& a,const V& b){V z;z.reserve(a.size()*b.size());for(auto x:a)for(auto y:b)z.push_back(x+y);sort(z.begin(),z.end());z.erase(unique(z.begin(),z.end()),z.end());return z;}
 V reflect(const V& a){unsigned long hi=0;for(size_t i=0;i<sm.size();i++){unsigned long mx=0;for(auto x:a)mx=max(mx,x/stride[i]%radix[i]);hi+=mx*stride[i];}V b;for(auto it=a.rbegin();it!=a.rend();it++)b.push_back(hi-*it);return b;}
 vector<V> family(int k,int m){set<V> S{{0}};for(int j=0;j<m;j++){set<V> T;for(auto &a:S)for(auto &b:norm[k])T.insert(sumset(a,b));S.swap(T);}for(auto &a:S)if(!S.count(reflect(a)))throw runtime_error("reflection closure");return {S.begin(),S.end()};}
 vector<V> oldshapes(int k){vector<set<unsigned long>> dp(k+1);dp[0].insert(0);for(int j=1;j<=k;j++)for(int b=j;b>0;b--)for(auto x:dp[b-1])dp[b].insert(x+code(j));set<V> out;for(auto &v:dp)out.insert(normalize(V(v.begin(),v.end())));return {out.begin(),out.end()};}
 bool each(map<int,int> c,const function<bool(const Z&)>& f,bool symmetry=true,bool filter=false){vector<vector<V>> fam;for(auto [k,m]:c)if(m>0){auto fs=family(k,m);if(filter&&fresh&&k==changed){set<V> old;for(auto &a:family(k,m-1))for(auto &b:oldshapes(k-1))old.insert(sumset(a,b));size_t before=fs.size();fs.erase(remove_if(fs.begin(),fs.end(),[&](const V& v){return old.count(v);}),fs.end());cout<<"shape_filter k="<<k<<" before="<<before<<" after="<<fs.size()<<endl;}fam.push_back(move(fs));}sort(fam.begin(),fam.end(),[](auto&a,auto&b){size_t x=0,y=0;for(auto&v:a)x+=v.size();for(auto&v:b)y+=v.size();return x*b.size()>y*a.size();});
 function<bool(size_t,bool,const Z&)> go=[&](size_t i,bool decided,const Z& B){if(i==fam.size())return f(B);for(auto &v:fam[i]){V w=reflect(v);if(symmetry&&!decided&&v>w)continue;Z next=conv(B,v);if(!go(i+1,decided||v!=w,next))return false;}return true;};return go(0,!symmetry,smooth);}
 bool run(bool symmetry=true,bool prune=true,int only=-1,int omit=0){auto start=chrono::steady_clock::now();cout<<"n="<<n<<" radix="<<N<<" small=";for(auto p:sm)cout<<p<<",";cout<<endl;unsigned long smallchecks=0,bigchecks=0,leaves=0;
 if((only==-1||only==0)&&!each(cnt,[&](const Z& S){++leaves;for(size_t a=0;a<sm.size();a++){if(sm[a]==omit||(target&&sm[a]!=target))continue;++smallchecks;if(hole(S,a)){cout<<"HOLE small p="<<sm[a]<<endl;return false;}}return true;},symmetry,true))return false;
 cout<<"small leaves="<<leaves<<" checks="<<smallchecks<<endl;
 for(auto [k,m]:cnt){if(only!=-1&&k!=only)continue;if(prune&&k<=3){cout<<"large k="<<k<<" theorem skipped"<<endl;continue;}map<int,int> c=cnt;c[k]--;unsigned long checks=0;
 if(!each(c,[&](const Z& S){vector<Z> B(k+1),after(k+1);B[0]=S;for(int j=1;j<=k;j++){auto shift=code(j);for(int b=j;b>0;b--)B[b]|=B[b-1]<<shift;}Z suffix=0,prefix=0;for(int i=k;i>=0;i--){after[i]=suffix;suffix|=B[i];}for(int i=0;i<=k;i++){Z bad=prefix&after[i]&~B[i];if(bad!=0){cout<<"HOLE large k="<<k<<" b="<<i<<endl;return false;}prefix|=B[i];}++checks;return true;},symmetry,k!=changed))return false;bigchecks+=checks;cout<<"large k="<<k<<" leaves="<<checks<<endl;}
 cout<<(only==-1?"PASS n=":"PASS_PART n=")<<n<<" only="<<only<<" small_checks="<<smallchecks<<" large_checks="<<bigchecks<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;return true;}
};
int selftest(){mt19937 rng(605957);unsigned long axes=0,positive=0;for(int n:{4,8,10,15}){Checker c(n);for(int t=0;t<120;t++){Z B=0;vector<map<unsigned long,vector<unsigned long>>> fibers(c.sm.size());for(unsigned long i=0;i<c.N;i++)if(rng()%5==0){mpz_setbit(B.get_mpz_t(),i);for(size_t a=0;a<c.sm.size();a++){auto k=(i/c.stride[a])%c.radix[a];fibers[a][i-k*c.stride[a]].push_back(k);}}for(size_t a=0;a<c.sm.size();a++){bool expected=false;for(auto &[_,v]:fibers[a])if(v.back()-v.front()+1!=v.size()){expected=true;break;}if(c.hole(B,a)!=expected)throw runtime_error("axis detector mismatch");axes++;positive+=expected;}}}cout<<"SELFTEST axis="<<axes<<" positive="<<positive<<" PASS"<<endl;return 0;}
int main(int argc,char**argv){bool sym=true,prune=true;int only=-1,omit=0,target=0;bool fresh=false;for(int i=1;i<argc;i++){string a=argv[i];if(a=="--fresh"){fresh=true;continue;}if(a.rfind("--p=",0)==0){target=stoi(a.substr(4));only=0;continue;}if(a=="--selftest")return selftest();if(a.rfind("--omit=",0)==0){omit=stoi(a.substr(7));continue;}if(a=="--no-reduction"){sym=prune=false;continue;}if(a.rfind("--only=",0)==0){only=stoi(a.substr(7));continue;}if(!Checker(stoi(a),target,fresh).run(sym,prune,only,omit))return 2;}return 0;}
