> setwd("/Users/isharu/Desktop/R")
> df <- read.csv("/Users/isharu/Desktop/R/3_superstore_data.csv")
> cat("\nПервые строки:")

Первые строки:
> head(df)
     Id Year_Birth  Education Marital_Status Income Kidhome Teenhome
1  1826       1970 Graduation       Divorced  84835       0        0
2     1       1961 Graduation         Single  57091       0        0
3 10476       1958 Graduation        Married  67267       0        1
4  1386       1967 Graduation       Together  32474       1        1
5  5371       1989 Graduation         Single  21474       1        0
6  7348       1958        PhD         Single  71691       0        0
  Dt_Customer Recency MntWines MntFruits MntMeatProducts MntFishProducts
1   6/16/2014       0      189       104             379             111
2   6/15/2014       0      464         5              64               7
3   5/13/2014       0      134        11              59              15
4   11/5/2014       0       10         0               1               0
5    8/4/2014       0        6        16              24              11
6   3/17/2014       0      336       130             411             240
  MntSweetProducts MntGoldProds NumDealsPurchases NumWebPurchases
1              189          218                 1               4
2                0           37                 1               7
3                2           30                 1               3
4                0            0                 1               1
5                0           34                 2               3
6               32           43                 1               4
  NumCatalogPurchases NumStorePurchases NumWebVisitsMonth Response Complain
1                   4                 6                 1        1        0
2                   3                 7                 5        1        0
3                   2                 5                 2        0        0
4                   0                 2                 7        0        0
5                   1                 2                 7        1        0
6                   7                 5                 2        1        0
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> cat("\nIncome больше 30 000:")

Income больше 30 000:
> df <- filter(df, Income > 30000)
> print(df)
        Id Year_Birth  Education Marital_Status Income Kidhome Teenhome
1     1826       1970 Graduation       Divorced  84835       0        0
2        1       1961 Graduation         Single  57091       0        0
3    10476       1958 Graduation        Married  67267       0        1
4     1386       1967 Graduation       Together  32474       1        1
5     7348       1958        PhD         Single  71691       0        0
6     4073       1954   2n Cycle        Married  63564       0        0
7     1991       1967 Graduation       Together  44931       0        1
8     4047       1954        PhD        Married  65324       0        1
9     9477       1954        PhD        Married  65324       0        1
10    2079       1947   2n Cycle        Married  81044       0        0
11    5642       1979     Master       Together  62499       1        0
12   10530       1959        PhD          Widow  67786       0        0
13     837       1977 Graduation        Married  54809       1        1
14   10521       1977 Graduation        Married  54809       1        1
15   10175       1958        PhD       Divorced  32173       0        1
16    1473       1960   2n Cycle         Single  47823       0        1
17    2795       1958     Master         Single  30523       2        1
18    2285       1954     Master       Together  36634       0        1
19     115       1966     Master         Single  43456       0        1
20   10470       1979     Master        Married  40662       1        0
21    4065       1976        PhD        Married  49544       1        0
22   10968       1969 Graduation         Single  57731       0        1
23    5985       1965     Master         Single  33168       0        1
24    5430       1956 Graduation       Together  54450       1        1
25    8432       1956 Graduation       Together  54450       1        1
26     453       1956        PhD          Widow  35340       1        1
27    9687       1975 Graduation         Single  73170       0        0
28    8890       1971        PhD       Divorced  65808       1        1
29    9264       1986 Graduation        Married  79529       0        0
30    5824       1972        PhD       Together  34578       2        1
31    5794       1974        PhD        Married  46374       0        1
32    7962       1987        PhD         Single  95169       0        0
33    2681       1984   2n Cycle        Married  65370       0        0
34   10141       1960     Master       Divorced  39228       0        0
35    3725       1961        PhD         Single  84865       0        0
36    3767       1968 Graduation        Married  61314       0        1
37    7030       1955        PhD        Married  66465       0        1
38    1524       1983   2n Cycle         Single  81698       0        0
39    3657       1986 Graduation         Single  39146       1        0
40    9595       1961 Graduation       Together  64260       0        0
41    3158       1973 Graduation        Married  32300       1        0
42    5114       1965     Master        Married  74806       0        1
43     340       1970 Graduation       Divorced  72967       0        1
44    8805       1960 Graduation         Single  48904       0        1
45    1402       1954     Master        Married  66991       0        0
46    7264       1978   2n Cycle         Single  52195       2        1
47    1619       1956 Graduation        Married  90369       0        0
48    1857       1952 Graduation         Single  47139       1        1
49    4877       1973     Master        Married  38576       0        1
50    3066       1975        PhD       Together  61905       0        1
51   10286       1962 Graduation        Married  83715       0        0
52    1992       1964 Graduation        Married  60597       0        1
53   10623       1961     Master       Together  48330       0        1
54    4867       1968        PhD         Single  38236       1        1
55    4865       1974     Master       Divorced  53367       1        1
56    6287       1986 Graduation       Together  34728       1        0
57    4405       1956     Master        Married  63915       0        2
58    5332       1960   2n Cycle        Married  82504       0        0
59    1519       1972        PhD         Single  38578       1        1
60    9080       1972        PhD         Single  38578       1        1
61    1772       1975        PhD        Married  79174       0        0
62    5341       1962   2n Cycle       Divorced  81975       0        1
63    5510       1977     Master        Married  43263       0        1
64    7022       1971 Graduation        Married  76445       1        0
65    9999       1965 Graduation       Together  75276       0        0
66   10352       1963 Graduation          Widow  34213       1        1
67    7919       1976        PhD       Together  72335       0        0
68    4114       1964     Master        Married  79143       0        0
69    9888       1969 Graduation       Together  68695       0        0
70    4399       1969 Graduation       Together  68695       0        0
71    4452       1957 Graduation         Single  50388       0        1
72    4785       1970        PhD       Together  77622       0        2
73    8461       1962 Graduation       Divorced  46102       2        1
74    3878       1980   2n Cycle         Single  31859       1        0
75     158       1945        PhD       Together  71604       0        0
76    9970       1977 Graduation       Together  55375       0        1
77    4002       1960        PhD        Married  77037       0        1
78    7279       1969        PhD       Together  69476       0        0
79   10582       1979 Graduation        Married  72063       0        1
80    4470       1962     Master        Married  58646       0        1
81    6183       1962     Master        Married  58646       0        1
82    6379       1949     Master          Widow  47570       1        1
83    8601       1980 Graduation        Married  80011       0        1
84    4827       1956        PhD         Single  54998       0        1
85    6715       1948        PhD         Single  60200       0        1
86   10676       1982 Graduation        Married  63211       0        0
87    1041       1973        PhD         Single  48432       0        1
88     492       1973        PhD           YOLO  48432       0        1
89   11133       1973        PhD           YOLO  48432       0        1
90    4491       1949     Master        Married  62845       1        1
91     873       1949     Master        Married  62845       1        1
92    1631       1965        PhD       Together  65220       0        0
93    8278       1990        PhD        Married  74214       0        0
94    6815       1980   2n Cycle        Married  96547       0        0
95     254       1955 Graduation       Together  53863       0        1
96    1349       1970 Graduation        Married  50447       2        0
97    2534       1953 Graduation        Married  37716       0        1
98    2130       1982 Graduation       Together  45203       2        0
99    2296       1975     Master        Married  37368       1        0
100   3799       1955 Graduation        Married  67225       0        1
101  11084       1976     Master       Together  65104       0        1
102   5172       1976     Master       Together  65104       0        1
103   9504       1949     Master        Married  81698       0        0
104    850       1968 Graduation         Single  70566       0        1
105   4477       1958 Graduation       Together  69096       0        1
106   1945       1962 Graduation        Married  71434       0        1
107   7685       1978 Graduation        Married  33039       1        0
108   6310       1978 Graduation        Married  33039       1        0
109  10832       1958 Graduation       Together  46610       0        0
110   3025       1958 Graduation         Single  49967       0        1
111   2404       1976 Graduation        Married  53359       1        1
112   8581       1971     Master        Married  49505       1        1
113   8755       1946     Master        Married  68657       0        0
114  10177       1954 Graduation       Divorced  72071       0        1
115   2429       1954 Graduation       Divorced  72071       0        1
116   8920       1967     Master         Single  59235       1        0
117   7233       1972 Graduation        Married  69209       0        0
118   6678       1989 Graduation       Together  31928       1        0
119    830       1987        PhD         Single  74004       0        0
120   6365       1987   2n Cycle        Married  30390       0        0
121   1031       1989   2n Cycle        Married  85710       0        0
122  10089       1974 Graduation       Divorced 102692       0        0
123   9256       1971 Graduation         Single  58350       0        1
124  10356       1957        PhD       Divorced  41437       1        1
125   9323       1949     Master       Together  49912       0        1
126   1146       1949     Master       Together  49912       0        1
127   6343       1959 Graduation        Married  79823       0        1
128   8545       1954 Graduation       Divorced  85683       0        0
129   8275       1965        PhD       Divorced  47025       1        1
130  10673       1976        PhD        Married  68397       0        1
131   8799       1984        PhD        Married  38175       1        0
132     67       1972     Master         Single  46423       1        1
133   9923       1972     Master         Single  46423       1        1
134   2814       1976     Master       Together  30560       1        0
135   2711       1976     Master       Together  30560       1        0
136   4320       1979 Graduation         Single  60152       0        1
137  10814       1947 Graduation       Together  70321       0        0
138    944       1962 Graduation        Married  56181       0        1
139   6184       1969        PhD        Married  68462       0        0
140   3498       1976        PhD        Married  55424       0        1
141   2870       1973 Graduation        Married  49094       0        1
142   7342       1961   2n Cycle          Widow  59184       0        1
143   1911       1987 Graduation       Together  67430       0        0
144  10862       1960     Master        Married  30522       0        1
145   2546       1977   2n Cycle         Single  31878       0        1
146   3005       1992 Graduation         Single  83528       0        0
147   8318       1979 Graduation       Together  90300       0        0
148   2930       1978     Master         Single  68092       0        0
149   8216       1972     Master        Married  53761       1        1
150   1212       1973 Graduation        Married  52845       1        0
151  10905       1955 Graduation       Together  42586       1        1
152   8910       1955 Graduation       Together  42586       1        1
153   7872       1975        PhD        Married  86836       0        0
154   4290       1972 Graduation        Married  30467       1        0
155   7408       1952        PhD        Married  54549       0        1
156   8235       1956     Master       Together  69245       0        1
157  10949       1963        PhD       Divorced  72968       0        0
158   7284       1953 Graduation        Married  48686       1        2
159   9529       1990 Graduation        Married  73687       0        0
160   9930       1944        PhD         Single  82716       0        0
161  10270       1981   2n Cycle        Married  35523       1        0
162    760       1975        PhD       Divorced  60554       1        0
163   5519       1956 Graduation       Together  64090       0        1
164    232       1965 Graduation         Single  61559       0        1
165   3009       1962        PhD          Widow  71670       0        0
166   6518       1951        PhD          Widow  67680       0        1
167  10669       1981 Graduation        Married  54386       0        1
168   5682       1953        PhD         Single  64108       0        1
169   1570       1951        PhD       Together  69702       0        1
170   1497       1952 Graduation         Single  47958       0        1
171   9723       1960 Graduation        Married  67716       0        1
172   7261       1971 Graduation       Together  34600       1        1
173   2452       1971 Graduation       Together  34600       1        1
174   5621       1969 Graduation        Married  48752       1        1
175   7373       1952        PhD       Divorced  46610       0        2
176   5331       1977 Graduation        Married  74985       0        0
177    263       1945        PhD         Single  45576       0        0
178   4619       1945        PhD         Single 113734       0        0
179    940       1987 Graduation         Single  57100       1        0
180   6019       1971        PhD        Married  37126       1        0
181   1463       1958 Graduation         Single  45160       1        1
182   6424       1977 Graduation       Together  33178       1        0
183   8233       1950     Master          Widow  64866       0        1
184   1515       1975     Master       Together  34176       0        1
185  10855       1968     Master         Single  50014       1        0
186  10909       1948 Graduation        Married  92344       0        0
187   3376       1970     Master       Divorced  55282       1        0
188  10232       1963        PhD       Divorced  48799       0        1
189   5547       1982        PhD        Married  84169       0        0
190   8362       1982        PhD        Married  84169       0        0
191   3524       1971     Master         Single  39763       1        0
192  10095       1975        PhD       Divorced  74165       0        0
193   8897       1965 Graduation         Single  42720       1        1
194    466       1944 Graduation        Married  65275       0        0
195  11025       1961 Graduation        Married  36443       1        1
196   2387       1952     Master       Together  43776       1        1
197   1618       1965 Graduation       Together  56046       0        0
198     25       1958 Graduation        Married  65148       0        1
199   3277       1955 Graduation       Divorced  49431       0        1
200   8566       1961        PhD       Together  32583       1        1
201   8159       1968 Graduation        Married  51287       1        1
202   7628       1973   2n Cycle        Married  43050       1        0
203   9597       1969 Graduation        Married  73448       0        0
204  10150       1961 Graduation         Single  86429       0        0
205   3885       1983        PhD        Married  33569       1        0
206   8026       1952 Graduation        Married  62998       0        1
207   5429       1948        PhD        Married  45579       0        1
208    977       1957 Graduation       Together  47320       0        1
209   2793       1976        PhD       Divorced  70179       0        1
210   1071       1976        PhD       Divorced  70179       0        1
211   2632       1954 Graduation        Married  50501       1        1
212   6404       1969 Graduation       Together  58917       1        2
213  10240       1949 Graduation       Together  69372       0        0
214   2521       1971     Master        Married  35178       1        0
215   4301       1971     Master        Married  35178       1        0
216   7381       1968 Graduation       Divorced  75693       0        0
217   2407       1982 Graduation        Married  69109       0        0
218   9064       1982 Graduation        Married  69109       0        0
219   5067       1994 Graduation       Together  80134       0        0
220  10281       1970 Graduation       Divorced  64713       1        0
221  11191       1986 Graduation       Divorced  41411       0        0
222   2552       1955        PhD         Single  55521       1        2
223   6720       1968     Master       Together  43795       0        1
224   1183       1949     Master        Married  36408       1        1
225   4186       1950 Graduation       Together  34026       1        1
226   1419       1950 Graduation       Together  34026       1        1
227    967       1976 Graduation        Married  46049       1        1
228   1048       1972     Master        Married  35641       1        0
229   9262       1984   2n Cycle       Together  32414       0        0
230   3427       1955        PhD        Married  59821       0        1
231   5892       1980 Graduation        Married  34968       1        0
232   8911       1967        PhD        Married  56320       0        1
233   6606       1969     Master        Married  70091       1        0
234   2677       1956 Graduation       Together  46097       0        1
235    252       1963        PhD       Divorced  41003       0        0
236   9860       1959 Graduation       Together  44911       0        1
237   1388       1975 Graduation         Single  33249       1        0
238    979       1975 Graduation         Single  33249       1        0
239   7494       1950        PhD       Divorced  42873       1        1
240  10490       1969        PhD        Married  51039       1        1
241   3403       1958        PhD       Together  78952       0        1
242   4828       1954 Graduation       Divorced  79865       0        1
243     92       1988 Graduation          Alone  34176       1        0
244   3312       1988 Graduation         Single  34176       1        0
245  11176       1970        PhD       Together  65968       0        1
246   1446       1956     Master         Single  86424       0        0
247   9699       1966 Graduation       Divorced  67272       0        1
248   9790       1957 Graduation         Single  78499       0        0
249   2324       1972 Graduation       Together  77044       0        1
250   5080       1993 Graduation         Single  70515       0        0
251   7849       1970        PhD        Married  80336       0        0
252   7793       1976 Graduation       Together  62061       0        1
253   6853       1982     Master         Single  75777       0        0
254   7366       1982     Master         Single  75777       0        0
255   9780       1971     Master       Together  71499       0        1
256   7573       1978        PhD         Single  31626       1        0
257   1379       1992     Master       Together  42670       0        0
258   8923       1973 Graduation         Single  83917       0        0
259   3547       1969     Master       Together  41021       1        0
260   8707       1956 Graduation        Married  79456       0        0
261   1891       1980     Master       Divorced  78789       0        0
262   6271       1952        PhD        Married  50870       0        1
263   9635       1983     Master        Married  35876       0        0
264   6205       1967     Master         Single  32557       1        0
265  10681       1970   2n Cycle        Married  62466       0        1
266   5156       1970   2n Cycle        Married  62466       0        1
267   3050       1966 Graduation        Married  54198       1        1
268   8164       1978        PhD        Married  82170       0        0
269   5626       1964        PhD         Single  61798       0        0
270   6406       1988     Master        Married  78285       0        0
271   7002       1955 Graduation         Single  62535       0        1
272   6116       1968   2n Cycle        Married  48985       0        1
273    291       1970 Graduation        Married  72940       0        0
274   8779       1985   2n Cycle        Married  36145       1        0
275   4931       1977 Graduation       Together 157146       0        0
276   1650       1960     Master        Married  81843       0        0
277   9701       1988 Graduation       Together  41883       1        0
278   6431       1964        PhD        Married  45759       1        1
279  10789       1964        PhD        Married  45759       1        1
280   5302       1986 Graduation       Together  78394       0        0
281   4459       1989 Graduation         Single  30279       1        0
282  10642       1989 Graduation         Single  30279       1        0
283   9213       1970 Graduation          Widow  31880       1        0
284   3678       1973 Graduation          Widow  60208       1        1
285   3698       1983 Graduation       Together  78687       0        0
286   5929       1973        PhD        Married  37401       1        0
287  10795       1973        PhD        Married  37401       1        0
288   4390       1954 Graduation       Together  75315       0        1
289   9362       1965 Graduation         Single  69263       0        1
290   1577       1946 Graduation        Married  78569       0        0
291   4609       1966        PhD        Married  57705       0        1
292   7143       1955   2n Cycle       Together  74805       0        1
293   1729       1961        PhD       Together  66426       0        1
294  10664       1949     Master          Widow  51529       0        1
295  10507       1977   2n Cycle       Divorced  59601       0        1
296   6982       1976 Graduation        Married  74068       0        0
297   7042       1983 Graduation        Married  36790       0        0
298   4099       1972 Graduation        Married  30675       1        0
299   5031       1974 Graduation       Together  83145       0        0
300   1970       1968     Master       Together  34053       0        1
301   5726       1983     Master         Single  31788       1        0
302   5231       1974   2n Cycle        Married  45894       0        2
303   1307       1978 Graduation       Divorced  41986       0        1
304  10609       1962        PhD        Married  42769       0        1
305   5782       1982   2n Cycle       Together  58582       0        1
306   7533       1964 Graduation        Married  49096       1        1
307   9493       1980        PhD         Single  76412       0        0
308   7393       1978 Graduation       Together  41580       1        1
309   4713       1979        PhD        Married  31605       1        0
310   3766       1959     Master          Widow  33051       0        0
311   8933       1983   2n Cycle        Married  32146       1        0
312   9289       1979 Graduation        Married  36781       1        0
313   2613       1960     Master        Married  54197       0        1
314  10133       1970 Graduation         Single  93790       0        0
315  10796       1984     Master        Married  30477       1        0
316   3388       1967 Graduation       Divorced  70844       1        1
317   6507       1980 Graduation         Single  30828       1        0
318   7446       1967     Master       Together  62513       0        1
319  10477       1973        PhD       Together  39435       1        0
320   6072       1970     Master         Single  75345       0        0
321    247       1971 Graduation        Married  36715       1        0
322   9463       1959 Graduation       Together  71706       0        1
323   1459       1966        PhD        Married  69063       0        1
324   9653       1975 Graduation        Married  35797       0        1
325  10785       1969 Graduation        Married  44078       1        1
326  10146       1972        PhD       Together  38887       1        0
327   4741       1974   2n Cycle        Married  65463       1        0
328   1880       1959        PhD       Together  53537       1        1
329   6471       1971     Master         Single  36230       1        0
330   5718       1950 Graduation        Married  80763       0        0
331   3478       1971        PhD        Married  60585       1        1
332   7848       1974 Graduation         Single  49166       0        1
333   7999       1955        PhD       Together  75261       0        0
334  11101       1991 Graduation       Together  89891       0        0
335   9212       1962     Master        Married  72828       0        1
336  10983       1952 Graduation       Together  75278       0        0
337   3629       1978 Graduation         Single  38557       1        0
338   4673       1963        PhD        Married  81300       0        1
339    796       1965   2n Cycle       Divorced  60161       0        1
340    618       1977        PhD        Married  69389       0        1
341    380       1954 Graduation       Divorced  64497       0        1
342   1092       1980 Graduation        Married  61014       0        1
343   8962       1975     Master        Married  44319       1        1
344   8207       1957   2n Cycle        Married  53233       0        1
345   6521       1954 Graduation       Together  77972       0        0
346    535       1987 Graduation       Divorced  81361       0        0
347   4608       1987 Graduation       Divorced  81361       0        0
348   1064       1971        PhD        Married  42403       1        0
349   7000       1972   2n Cycle         Single  65704       0        0
350   1581       1980 Graduation        Married  37406       1        0
351   7384       1951     Master       Together  39767       0        0
352  10552       1979   2n Cycle        Married  54210       0        1
353   6409       1967 Graduation       Divorced  57136       0        0
354   9507       1975 Graduation        Married  40794       0        1
355   9560       1965 Graduation       Together  83003       0        0
356  10991       1960     Master        Married  89058       0        0
357  11056       1974 Graduation        Married  72099       0        0
358   7414       1971 Graduation        Married  43824       1        1
359   3076       1975 Graduation       Together  66653       1        1
360   6355       1978 Graduation        Married  44359       1        1
361   7959       1961 Graduation        Married  79410       0        0
362   5512       1977     Master        Married  55842       0        1
363  10102       1966 Graduation          Widow  79946       0        0
364   9369       1979   2n Cycle         Single  88194       0        1
365   3711       1944     Master        Married  80184       0        0
366   6931       1967 Graduation       Divorced  76982       0        0
367   9596       1980        PhD         Single  65295       0        0
368   2727       1973 Graduation       Together  57100       0        0
369   3967       1971        PhD        Married  78931       0        0
370   2162       1976 Graduation        Married  56939       0        1
371   9242       1990 Graduation         Single  64509       0        0
372  10595       1990 Graduation        Married  30093       0        0
373   4855       1974        PhD       Together  30351       1        0
374   5049       1974        PhD       Together  30351       1        0
375   4967       1960        PhD       Together  38201       0        1
376   9215       1980        PhD        Married  43974       1        0
377   3525       1970 Graduation       Together  38200       1        1
378   3619       1960   2n Cycle       Divorced  87305       0        0
379   5313       1971     Master        Married  38196       1        1
380   7196       1950        PhD        Married  41145       1        1
381   1381       1982        PhD         Single  38513       1        0
382  10951       1968 Graduation        Married  45688       0        1
383   4322       1958        PhD       Together  77863       0        0
384   7444       1969     Master        Married  42169       1        1
385   2942       1964 Graduation         Single  45906       0        1
386   2874       1988   2n Cycle       Divorced  35388       1        0
387   3667       1969 Graduation        Married  80952       0        0
388   3697       1954 Graduation       Together  39898       0        1
389   9955       1954 Graduation       Together  39898       0        1
390   5320       1973     Master       Divorced  44051       1        1
391   6422       1954 Graduation        Married  86718       0        0
392   3690       1986     Master        Married  80141       0        0
393   2408       1976 Graduation        Married  58597       1        1
394   9260       1945        PhD        Married  70356       0        0
395   9648       1967 Graduation         Single  46904       1        1
396   4939       1946 Graduation       Together  37760       0        0
397   8652       1946 Graduation       Together  37760       0        0
398   4702       1964 Graduation         Single  61839       0        0
399   2811       1963        PhD         Single  48918       1        1
400   9150       1963        PhD         Single  48918       1        1
401  10127       1965 Graduation        Married  58692       0        1
402   5493       1976 Graduation        Married  39356       1        1
403   2666       1972     Master        Married  76234       0        1
404  10099       1984 Graduation        Married  55434       1        0
405  10562       1946     Master        Married  66835       0        0
406   7881       1946     Master        Married  66835       0        0
407   6721       1951 Graduation        Married  71965       0        1
408   5204       1971 Graduation       Together  74538       0        0
409   5209       1954 Graduation       Divorced  50002       0        1
410  10128       1958 Graduation       Together  53977       0        1
411   9284       1958 Graduation       Together  53977       0        1
412   8643       1971 Graduation       Together  69930       0        0
413   1685       1967        PhD       Together  62981       0        0
414   2877       1974     Master       Together  46014       1        1
415   6233       1976 Graduation        Married  65991       0        1
416    195       1972 Graduation         Single  38808       1        0
417   1501       1982        PhD        Married 160803       0        0
418  10846       1978     Master        Married  43783       1        0
419   8341       1969        PhD        Married  30396       1        0
420  10766       1964        PhD        Married  65526       0        1
421   9971       1964        PhD        Married  65526       0        1
422   1740       1944 Graduation        Married  55956       0        0
423   8737       1978 Graduation       Divorced  55563       0        1
424   6466       1965        PhD        Married  57236       1        1
425  10430       1973 Graduation       Divorced  89694       1        1
426   8773       1971     Master       Together  57420       0        1
427   2371       1972 Graduation        Married  33622       1        1
428   4088       1962        PhD       Together  31497       0        1
429   4971       1962        PhD       Together  31497       0        1
430  10560       1980        PhD         Single  36802       1        0
431   6892       1968 Graduation       Divorced  61671       0        1
432  11004       1893   2n Cycle         Single  60182       0        1
433   9485       1986        PhD        Married  45921       0        0
434   4248       1960     Master         Single  98777       0        0
435   7451       1960     Master         Single  98777       0        0
436   7861       1952     Master        Married  77027       0        1
437   5232       1965 Graduation        Married  69139       0        1
438   3011       1965 Graduation        Married  69139       0        1
439   5758       1982 Graduation        Married  65169       0        0
440   2173       1952 Graduation          Widow  40049       0        1
441  10711       1945 Graduation        Married  69755       0        0
442   2782       1961        PhD        Married  54456       0        1
443   9432       1977 Graduation       Together 666666       1        0
444   5872       1951 Graduation         Single  60689       0        1
445   1802       1971 Graduation        Married  64795       0        1
446   1162       1987        PhD         Single  42000       0        0
447  10643       1987        PhD         Single  42000       0        0
448  11112       1966 Graduation       Together  70713       0        1
449   2114       1946        PhD         Single  82800       0        0
450   4261       1946        PhD         Single  82800       0        0
451   2457       1975      Basic        Married  30801       0        1
452   2495       1974     Master        Married  83891       0        1
453   6983       1950     Master       Divorced  38054       1        1
454   7505       1957        PhD        Married  44155       1        1
455   4286       1970        PhD         Single  57642       0        1
456   7224       1977 Graduation        Married  31353       1        1
457   6215       1977 Graduation        Married  31353       1        1
458    968       1968     Master       Divorced  41335       1        0
459   4096       1968     Master       Divorced  41335       1        0
460   3153       1957        PhD         Single  40737       2        1
461   5329       1949        PhD       Divorced  35946       1        1
462   1175       1983     Master        Married  36262       0        0
463   1377       1954     Master          Widow  44551       0        1
464   4607       1959 Graduation       Together  71367       0        0
465   4944       1959 Graduation       Together  71367       0        0
466   9483       1959 Graduation       Together  57957       0        1
467   1378       1972   2n Cycle       Together  50334       0        1
468   5991       1949     Master        Married  48150       0        1
469   2807       1969 Graduation        Married  56796       0        1
470   1052       1969 Graduation        Married  56796       0        1
471   9760       1963        PhD          Widow  52278       0        1
472   7101       1963        PhD          Widow  52278       0        1
473   5907       1952     Master        Married  33444       1        1
474   8832       1976     Master       Together  37509       1        0
475   2535       1978     Master        Married  88097       1        0
476   1523       1973 Graduation        Married  59041       1        1
477   1839       1974 Graduation         Single  43322       0        0
478   9972       1955        PhD       Together  46015       1        1
479   2945       1955        PhD       Together  46015       1        1
480   9291       1959     Master        Married  34242       0        1
481   2829       1955 Graduation        Married  65210       0        1
482   8594       1958        PhD          Widow  50520       0        1
483   1592       1970 Graduation        Married  90765       0        0
484   4310       1944 Graduation        Married  80589       0        0
485   6950       1958     Master        Married  49572       1        1
486   8492       1978 Graduation       Together  75437       0        0
487   5684       1971     Master       Divorced  44635       1        1
488   5909       1964 Graduation        Married  58512       0        1
489   9855       1952        PhD         Single  62000       0        1
490    975       1956 Graduation         Single  54252       1        1
491   8754       1974        PhD       Together  45068       0        1
492   1456       1979 Graduation         Single  60474       0        1
493   2849       1979 Graduation         Single  60474       0        1
494   9984       1981   2n Cycle        Married  56337       1        1
495   5628       1982 Graduation       Together  61416       0        0
496   7627       1975     Master        Married  92163       0        0
497   1351       1956     Master       Together  58656       0        1
498  10196       1978 Graduation        Married  71427       2        0
499   1542       1975 Graduation         Single  56243       1        2
500   4220       1970        PhD        Married  59892       0        1
501   4141       1965 Graduation       Together  71613       0        0
502   1506       1975 Graduation         Single  42160       1        1
503   1361       1974     Master        Married  82584       0        0
504   9422       1989 Graduation        Married  38360       1        0
505   1081       1957        PhD        Married  75283       1        2
506   7458       1956     Master       Together  34941       1        1
507   1012       1952 Graduation         Single  61823       0        1
508   5453       1956     Master        Married  90226       0        0
509   6818       1974 Graduation        Married  44989       0        1
510   7807       1974 Graduation        Married  44989       0        1
511   7532       1980 Graduation        Married  43586       0        1
512   8346       1974 Graduation         Single  32233       1        0
513   5564       1969 Graduation       Together  62882       0        1
514   3267       1963     Master       Together  57288       0        1
515   3091       1981   2n Cycle       Together  75774       1        0
516    762       1981   2n Cycle       Together  75774       1        0
517   8029       1988     Master         Single  90247       0        0
518   4376       1960   2n Cycle         Single  32218       0        0
519  10981       1988 Graduation        Married  84219       0        0
520    486       1988 Graduation        Married  84219       0        0
521   1158       1966 Graduation       Divorced  48877       0        1
522   9119       1950 Graduation       Together  60905       0        1
523   6694       1964 Graduation        Married  75236       0        1
524  10573       1953 Graduation       Divorced  62551       0        0
525  10140       1983        PhD       Together  70123       0        0
526   2286       1962 Graduation         Single  50785       1        1
527   1029       1970        PhD       Together  64413       0        1
528   4207       1981        PhD        Married  87171       0        0
529  10277       1961 Graduation         Single  30081       0        1
530   6281       1966 Graduation       Divorced  55686       0        1
531   2574       1977        PhD        Married  61996       0        1
532    709       1952 Graduation       Divorced  51537       0        1
533   5955       1962 Graduation       Together  72025       0        0
534   8486       1971     Master       Together  30538       1        0
535  10343       1991   2n Cycle         Single  61618       0        0
536   6652       1965 Graduation        Married  77343       0        0
537   8746       1989 Graduation        Married  75433       1        0
538   4686       1962        PhD          Widow  82571       0        0
539   3551       1954     Master       Together  60033       0        1
540   4338       1983 Graduation         Single  39062       1        0
541   4444       1972 Graduation        Married  30023       1        0
542    498       1970 Graduation         Single  30015       1        0
543   8230       1980 Graduation        Married  33228       1        0
544   7352       1957 Graduation        Married  55267       0        1
545  10928       1958 Graduation       Together  66886       0        1
546  10736       1971 Graduation         Single  72258       0        1
547  10163       1984        PhD         Single  82733       0        0
548   6168       1963 Graduation       Divorced  45146       1        1
549   4656       1990   2n Cycle         Single  51250       1        0
550    626       1951 Graduation        Married  32871       1        1
551   3870       1978   2n Cycle       Together  63855       0        0
552   6299       1968        PhD       Divorced  42564       0        1
553   7798       1972   2n Cycle       Together  46344       0        1
554   9973       1963 Graduation        Married  50437       0        2
555   4299       1960 Graduation       Together  70971       0        1
556  10971       1977 Graduation         Single  37774       2        0
557   6679       1966 Graduation         Single  33279       0        0
558   5961       1978 Graduation        Married  42693       1        0
559   6255       1952     Master       Together  70545       0        1
560   8614       1957 Graduation          Widow  65486       0        1
561   7828       1981     Master       Together  77882       0        0
562   1277       1960 Graduation       Together  78468       0        0
563   3595       1963 Graduation       Together  77226       0        1
564   5735       1991     Master         Single  90638       0        0
565   5350       1991     Master         Single  90638       0        0
566   4137       1948 Graduation       Together  70666       0        0
567   6357       1959   2n Cycle       Divorced  59052       0        1
568   3578       1949 Graduation       Divorced  49160       0        1
569  10524       1963     Master       Divorced  49476       0        1
570   1518       1965     Master        Married  62694       1        1
571   2036       1973        PhD       Together  57906       0        1
572   9495       1982 Graduation       Together  71853       0        0
573   2631       1982 Graduation       Together  71853       0        0
574   6312       1959 Graduation        Married  65031       0        1
575    615       1960 Graduation       Together  30507       0        0
576   4406       1970 Graduation       Together  67419       0        1
577  10061       1950 Graduation        Married  59462       0        1
578  10619       1994 Graduation         Single  95529       0        0
579   4945       1953 Graduation          Widow  53653       0        0
580   7922       1951        PhD         Single  64950       0        1
581  10699       1985 Graduation        Married  44322       1        0
582   7516       1983 Graduation        Married  30096       1        0
583   3129       1983 Graduation        Married  30096       1        0
584   5121       1977 Graduation         Single  56628       0        1
585   2186       1977   2n Cycle       Together  82326       0        0
586  10548       1995 Graduation         Single  71163       0        0
587   6384       1978 Graduation       Divorced  71022       0        1
588   2625       1954   2n Cycle         Single  42607       0        1
589   1676       1975 Graduation        Married  43057       0        1
590   5534       1975     Master        Married  47808       0        1
591    271       1969 Graduation          Widow  40590       1        1
592   7699       1969 Graduation          Widow  40590       1        1
593   7832       1959     Master        Married  77520       0        1
594    938       1981 Graduation        Married  40211       1        1
595   7873       1973        PhD       Together  63516       1        1
596   9967       1974 Graduation       Divorced  53034       1        1
597   8314       1982 Graduation        Married  79908       0        0
598   3762       1986        PhD         Single  69867       0        0
599  10383       1966 Graduation       Divorced  70287       0        0
600   6798       1966 Graduation         Single  37070       1        1
601   4168       1966 Graduation         Single  37070       1        1
602   6690       1966     Master        Married  38179       1        1
603  10602       1983 Graduation        Married  39922       1        0
604   3220       1983 Graduation        Married  39922       1        0
605   5424       1983 Graduation        Married  39922       1        0
606   7488       1963     Master         Single  64191       0        1
607   5289       1975   2n Cycle         Single  41658       1        1
608    347       1976 Graduation       Divorced  40780       0        1
609   5236       1979 Graduation       Together  77568       0        1
610   9478       1985 Graduation         Single  66503       1        0
611    477       1986 Graduation        Married  83512       0        0
612   7411       1964        PhD        Married  31686       1        1
613   3107       1976 Graduation       Together  71322       0        1
614   3790       1956 Graduation       Together  34633       2        1
615    749       1981 Graduation       Together  42162       1        0
616   1503       1976        PhD       Together 162397       1        1
617   8650       1978 Graduation          Widow  54162       1        1
618    607       1955   2n Cycle       Divorced  41769       0        1
619   1008       1981        PhD       Together  44953       0        0
620   9396       1978        PhD        Married  37717       1        0
621    933       1978        PhD        Married  37717       1        0
622   5710       1970 Graduation       Together  40548       0        1
623   2882       1975   2n Cycle       Divorced  67893       0        1
624   2379       1953 Graduation         Single  69267       0        0
625   3262       1958 Graduation         Single  68281       0        0
626   5832       1960   2n Cycle       Together  92556       0        0
627   5025       1979 Graduation         Single  48526       1        0
628    569       1991 Graduation         Single  90273       0        0
629   9449       1958        PhD         Single  79761       0        1
630   8104       1951        PhD        Married  53312       0        0
631     75       1982   2n Cycle       Together  41039       0        0
632   6421       1961 Graduation       Together  88347       0        0
633   3037       1983        PhD        Married  50150       0        0
634   4698       1983        PhD        Married  50150       0        0
635   6177       1985        PhD        Married  33454       1        0
636   3517       1952 Graduation         Single  40887       1        1
637   3491       1975 Graduation       Together  55914       0        1
638   7610       1983 Graduation       Together  37292       1        0
639   4377       1971 Graduation        Married  52914       0        1
640   5544       1970 Graduation         Single  67384       0        1
641   6497       1960 Graduation        Married  51651       0        1
642   4543       1980 Graduation        Married  82497       0        0
643   5117       1963   2n Cycle        Married  32632       0        0
644   1448       1963     Master        Married  33562       1        2
645   6887       1967 Graduation         Single  79146       1        1
646   7500       1967 Graduation         Single  79146       1        1
647   2724       1981     Master         Single  36143       1        0
648   1100       1960     Master       Together  41275       1        2
649   7725       1965   2n Cycle        Married  76800       0        0
650   2612       1987 Graduation        Married  75794       0        0
651    113       1951 Graduation        Married  30833       1        1
652   4216       1981 Graduation         Single  91065       0        0
653    199       1962     Master         Single  45183       0        0
654    359       1950 Graduation       Together  48070       0        1
655   8842       1971 Graduation          Widow  30372       1        1
656   2154       1971 Graduation          Widow  30372       1        1
657   6050       1975   2n Cycle        Married  57036       0        1
658   9204       1970 Graduation          Widow  66731       0        1
659   4472       1970        PhD       Divorced  35682       1        0
660   3924       1965        PhD       Divorced  57912       0        1
661   5654       1972 Graduation        Married  36026       2        1
662   9216       1971 Graduation        Married  35788       1        1
663   8086       1959 Graduation        Married  42243       1        1
664   9097       1956 Graduation       Divorced  46086       0        1
665   7631       1978     Master       Together  61346       1        0
666   7275       1971     Master         Single  33316       1        1
667   8334       1971     Master         Single  33316       1        1
668   2281       1970 Graduation         Single  33697       1        0
669   2797       1977 Graduation        Married  72117       0        1
670   3934       1966 Graduation        Married  61286       0        1
671   2493       1966 Graduation        Married  61286       0        1
672   3759       1958 Graduation       Together  65196       0        2
673    965       1971 Graduation       Divorced  55635       0        1
674   7378       1981     Master       Together  42021       1        0
675   1859       1972     Master        Married  75251       0        0
676   6263       1968 Graduation       Together  35322       1        2
677   2072       1969        PhD       Together  53374       0        1
678   8908       1959 Graduation        Married  87195       0        0
679    738       1981   2n Cycle         Single  42395       1        1
680  10129       1966 Graduation       Together  82427       0        0
681    807       1969     Master       Together  44602       1        1
682   3334       1951 Graduation        Married  94642       0        0
683   4426       1975 Graduation         Single  55801       1        1
684  10489       1973 Graduation        Married  92955       0        0
685   2570       1968 Graduation       Together  56534       0        1
686   3834       1962 Graduation         Single  69627       0        1
687    590       1970     Master       Divorced  78579       0        0
688   4791       1980 Graduation       Together  44964       1        1
689   5304       1974        PhD         Single  30899       1        0
690   2426       1964        PhD       Divorced  78825       0        0
691   8041       1971        PhD          Widow  47111       0        1
692   3584       1955        PhD         Single  49667       0        0
693   7718       1947     Master       Together  66000       0        0
694   8605       1964        PhD       Together  46910       1        1
695   9206       1968 Graduation       Together  77382       0        1
696   6885       1977 Graduation       Divorced  32952       1        0
697    907       1975 Graduation        Married  46149       0        1
698   1150       1899        PhD       Together  83532       0        0
699   3867       1947        PhD       Together  73059       0        1
700   3859       1947        PhD       Together  73059       0        1
701   3265       1959 Graduation        Married  35701       0        0
702   4418       1983     Master         Single  89616       0        0
703   4611       1970 Graduation       Together 105471       0        0
704   4530       1948     Master          Widow  78427       0        0
705   9949       1976 Graduation        Married  59809       0        2
706    942       1982 Graduation         Single  39660       1        0
707   6181       1950   2n Cycle       Together  52203       0        0
708   7660       1973        PhD          Alone  35860       1        1
709   2055       1973        PhD       Divorced  35860       1        1
710   5107       1973        PhD       Divorced  35860       1        1
711   1626       1973        PhD       Divorced  35860       1        1
712   6428       1950        PhD          Widow  76842       0        0
713   4339       1970        PhD        Married  67353       0        1
714   8527       1965     Master       Together  65735       1        1
715   1968       1971 Graduation          Widow  45684       1        0
716  11075       1978 Graduation        Married  51267       1        1
717   6658       1972 Graduation       Together  59868       0        1
718   4552       1991 Graduation        Married  51373       0        0
719  10377       1958     Master       Together  46692       0        1
720   5336       1971     Master       Together 157733       1        0
721  10350       1950        PhD        Married  54432       2        1
722  11071       1984 Graduation         Single  79607       0        0
723  11100       1972 Graduation       Divorced  51813       1        1
724   1734       1968        PhD       Together  40706       2        1
725   2131       1959        PhD       Divorced  62859       0        1
726   6439       1958 Graduation        Married  61074       0        1
727  10591       1969 Graduation          Widow  43638       0        1
728   9797       1956 Graduation        Married  58116       0        1
729   9336       1969        PhD          Widow  62187       0        1
730   2174       1954 Graduation         Single  46344       1        1
731   3197       1980 Graduation        Married  77353       0        1
732   9185       1966        PhD         Single  69759       0        0
733  10858       1975 Graduation       Together  76532       1        1
734   8925       1965     Master        Married  70053       0        1
735   2499       1958   2n Cycle         Single  75342       0        1
736    326       1973 Graduation        Married  51148       1        1
737  10967       1963 Graduation       Divorced  33378       1        1
738   5370       1973        PhD        Married  32644       1        0
739   2098       1969        PhD        Married  33581       2        0
740   5036       1984        PhD         Single  42710       1        0
741   4856       1957   2n Cycle        Married  82347       0        0
742   8722       1957   2n Cycle        Married  82347       0        0
743  10151       1960 Graduation       Divorced  62204       0        2
744  10473       1956        PhD          Widow  78028       0        1
745   7079       1962 Graduation       Divorced  63887       0        1
746   6875       1965        PhD       Together  32727       0        0
747   2471       1965 Graduation        Married  61482       0        0
748   6387       1976        PhD       Together  52190       1        1
749   5866       1974 Graduation       Together  48186       1        0
750   7901       1971     Master        Married  34109       0        1
751  10242       1966        PhD       Together  47472       1        1
752   4201       1962 Graduation         Single  57967       0        1
753   5092       1949        PhD          Widow  51569       0        1
754   6566       1954        PhD        Married  72550       1        1
755   6613       1970     Master        Married  44511       1        0
756   9094       1955   2n Cycle        Married  62972       0        1
757   9847       1955   2n Cycle        Married  62972       0        1
758  10767       1989        PhD       Together  77845       0        0
759   7943       1975        PhD        Married  36663       1        0
760   1055       1976     Master        Married  53204       1        1
761   8402       1953     Master        Married  67087       0        1
762   6246       1953 Graduation         Single  73892       0        0
763   4654       1992 Graduation       Together  75114       0        0
764   6103       1948 Graduation        Married  42192       0        0
765   8147       1960 Graduation        Married  31454       1        1
766  10219       1972 Graduation       Together  31590       1        0
767   2176       1972 Graduation        Married  80134       1        0
768   9121       1972 Graduation        Married  80134       1        0
769    178       1956 Graduation        Married  62503       0        1
770   2308       1954 Graduation        Married  46734       0        1
771   7431       1991        PhD         Single  68126       0        0
772   9405       1954        PhD        Married  52869       1        1
773   7503       1976 Graduation         Single  75825       0        0
774   8783       1950 Graduation        Married  57045       0        1
775   1403       1975   2n Cycle       Together  34984       1        1
776   3463       1975        PhD        Married  69283       0        1
777   7010       1965   2n Cycle        Married  70924       0        0
778   4767       1965   2n Cycle        Married  70924       0        0
779   1927       1973   2n Cycle       Together  69401       0        1
780    437       1976     Master       Divorced  75012       0        0
781   4331       1978     Master       Together  85738       0        0
782   4084       1975 Graduation       Together  60934       0        1
783   9750       1961        PhD       Divorced  64325       0        1
784  10581       1977 Graduation        Married  41124       1        0
785   3710       1984        PhD         Single  39684       1        0
786   5207       1963        PhD        Married  53378       1        1
787   9360       1982 Graduation        Married  37040       0        0
788   4679       1977     Master        Married  78710       0        1
789   1340       1986 Graduation        Married  92910       0        0
790  10839       1976 Graduation       Together  36283       1        1
791   5303       1974        PhD       Together  79632       0        0
792  10469       1981 Graduation       Together  88325       0        0
793   3602       1958     Master        Married  51412       0        1
794   4756       1952   2n Cycle       Divorced  63998       0        0
795   8181       1978   2n Cycle         Single  38593       1        0
796  10856       1980   2n Cycle         Single  45889       0        1
797   3321       1967        PhD       Together  56575       0        2
798    433       1958     Master          Alone  61331       1        1
799   6320       1976     Master         Single  70893       0        0
800   1867       1957 Graduation         Single  64849       0        0
801   4324       1989 Graduation        Married  42387       1        0
802   3661       1995   2n Cycle         Single  80617       0        0
803    521       1985 Graduation       Together  54006       1        0
804   7186       1966        PhD       Together  30843       1        1
805   4394       1965        PhD        Married  81051       0        0
806   1717       1988 Graduation         Single  39747       1        0
807   1016       1959        PhD         Single  34554       0        1
808   3783       1959        PhD        Married  52854       1        1
809   5848       1970 Graduation       Together  81205       0        0
810  10727       1970        PhD        Married  69084       1        0
811   5299       1970        PhD        Married  69084       1        0
812   6872       1974        PhD        Married  65352       0        1
813  10381       1979 Graduation         Single  47691       0        1
814   9145       1972 Graduation         Single  72504       0        1
815   5267       1970 Graduation       Divorced  33986       1        0
816   9738       1986     Master       Together  42386       1        0
817  10212       1986     Master       Together  42386       1        0
818  10010       1953        PhD       Divorced  36957       1        1
819   2694       1967 Graduation        Married  42664       0        1
820  10613       1958        PhD       Together  37334       1        1
821   4646       1951   2n Cycle        Married  78497       0        0
822   6935       1951   2n Cycle        Married  78497       0        0
823   5596       1956   2n Cycle       Together  58821       0        1
824   1044       1953 Graduation       Together  58398       0        0
825   9274       1961     Master        Married  80950       0        0
826   9076       1980        PhD        Married  30732       1        0
827   4947       1966   2n Cycle         Single  89572       0        0
828  10176       1968 Graduation         Single  57107       0        1
829   3507       1970 Graduation         Single  76467       1        0
830  10341       1948 Graduation       Together  51315       0        0
831   2639       1966 Graduation         Single  43602       1        1
832   6201       1978 Graduation         Single  38643       1        1
833   7397       1951 Graduation         Single  49090       0        1
834   2181       1970 Graduation        Married  70617       0        0
835   1204       1970        PhD        Married  67536       0        1
836   4690       1953 Graduation        Married  50725       0        1
837  10821       1978 Graduation        Married  57113       1        1
838   6543       1945     Master       Together  62847       0        0
839   7119       1982 Graduation         Single  68627       0        0
840   1245       1966 Graduation         Single  63810       0        1
841   2561       1966 Graduation         Single  63810       0        1
842   9624       1958        PhD       Together  65488       0        0
843  10509       1955     Master         Single  36927       1        1
844   7875       1949 Graduation        Married  72025       0        0
845   2815       1975 Graduation        Married  33183       1        0
846  10888       1961 Graduation         Single  45938       0        0
847   6637       1988 Graduation         Single  66951       0        0
848   5077       1979 Graduation       Together  77298       0        1
849   6173       1979 Graduation       Together  77298       0        1
850   3969       1974     Master       Together  43018       0        1
851   4580       1969 Graduation        Married  75759       0        0
852    663       1989        PhD         Single  33996       0        0
853   8299       1989        PhD         Single  33996       0        0
854   8945       1970 Graduation       Divorced  54137       0        1
855  10870       1967 Graduation        Married  61223       0        1
856   1184       1968        PhD       Divorced  69674       0        2
857   6141       1972     Master         Single  49494       1        0
858   8825       1962 Graduation       Together  51195       1        1
859   2217       1975   2n Cycle        Married  37284       1        1
860   4102       1975   2n Cycle        Married  37284       1        1
861   4653       1978 Graduation       Together  42011       1        0
862  10092       1954 Graduation       Divorced  70044       0        1
863   5788       1972 Graduation       Together  46053       1        0
864   6295       1977 Graduation        Married  54233       0        1
865   7453       1954 Graduation         Single  36130       0        1
866  10841       1975        PhD       Together  56559       0        1
867    821       1992     Master         Single  92859       0        0
868   3933       1980 Graduation       Together  44010       1        0
869   1225       1963 Graduation        Married  80124       0        0
870   7059       1963 Graduation        Married  80124       0        0
871   5633       1980 Graduation        Married  50183       1        1
872    843       1971 Graduation        Married  64722       1        0
873   6211       1976        PhD       Together  37395       1        0
874   6616       1975 Graduation       Together  59481       0        1
875   6248       1947     Master         Single  91712       0        0
876   7428       1975 Graduation       Together  80144       0        0
877   3075       1972        PhD        Married  59973       0        0
878   2937       1974        PhD         Single  68352       0        1
879    203       1975     Master         Single  81169       0        0
880   2021       1975 Graduation        Married  61456       0        1
881   7011       1973 Graduation        Married  33471       1        0
882   4184       1950        PhD       Together  52157       0        1
883   7679       1985        PhD         Single  30298       0        0
884   7485       1950        PhD          Widow  56551       1        1
885   7530       1950        PhD          Widow  56551       1        1
886   4369       1957     Master         Absurd  65487       0        0
887  10652       1957     Master       Together  65487       0        0
888    286       1952 Graduation         Single  44213       1        1
889   5922       1974        PhD        Married  40344       0        1
890   7250       1978 Graduation       Together  57867       1        0
891   9214       1991 Graduation        Married  42691       0        0
892    273       1970     Master        Married  36138       1        1
893    851       1972     Master        Married  57136       1        1
894   9729       1955 Graduation          Widow  58275       1        1
895   9665       1957        PhD       Divorced  54237       0        1
896   2620       1974        PhD        Married  34596       1        0
897   8254       1974        PhD        Married  34596       1        0
898   3852       1961     Master       Together  74881       1        1
899   1000       1961     Master       Together  74881       1        1
900   3099       1970 Graduation       Divorced  44267       1        1
901   6318       1988 Graduation        Married  68487       0        0
902   5396       1988 Graduation        Married  68487       0        0
903   7966       1959 Graduation         Single  80982       1        1
904    454       1980 Graduation       Together  69508       1        0
905    309       1961        PhD       Together  63342       0        1
906   3571       1961        PhD       Together  63342       0        1
907   8395       1961 Graduation         Single  82014       0        0
908   2591       1959 Graduation          Widow  76320       0        1
909   1640       1954 Graduation       Divorced  64587       1        1
910    810       1975 Graduation        Married  74190       0        1
911   9423       1979     Master        Married  32765       1        0
912   1215       1978 Graduation       Together  70440       0        0
913   9283       1978 Graduation         Single  60199       1        2
914   3120       1981 Graduation       Together  38547       1        0
915   8143       1985        PhD         Single  37929       0        0
916   7214       1957 Graduation        Married  62187       0        0
917   5543       1966 Graduation       Together  57811       0        1
918   9347       1956     Master       Together  50943       0        1
919  10160       1956     Master       Together  50943       0        1
920   1406       1975 Graduation         Single  53201       1        1
921   7019       1963 Graduation       Together  54414       1        1
922   8939       1959 Graduation       Divorced  61250       0        1
923   1272       1965     Master         Single  55250       0        1
924   3007       1966 Graduation       Together  37758       1        1
925   5513       1966 Graduation       Together  37758       1        1
926    679       1957        PhD        Married  37633       1        1
927   8876       1963        PhD       Together  33629       1        1
928  10827       1967        PhD        Married  36947       1        1
929   7300       1952 Graduation       Divorced  69142       0        1
930   4268       1959 Graduation        Married  53154       0        1
931   4603       1960        PhD        Married  65695       0        1
932   8659       1952        PhD       Together  69805       0        1
933  10708       1978   2n Cycle         Single  36975       1        0
934  10380       1972     Master        Married  37787       1        0
935   7037       1974        PhD        Married  37087       1        0
936  11096       1952   2n Cycle       Together  57247       0        1
937   6374       1954        PhD        Married  36930       0        1
938   5552       1963     Master       Divorced  48721       1        1
939   2245       1969     Master        Married  43641       1        1
940   6200       1951 Graduation        Married  75903       0        1
941   9904       1956 Graduation        Married  71391       0        1
942  10882       1976 Graduation        Married  53858       0        1
943   5636       1963 Graduation         Single  30983       0        0
944   8692       1952 Graduation       Together  43462       1        1
945   8091       1956 Graduation        Married  63943       0        1
946   8370       1976   2n Cycle       Together  75484       0        1
947   4550       1966     Master       Together  33564       0        1
948   3381       1953     Master        Married  54348       1        1
949  10556       1959 Graduation        Married  54984       0        1
950   9467       1984 Graduation         Single  34738       1        0
951   2891       1963 Graduation       Divorced  68118       0        1
952   5011       1963 Graduation       Divorced  68118       0        1
953  11039       1975 Graduation        Married  51948       0        1
954   5290       1964        PhD        Married  41551       1        1
955   4128       1962        PhD       Together  56067       0        1
956   8534       1952 Graduation        Married  67433       0        2
957   8957       1952   2n Cycle         Single  64831       1        1
958   9308       1954 Graduation        Married  62820       0        0
959    544       1954 Graduation        Married  62820       0        0
960   5989       1959   2n Cycle       Divorced  78353       0        1
961    635       1966     Master        Married  57183       1        1
962   1710       1978 Graduation         Single  30168       1        0
963    523       1989 Graduation        Married  37155       1        0
964   9736       1980 Graduation        Married  41850       1        1
965   1544       1967     Master       Divorced  81380       0        0
966   6575       1981 Graduation       Together  56386       1        1
967   4769       1977     Master       Together  57954       1        1
968   7540       1952 Graduation        Married  50300       0        1
969   5247       1955        PhD        Married  38725       1        1
970  10972       1949 Graduation          Widow  72298       0        0
971   1399       1958 Graduation        Married  72905       0        0
972   2698       1976 Graduation         Single  47025       0        1
973   4107       1948        PhD       Together  46681       0        2
974  10906       1948        PhD       Together  46681       0        2
975   8786       1956     Master        Married  62058       0        1
976   6119       1963        PhD         Single  36736       1        1
977   1077       1974 Graduation       Together  56715       0        0
978   4764       1952     Master       Together  40442       1        1
979   2223       1965   2n Cycle       Divorced  64176       0        1
980   5827       1958 Graduation       Divorced  35246       1        1
981   4954       1956 Graduation        Married  48195       1        1
982   3139       1982   2n Cycle         Single  74116       0        0
983   9952       1947     Master       Together  78093       0        0
984   8180       1952     Master       Divorced  59354       1        1
985   3276       1976   2n Cycle       Together  36301       1        0
986   4994       1943     Master         Single  77598       0        0
987   3598       1972 Graduation        Married  62710       0        1
988    945       1965 Graduation       Together  36317       0        1
989   5048       1971        PhD         Single  42767       2        0
990   6214       1982     Master        Married  43815       1        0
991   6230       1971 Graduation       Divorced  44421       1        1
992   2968       1943        PhD       Divorced  48948       0        0
993   8800       1943        PhD       Divorced  48948       0        0
994   1907       1950     Master       Divorced  63120       0        1
995  10478       1950        PhD        Married  55517       1        1
996   4188       1957 Graduation         Single  36864       0        1
997   2225       1977 Graduation       Divorced  82582       0        0
998   4790       1958 Graduation       Divorced  79803       0        1
999   1131       1967        PhD         Single  52569       0        1
1000   202       1948        PhD          Widow  82032       0        0
1001  9589       1948        PhD          Widow  82032       0        0
1002  3900       1972 Graduation        Married  65685       0        1
1003  9958       1972 Graduation        Married  65685       0        1
1004  8955       1957        PhD       Together  40451       0        2
1005 10033       1973   2n Cycle       Divorced  31163       1        0
1006  5751       1973   2n Cycle       Divorced  31163       1        0
1007  3308       1952 Graduation        Married  35704       1        1
1008  8008       1983 Graduation       Together  36075       1        0
1009  1232       1982        PhD       Together  70038       0        0
1010  2345       1982        PhD       Together  70038       0        0
1011  1628       1971 Graduation       Together  71796       0        0
1012  5081       1967   2n Cycle       Together  47821       1        1
1013   839       1975        PhD        Married  45503       1        0
1014  5154       1972     Master       Divorced  37760       1        0
1015  8584       1952        PhD       Together  85431       0        0
1016  6583       1955   2n Cycle        Married  72635       0        0
1017  3433       1955   2n Cycle        Married  72635       0        0
1018 10486       1948 Graduation        Married  77142       0        0
1019  8687       1978 Graduation       Together  53172       0        1
1020  7842       1968 Graduation         Single  36065       1        1
1021  3749       1973 Graduation       Together  73926       0        0
1022  1331       1977 Graduation         Single  35790       1        0
1023  5995       1962 Graduation       Divorced  39552       1        1
1024  8985       1964   2n Cycle       Together  68316       0        1
1025  2798       1977        PhD       Together 102160       0        0
1026  7108       1965     Master          Widow  51390       1        1
1027  2781       1981 Graduation         Single  72066       0        0
1028   194       1965 Graduation        Married  48006       1        1
1029 10833       1975 Graduation        Married  65106       0        1
1030  2315       1960 Graduation       Divorced  58401       0        1
1031 10738       1951     Master         Single  49389       1        1
1032  8286       1965        PhD       Together  51717       0        1
1033  2166       1960   2n Cycle          Widow  46779       1        1
1034  9739       1963 Graduation         Single  34377       0        1
1035  1829       1961        PhD       Divorced  54959       0        1
1036  6260       1955     Master       Together  82384       0        0
1037 10448       1956 Graduation         Single  46998       0        1
1038  1343       1968 Graduation       Together  58554       1        1
1039  4749       1968 Graduation       Together  58554       1        1
1040   531       1954        PhD       Divorced  57333       0        1
1041  6905       1994 Graduation       Together  80685       0        0
1042  1045       1965 Graduation       Together  52117       0        1
1043  4012       1972        PhD       Together  62220       0        1
1044  5529       1946        PhD       Together  64014       2        1
1045  4001       1946        PhD       Together  64014       2        1
1046 10420       1955     Master       Divorced  46390       0        1
1047  7723       1979 Graduation       Together  75507       0        0
1048  2963       1979 Graduation       Together  75507       0        0
1049 10634       1951     Master        Married  59412       0        0
1050  5180       1968        PhD       Divorced  50616       0        1
1051  6866       1969     Master       Together  35924       1        1
1052  1328       1982   2n Cycle        Married  57937       0        1
1053  1139       1984        PhD        Married  73356       0        0
1054  5177       1974     Master        Married  58494       0        1
1055  2075       1969 Graduation        Married  72460       0        0
1056  3428       1991        PhD       Together  68682       0        0
1057  4500       1991        PhD       Together  68682       0        0
1058  7369       1981     Master        Married  36959       1        0
1059  4381       1971        PhD        Married  46463       1        1
1060  9964       1979 Graduation         Single  61825       0        1
1061  1630       1979 Graduation         Single  61825       0        1
1062  7822       1976 Graduation       Together  54058       0        1
1063 10156       1975 Graduation         Single  84196       0        1
1064  3033       1963     Master       Together  38620       0        0
1065  4119       1963     Master       Together  38620       0        0
1066   332       1957 Graduation        Married  47743       0        1
1067   737       1949        PhD        Married  80360       0        0
1068 10319       1971 Graduation        Married  66303       0        1
1069  2683       1969 Graduation        Married  52413       0        2
1070  3445       1956 Graduation         Single  60714       0        0
1071 10913       1984     Master         Single  31385       1        0
1072  4427       1995   2n Cycle         Single  83257       0        0
1073  8717       1975        PhD        Married  80427       0        1
1074  2066       1949 Graduation       Together  38823       0        1
1075  3340       1977 Graduation        Married  42014       1        0
1076  8685       1977 Graduation        Married  42014       1        0
1077  4149       1948        PhD       Together  76140       0        0
1078  8726       1964   2n Cycle       Divorced  41713       1        1
1079  2295       1954        PhD        Married  62670       0        1
1080  3283       1972   2n Cycle        Married  70932       0        1
1081  1915       1951        PhD        Married  78939       0        0
1082   800       1960 Graduation       Together  44512       1        1
1083  9166       1968 Graduation        Married  63967       0        1
1084  5147       1948 Graduation         Single  90842       0        0
1085  9381       1978 Graduation        Married  66373       1        1
1086  9384       1978 Graduation        Married  66373       1        1
1087  3560       1952 Graduation       Together  83844       0        0
1088   241       1952 Graduation       Together  83844       0        0
1089  7521       1952 Graduation       Together  83844       0        0
1090  9799       1968        PhD       Divorced  83664       1        1
1091   448       1978        PhD         Single  54880       1        0
1092  4837       1965        PhD        Married  71322       0        1
1093  9365       1976        PhD         Single  60000       0        1
1094  8932       1969     Master       Together  65176       0        1
1095  7055       1952        PhD       Together  61010       0        1
1096  3537       1981 Graduation       Together  31089       1        0
1097  4988       1948        PhD        Married  34469       1        1
1098  5610       1965 Graduation       Together  33456       1        1
1099  3526       1968        PhD        Married  38443       1        1
1100  5136       1973 Graduation         Single  65333       0        1
1101  1411       1952 Graduation       Divorced  82623       0        0
1102   701       1971 Graduation        Married  73691       0        1
1103  6203       1947 Graduation       Together  74485       0        0
1104  7192       1955 Graduation       Together  65748       0        1
1105  9220       1971 Graduation         Single  91700       0        0
1106  7734       1993 Graduation         Absurd  79244       0        0
1107 10446       1957        PhD        Married  82017       0        0
1108  5524       1957 Graduation         Single  58138       0        0
1109  3830       1953     Master        Married  59354       0        2
1110  5186       1955        PhD        Married  58482       0        1
1111  7165       1972 Graduation       Together  64474       0        1
1112 10236       1975     Master         Single  31160       1        0
1113  2392       1972 Graduation        Married  40321       1        1
1114  1920       1972 Graduation        Married  40321       1        1
1115  3673       1971 Graduation         Single  55239       0        1
1116  1453       1943        PhD          Widow  57513       0        0
1117  4518       1979 Graduation       Together  85693       0        1
1118  8969       1977 Graduation        Married  71855       0        1
1119  1079       1971        PhD        Married  71969       0        1
1120  3434       1951 Graduation         Single  80872       0        0
1121  5721       1956        PhD        Married  84117       0        0
1122  8418       1958   2n Cycle         Single  38741       1        1
1123  5300       1973     Master        Married  38961       1        0
1124 10424       1968 Graduation         Single  75922       0        0
1125 11171       1965     Master        Married  56962       2        1
1126  1600       1965     Master        Married  56962       2        1
1127  7851       1949 Graduation          Widow  70165       0        0
1128 10701       1973 Graduation        Married  65308       0        0
1129  6912       1967        PhD        Married  63246       0        2
1130  5967       1952 Graduation       Together  33402       1        1
1131  2109       1990 Graduation         Single  96843       0        0
1132  6292       1986        PhD        Married  82333       0        0
1133  8537       1949 Graduation          Widow  72643       0        0
1134  9576       1982        PhD       Together  32313       1        0
1135  5935       1956     Master         Single  55284       0        1
1136  3202       1987        PhD        Married  51563       0        0
1137  1103       1976     Master        Married  81929       1        0
1138   610       1953        PhD       Together  53593       1        1
1139  4480       1973     Master        Married  60432       0        1
1140 10660       1957     Master        Married  66726       1        1
1141  9353       1959 Graduation         Single  62450       0        1
1142  4120       1975   2n Cycle         Single  49514       1        0
1143  2836       1972        PhD        Married  43269       1        0
1144  9579       1959        PhD        Married  33762       2        1
1145  5841       1966 Graduation       Together  60894       0        1
1146  3174       1959 Graduation       Together  87771       0        1
1147  5536       1959 Graduation       Together  87771       0        1
1148  2061       1955 Graduation        Married  50737       0        1
1149   640       1951 Graduation        Married  57304       0        1
1150  3828       1951 Graduation        Married  71107       0        1
1151  4093       1975     Master       Together  53253       1        1
1152  8624       1958 Graduation        Married  81320       0        0
1153  2802       1992   2n Cycle        Married  87000       0        0
1154   368       1974 Graduation        Married  40049       0        1
1155  3599       1970 Graduation        Married  63684       0        1
1156  3389       1970 Graduation        Married  69016       0        1
1157  7118       1957 Graduation        Married  73803       0        1
1158  4937       1973   2n Cycle        Married  46094       1        1
1159  1127       1973        PhD        Married  85844       0        0
1160   833       1955     Master        Married  38452       1        1
1161  3565       1955     Master        Married  38452       1        1
1162  6086       1955 Graduation        Married  80395       0        0
1163  1763       1988 Graduation       Together  87679       0        0
1164  4697       1949     Master       Divorced  35416       0        0
1165   182       1946        PhD       Together  44124       0        1
1166  1165       1958        PhD         Single  50729       1        1
1167  5386       1953 Graduation       Together  94384       0        0
1168  6024       1953 Graduation       Together  94384       0        0
1169  2678       1990 Graduation         Single  34412       1        0
1170  5790       1985 Graduation        Married  31158       1        0
1171   236       1951 Graduation        Married  34838       1        1
1172  6001       1979 Graduation        Married  56775       0        1
1173  6250       1949        PhD          Widow  54356       0        1
1174  1168       1978        PhD        Married  72159       0        0
1175  2926       1952     Master       Together  55951       0        1
1176   716       1949        PhD       Together  67911       0        1
1177  6544       1949        PhD       Together  67911       0        1
1178  5823       1970        PhD         Single  32303       0        1
1179  8375       1968        PhD        Married  55954       0        1
1180  5723       1976        PhD       Together  49187       0        1
1181  5763       1972     Master       Together  49854       1        0
1182  8727       1978 Graduation       Divorced  63693       0        1
1183  3056       1978 Graduation       Divorced  63693       0        1
1184  3712       1959 Graduation       Divorced  52332       0        0
1185 10722       1973 Graduation       Together  55593       0        1
1186  2406       1949 Graduation       Together  54591       0        1
1187  7313       1949   2n Cycle          Widow  74859       0        0
1188  2656       1971 Graduation       Divorced  40851       1        1
1189  1993       1949        PhD        Married  58607       0        1
1190  2928       1975        PhD         Single  52614       0        1
1191  2920       1975        PhD         Single  52614       0        1
1192  6661       1974 Graduation        Married  67445       0        1
1193  5462       1974 Graduation        Married  67445       0        1
1194 10897       1974 Graduation        Married  67445       0        1
1195 10542       1968        PhD        Married  36778       1        1
1196  5756       1983 Graduation       Together  39453       1        0
1197  3570       1969        PhD       Together  42731       1        0
1198  1072       1965        PhD         Single  40760       0        1
1199  9606       1965        PhD        Married  69969       0        0
1200  2730       1955 Graduation         Single  80317       0        0
1201  2995       1957     Master       Together  66636       0        0
1202  8210       1975     Master        Married  54730       0        1
1203   773       1971     Master       Divorced  42835       1        1
1204  5272       1965     Master        Married  53843       0        1
1205  5125       1960 Graduation        Married  79530       0        0
1206  4391       1968     Master       Divorced  63841       0        1
1207  6283       1968     Master       Divorced  63841       0        1
1208  3421       1968     Master       Divorced  63841       0        1
1209  3919       1976     Master         Single  72309       0        0
1210  6097       1959 Graduation         Single  50664       1        1
1211 10479       1975        PhD        Married  76618       0        0
1212  5966       1974        PhD        Married  45207       1        1
1213  3439       1972 Graduation        Married  56721       1        1
1214  9014       1975 Graduation        Married  37085       1        1
1215  4050       1966     Master        Married  49605       0        0
1216  8315       1995 Graduation         Single  34824       0        0
1217  5184       1995 Graduation         Single  34824       0        0
1218  3643       1974     Master        Married  63206       0        0
1219  4887       1976        PhD       Divorced  55412       1        1
1220 10104       1974 Graduation       Together  33590       2        1
1221  3254       1971 Graduation        Married  70886       1        0
1222  2004       1969 Graduation         Single  72679       0        1
1223  6142       1943     Master        Married  65073       0        0
1224  8553       1965 Graduation        Married  44300       1        1
1225  9805       1953     Master       Together  56129       0        1
1226   849       1953     Master       Together  56129       0        1
1227  1606       1971 Graduation       Together  38590       1        0
1228   125       1958   2n Cycle       Together  53083       1        1
1229  9305       1976   2n Cycle         Single  79689       0        0
1230  4706       1966 Graduation         Single  34704       0        1
1231  4437       1962 Graduation        Married  65316       1        1
1232  3081       1978        PhD        Married  41014       1        0
1233  9707       1969        PhD        Married  55212       0        1
1234 10872       1969        PhD        Married  55212       0        1
1235  9058       1955 Graduation          Widow  79800       0        0
1236  4640       1967 Graduation       Divorced  70647       0        1
1237  2525       1974        PhD        Married  38410       0        0
1238 10704       1969 Graduation         Single  54803       0        1
1239  2669       1993 Graduation         Single  74293       0        0
1240 10037       1993 Graduation         Single  74293       0        0
1241  5680       1984   2n Cycle        Married  35684       1        0
1242  3726       1986        PhD       Together  34320       1        0
1243  4548       1981 Graduation         Single  41967       1        1
1244  4599       1976     Master        Married  49681       0        2
1245   879       1976     Master        Married  49681       0        2
1246  7409       1970 Graduation       Together  53187       1        0
1247  1964       1951 Graduation       Together  86610       0        0
1248     0       1985 Graduation        Married  70951       0        0
1249   425       1985 Graduation        Married  55357       2        0
1250  9500       1959 Graduation        Married  58113       0        1
1251  3074       1984        PhD        Married  70643       0        0
1252  5140       1985        PhD        Married  64355       1        0
1253  2611       1959     Master       Together  82576       0        0
1254   916       1972        PhD         Single  41644       1        1
1255 10413       1984 Graduation        Married  72570       0        0
1256  3696       1965 Graduation       Divorced  30630       1        1
1257  5113       1971        PhD       Divorced  86979       0        0
1258  4597       1970        PhD       Together  82072       0        0
1259   675       1973     Master       Divorced  52034       1        1
1260  4483       1993 Graduation         Single  72354       0        0
1261  4487       1969     Master         Single  39858       1        0
1262  3412       1951     Master        Married  67381       0        1
1263  5837       1967 Graduation        Married  51479       1        1
1264  3422       1975 Graduation        Married  76068       0        1
1265 10702       1984 Graduation         Single  52413       1        0
1266  2115       1957 Graduation       Together  50116       1        1
1267  4138       1962 Graduation         Single  76624       0        1
1268 11091       1953 Graduation       Together  34587       1        1
1269  7712       1946        PhD         Single  62159       0        0
1270  3535       1965 Graduation         Single  66294       0        0
1271  8749       1984 Graduation       Together  37235       1        0
1272 10955       1964 Graduation          Widow  85620       0        0
1273  5286       1987     Master         Single  41020       0        0
1274  3409       1984 Graduation         Single  36108       1        0
1275  2544       1951     Master       Divorced  57530       0        1
1276  2118       1964   2n Cycle        Married  62905       0        1
1277  9370       1945        PhD        Married  65846       0        0
1278  4864       1977 Graduation        Married  34380       1        0
1279   405       1964 Graduation       Divorced  41638       0        1
1280 10513       1992 Graduation       Together  63207       0        0
1281  8387       1957 Graduation        Married  43140       0        1
1282   378       1971 Graduation        Married  52531       0        0
1283  5846       1977 Graduation       Divorced  40246       1        0
1284  8870       1984 Graduation       Together  35196       1        0
1285 10340       1984 Graduation       Together  35196       1        0
1286  7290       1985 Graduation         Single  70596       0        0
1287  8895       1985 Graduation         Single  70596       0        0
1288  3635       1962        PhD         Single  52597       0        1
1289 11178       1972     Master         Single  42394       1        0
1290  2410       1969 Graduation         Single  81657       0        0
1291  3281       1960        PhD        Married  49154       1        1
1292  9905       1952 Graduation       Together  34074       1        1
1293  2565       1955     Master       Divorced  70638       0        0
1294  7912       1978 Graduation        Married  38136       1        0
1295  7072       1973 Graduation        Married  67432       0        1
1296  1409       1951 Graduation       Together  40689       0        1
1297  5314       1951 Graduation       Together  40689       0        1
1298  7215       1983 Graduation         Single 101970       0        0
1299  8858       1972        PhD        Married  44325       0        1
1300   895       1948        PhD        Married  61467       0        2
1301 10313       1975 Graduation        Married  48178       1        1
1302  8504       1973 Graduation        Married  79593       0        0
1303  1020       1973 Graduation        Married  79593       0        0
1304  3717       1959 Graduation        Married  61180       0        1
1305  7646       1989 Graduation         Single  64449       1        0
1306  5796       1963 Graduation        Married  77437       0        0
1307  5407       1954 Graduation       Together  53103       0        1
1308  4356       1971 Graduation       Together  71819       0        1
1309  2886       1971     Master       Divorced  74290       0        1
1310 10057       1951 Graduation         Single  72282       0        0
1311 10741       1951     Master       Together  47352       0        1
1312  5491       1951     Master       Together  47352       0        1
1313  4442       1961 Graduation         Single  46524       0        1
1314  3972       1976 Graduation       Together  50200       1        1
1315  7899       1952        PhD        Married  77610       0        1
1316  9703       1970        PhD        Married  38097       1        1
1317  6927       1968        PhD        Married  44377       1        1
1318  7005       1981 Graduation         Single  58684       0        0
1319   246       1965 Graduation        Married  66480       1        1
1320  4796       1952 Graduation       Divorced  49638       0        1
1321  4725       1950        PhD       Together  50616       0        1
1322 10680       1986 Graduation       Together  33235       1        0
1323  7327       1959        PhD        Married  36732       1        1
1324  1553       1946 Graduation       Together  82657       0        0
1325  1665       1964        PhD       Divorced  64140       0        2
1326 10640       1974 Graduation       Together  44392       1        1
1327  7761       1978   2n Cycle       Together  38702       1        0
1328  5062       1963        PhD        Married  54072       1        1
1329  6349       1987     Master       Divorced  61787       0        0
1330  3386       1992 Graduation        Married  34935       0        0
1331  8175       1992 Graduation        Married  34935       0        0
1332  6245       1950        PhD       Together  59292       0        1
1333  8780       1950        PhD       Together  59292       0        1
1334  2276       1955 Graduation         Single  57959       0        1
1335  1172       1983        PhD        Married  92491       0        0
1336  3225       1984     Master        Married  42207       1        0
1337  8629       1956 Graduation          Widow  46984       1        1
1338   269       1963        PhD         Single  46757       0        1
1339 10245       1986   2n Cycle         Single  80910       0        0
1340  2447       1979 Graduation       Together  30545       1        0
1341  9817       1970     Master         Single  44802       0        0
1342  1371       1976 Graduation         Single  79941       0        0
1343  8093       1969     Master        Married  79734       0        0
1344   713       1977     Master        Married  50353       0        0
1345 11051       1956        PhD       Together  77376       1        1
1346  5545       1972        PhD        Married  78075       0        0
1347  5283       1976        PhD         Single  42473       1        1
1348  7495       1948        PhD        Married  56223       0        1
1349  4368       1980 Graduation        Married  47850       1        0
1350  6303       1986        PhD       Together  91820       0        0
1351  1030       1965        PhD         Single  40637       1        1
1352  6945       1952 Graduation         Single  84574       0        0
1353  8562       1969 Graduation       Together  54165       0        0
1354  9167       1956 Graduation        Married  67131       0        1
1355  4743       1969        PhD        Married  56242       0        1
1356 10742       1983        PhD        Married  86580       0        0
1357 10965       1955 Graduation       Together  76005       0        0
1358  7129       1962        PhD        Married  54693       0        1
1359  3732       1955     Master        Married  52750       0        1
1360  7124       1968 Graduation       Divorced  36997       1        1
1361 10686       1965        PhD       Together  34230       1        1
1362  7247       1960 Graduation          Widow  47916       0        1
1363  1513       1979   2n Cycle       Together  60839       1        1
1364   460       1972        PhD        Married  79930       0        0
1365  6653       1970        PhD        Married  55158       1        1
1366  9400       1958   2n Cycle         Single  85485       0        0
1367  7106       1943        PhD        Married  75865       0        0
1368  4252       1965 Graduation        Married  44375       0        1
1369  9240       1971        PhD         Single  60504       0        1
1370 10770       1959 Graduation        Married  65492       0        0
1371   176       1980   2n Cycle         Single  67506       0        1
1372  6870       1959        PhD       Divorced  68805       0        1
1373   143       1970 Graduation         Single  61209       0        0
1374  6445       1967 Graduation       Together  66825       0        0
1375  4278       1983        PhD         Single  87188       0        0
1376  6906       1953     Master          Widow  84953       0        0
1377  4637       1954        PhD         Single  74637       0        0
1378  8690       1962 Graduation        Married  86111       0        0
1379  1173       1947     Master       Together  77632       0        0
1380  1928       1973 Graduation        Married  31814       1        0
1381  9029       1972        PhD        Married  70116       0        0
1382 10299       1969        PhD         Single  48240       0        0
1383  9246       1985     Master       Together  40101       1        0
1384  4943       1953 Graduation        Married  70503       0        0
1385  4122       1975 Graduation        Married  79205       0        0
1386  2853       1980 Graduation         Single  51766       1        0
1387   902       1980 Graduation       Together  62994       1        0
1388  1672       1974        PhD       Together  65640       0        1
1389  7254       1969 Graduation       Together  38361       1        0
1390  8775       1969 Graduation       Together  38361       1        0
1391  2894       1985 Graduation         Single  72903       0        0
1392  5956       1948        PhD       Divorced  45072       1        2
1393  1921       1967        PhD        Married  59062       2        1
1394  5057       1961     Master        Married  61794       0        1
1395 10260       1965     Master       Together  45143       0        1
1396  2262       1965     Master       Together  45143       0        1
1397  1461       1965        PhD       Divorced  36921       1        1
1398  7514       1956   2n Cycle       Together  54342       1        1
1399  6461       1969     Master         Single  62772       0        1
1400   257       1959        PhD        Married  75032       0        1
1401   367       1978   2n Cycle        Married  36550       1        0
1402  9265       1953 Graduation        Married  75027       0        1
1403  1990       1974        PhD         Single  63159       0        0
1404  3594       1973     Master        Married  54108       1        1
1405  9292       1952 Graduation        Married  81795       0        0
1406  6218       1965 Graduation        Married  59594       0        1
1407 10164       1958 Graduation         Single  94472       0        1
1408  9937       1979 Graduation         Single  70337       0        0
1409   274       1973 Graduation         Single  34853       1        1
1410  6969       1982 Graduation       Together  50272       1        0
1411  9974       1974 Graduation        Married  30631       1        0
1412  7053       1966        PhD         Single  78420       0        0
1413  3179       1980 Graduation         Single  81741       0        0
1414  1362       1972 Graduation         Single  31907       0        0
1415  6768       1962 Graduation       Divorced  37859       1        2
1416  2375       1972 Graduation       Together  30261       1        2
1417  4333       1954 Graduation       Together  32144       1        1
1418  2948       1954     Master       Divorced  62637       0        1
1419  7426       1971   2n Cycle        Married  54690       1        1
1420  8360       1971   2n Cycle        Married  54690       1        1
1421  4058       1955        PhD         Single  61284       0        0
1422  8414       1962        PhD         Single  33419       0        1
1423  6810       1983 Graduation       Divorced  82025       0        0
1424  3483       1958 Graduation        Married  48192       0        0
1425   238       1967   2n Cycle       Together  67309       1        1
1426   591       1957 Graduation          Widow  66033       0        1
1427  2258       1986 Graduation        Married  32880       1        0
1428  5287       1973 Graduation        Married  34961       1        0
1429  6457       1976 Graduation       Divorced  64892       0        1
1430  5577       1983 Graduation       Together  43776       1        0
1431   641       1967 Graduation         Single  52074       0        1
1432  1834       1978     Master         Single  35544       1        0
1433  8789       1989   2n Cycle        Married  59060       1        0
1434 10584       1976 Graduation        Married  65665       0        1
1435  6071       1989 Graduation         Single  81217       0        0
1436   295       1989 Graduation         Single  81217       0        0
1437  3968       1970   2n Cycle       Divorced  65706       0        0
1438  4037       1976 Graduation       Divorced  31859       1        0
1439  6932       1941        PhD        Married  93027       0        0
1440 10159       1970 Graduation       Divorced  58710       0        1
1441  1177       1966     Master       Together  49618       1        1
1442  9426       1964     Master         Single  58308       0        1
1443 10637       1964 Graduation        Married  40800       1        2
1444 10992       1967 Graduation       Together  75702       1        1
1445  6383       1971        PhD       Together  32892       1        0
1446 10536       1971        PhD       Together  32892       1        0
1447  6036       1959     Master       Together  89120       0        0
1448   538       1989 Graduation         Single  46107       1        0
1449 10022       1973        PhD         Single  54466       1        1
1450 10157       1965 Graduation         Single  59686       0        1
1451  3503       1950 Graduation       Divorced  82460       0        0
1452   146       1960        PhD         Single  76045       0        0
1453  5538       1975 Graduation       Divorced  83829       0        0
1454  3910       1975 Graduation       Divorced  83829       0        0
1455  4227       1968     Master       Together  32889       1        1
1456  6634       1979     Master       Divorced  33462       1        0
1457  8916       1975 Graduation       Divorced  36627       2        0
1458  5883       1972 Graduation        Married  77981       1        0
1459 10091       1956 Graduation         Single  60230       0        1
1460   697       1969 Graduation       Together  74918       0        0
1461  2607       1953 Graduation         Single  40464       0        1
1462  8427       1956     Master         Single  64857       0        0
1463   217       1956     Master         Single  64857       0        0
1464  6202       1960 Graduation       Together  63381       0        1
1465  3856       1960 Graduation       Together  63381       0        1
1466 10648       1982   2n Cycle       Together  66664       0        0
1467  5120       1982   2n Cycle       Together  66664       0        0
1468  6749       1966 Graduation         Single  86358       1        1
1469  1584       1977 Graduation        Married  41443       1        0
1470  9559       1961        PhD        Married  57072       0        1
1471   771       1967 Graduation       Together  54178       0        1
1472  5237       1950        PhD         Single  48767       1        2
1473  2461       1955     Master         Single  51124       1        1
1474  5474       1970 Graduation         Single  43020       1        0
1475  2895       1963 Graduation         Single  49980       0        1
1476  7972       1955 Graduation         Single  72906       0        0
1477   500       1977 Graduation       Together  96876       0        0
1478   922       1979   2n Cycle        Married  31086       1        1
1479   375       1954 Graduation       Divorced  76773       0        0
1480 10936       1965 Graduation        Married  72190       0        0
1481 10314       1948        PhD        Married  83837       0        0
1482  2674       1958     Master         Single  75154       0        1
1483  6999       1980     Master        Married  69661       0        0
1484  5223       1966     Master       Together  45903       0        1
1485  2952       1977     Master         Single  36273       1        0
1486  7683       1968     Master        Married  70777       0        1
1487  9907       1969     Master       Together  66476       0        1
1488  5454       1979     Master        Married  45057       1        0
1489  3798       1968 Graduation        Married  41120       1        1
1490  6437       1985   2n Cycle         Single  41473       1        0
1491  2488       1956   2n Cycle       Divorced  31395       1        1
1492  3945       1947        PhD          Widow  68117       0        1
1493   702       1975   2n Cycle          Widow  47682       0        1
1494  9010       1972     Master        Married  83151       0        0
1495  9710       1969        PhD       Divorced  58086       0        1
1496  1509       1958        PhD       Together  84460       0        0
1497  9120       1962 Graduation         Single  66565       0        1
1498  5959       1968 Graduation         Single  35893       1        1
1499  7441       1973 Graduation       Divorced  71128       1        0
1500  4271       1989   2n Cycle       Together  38683       1        0
1501  4095       1971 Graduation        Married  37150       1        0
1502  8852       1976 Graduation        Married  61064       0        1
1503  7698       1976        PhD        Married  51650       0        1
1504  4174       1956     Master       Together  55249       0        1
1505  3182       1973        PhD         Single  46854       1        1
1506  5229       1969        PhD       Together  54132       0        1
1507  5555       1975 Graduation       Divorced 153924       0        0
1508  7732       1978 Graduation        Married  64813       1        0
1509   310       1970     Master        Married  61872       0        1
1510  6261       1979 Graduation        Married  58025       0        1
1511  6274       1948     Master        Married  83790       0        0
1512  1655       1979 Graduation       Together  34350       1        0
1513  2740       1958        PhD          Widow  33438       1        1
1514    17       1971        PhD        Married  60491       0        1
1515  9153       1964        PhD        Married  59304       0        1
1516   520       1974 Graduation        Married  34421       1        0
1517  8372       1974 Graduation        Married  34421       1        0
1518    73       1953        PhD         Single  51411       1        2
1519  2002       1958 Graduation       Divorced  71964       0        0
1520  6059       1953        PhD       Together  64504       1        2
1521 11166       1961 Graduation        Married  49678       0        1
1522  6257       1976     Master         Single  60482       0        1
1523  9224       1972        PhD         Single  55260       0        1
1524  8732       1969     Master          Widow  67369       0        1
1525   955       1962     Master       Together  47175       1        1
1526  4910       1967 Graduation       Divorced  68743       0        0
1527   564       1981        PhD       Together  56937       1        0
1528  8931       1986 Graduation       Together  83033       1        0
1529  1998       1976 Graduation         Single  37697       1        0
1530  1250       1976 Graduation         Single  37697       1        0
1531  8397       1951 Graduation        Married  44689       1        1
1532  2125       1959 Graduation       Divorced  63033       0        0
1533  5975       1967        PhD         Single  40304       1        0
1534   983       1984 Graduation        Married  40059       1        0
1535  9938       1954 Graduation        Married  80067       0        0
1536  4385       1981        PhD         Single  36038       1        0
1537   803       1968 Graduation       Together  40521       1        1
1538 10675       1956        PhD        Married  66334       0        1
1539  4432       1976 Graduation       Divorced  31615       1        0
1540  4475       1949        PhD        Married  69098       0        0
1541 10868       1951 Graduation          Widow  70792       0        0
1542   339       1972        PhD        Married  57091       0        1
1543  8017       1981   2n Cycle        Married  51111       1        1
1544  3722       1972 Graduation         Single  44503       1        1
1545  7326       1971     Master        Married  56850       0        1
1546  2416       1969        PhD         Single  66582       0        0
1547  5278       1964 Graduation        Married  82224       0        0
1548  5734       1974        PhD        Married  61917       1        1
1549  4370       1966 Graduation       Together  43482       2        1
1550  8405       1979 Graduation       Divorced  68274       1        1
1551  7617       1974 Graduation         Single  42373       1        1
1552  6376       1979 Graduation         Single  57537       1        0
1553  2150       1958        PhD          Widow  80995       0        1
1554  7386       1976 Graduation       Divorced  30992       1        0
1555  3006       1976 Graduation       Divorced  30992       1        0
1556 11088       1971        PhD       Together  78642       0        1
1557  5185       1955 Graduation        Married  74268       0        0
1558  3523       1962 Graduation       Together  75072       0        1
1559    55       1963 Graduation       Together  56253       0        1
1560  3807       1955 Graduation       Together  59925       0        1
1561  2453       1960 Graduation       Together  62807       0        1
1562  7787       1960 Graduation       Together  62807       0        1
1563  8146       1976     Master       Together  46106       1        1
1564   988       1965 Graduation        Married  81168       0        0
1565   361       1969     Master        Married  43142       1        1
1566  5939       1971 Graduation       Together  38232       1        1
1567  9349       1985 Graduation        Married  92533       0        0
1568   819       1945 Graduation          Widow  63285       0        0
1569 10120       1955 Graduation       Together  38946       0        1
1570  4541       1955 Graduation       Together  38946       0        1
1571  2456       1975        PhD        Married  40233       0        1
1572  2516       1969   2n Cycle        Married  46831       1        1
1573 11013       1987 Graduation       Together  67605       0        0
1574  9988       1976     Master         Single  70379       0        1
1575  1627       1957   2n Cycle       Divorced  77297       0        0
1576  1490       1962 Graduation        Married  55759       0        1
1577  6710       1951     Master         Single  58217       2        1
1578  7375       1976 Graduation       Together  51369       0        1
1579 10144       1976 Graduation       Together  51369       0        1
1580  3138       1956 Graduation         Single  91249       0        0
1581  1440       1978   2n Cycle       Together  52513       0        0
1582  4200       1970     Master        Married  44159       1        0
1583  4998       1962 Graduation       Together  76081       0        0
1584  7321       1962 Graduation       Together  76081       0        0
1585  8663       1974 Graduation       Divorced  39996       1        1
1586  1958       1973        PhD       Together  55012       0        1
1587  6963       1947 Graduation         Single  77457       0        0
1588  1065       1963 Graduation         Single  80695       0        0
1589  2712       1956 Graduation        Married  71866       0        1
1590  6049       1982     Master       Together  73450       0        0
1591  6605       1944        PhD       Divorced  55614       0        0
1592 11181       1949        PhD        Married 156924       0        0
1593  5234       1967   2n Cycle       Together  30753       1        1
1594  5253       1956     Master       Together  54603       1        1
1595  6289       1951     Master       Together  59385       1        1
1596  9743       1955 Graduation        Married  76998       0        1
1597  9209       1971     Master       Together  80573       0        0
1598  6417       1971     Master       Together  80573       0        0
1599  6488       1959        PhD        Married  38829       0        1
1600  3194       1974        PhD         Single  71466       0        0
1601  9697       1951 Graduation        Married  53790       0        2
1602  4676       1951     Master          Widow  73705       0        2
1603 10505       1960     Master       Together  73113       0        0
1604  2005       1990 Graduation        Married  35765       1        0
1605  6940       1966        PhD         Single  46734       1        2
1606  2304       1963        PhD       Together  66313       0        1
1607  3170       1957     Master       Together  68148       0        0
1608 10466       1965 Graduation        Married  44393       1        1
1609  7325       1986        PhD       Together  38197       1        0
1610   455       1946        PhD        Married  51012       0        0
1611  7592       1946        PhD        Married  51012       0        0
1612  6825       1953 Graduation       Together  41452       1        1
1613  2961       1982 Graduation        Married  42081       1        0
1614  2278       1985   2n Cycle         Single  33812       1        0
1615 10703       1975     Master         Single  46098       1        1
1616     9       1975     Master         Single  46098       1        1
1617  2804       1975     Master         Single  46098       1        1
1618  4915       1956   2n Cycle        Married  53230       0        1
1619  3010       1989     Master       Together  88420       0        0
1620  4279       1963   2n Cycle         Single  39548       1        1
1621  2564       1953 Graduation       Together  61278       0        1
1622  1137       1964 Graduation         Single  81246       0        0
1623  5084       1975 Graduation          Widow  58330       0        1
1624  7094       1975 Graduation          Widow  58330       0        1
1625  6327       1967 Graduation       Together  65777       0        0
1626  6131       1980   2n Cycle        Married  70829       1        1
1627 10379       1962     Master         Single  59247       0        2
1628  7801       1959 Graduation       Together  54753       0        1
1629   550       1952 Graduation       Divorced  62335       0        1
1630  4478       1979 Graduation        Married  63777       1        1
1631  2350       1972 Graduation        Married  59666       1        1
1632  1118       1956     Master        Married  50965       0        1
1633  1491       1965   2n Cycle       Together  71488       0        0
1634  4507       1952 Graduation         Single  72228       0        0
1635  7023       1953        PhD         Single  46231       2        1
1636  6977       1974 Graduation       Together  75702       0        1
1637  4042       1971 Graduation       Divorced  43300       0        1
1638  7274       1957 Graduation        Married  78618       0        0
1639  9386       1962 Graduation       Together  50127       0        1
1640 10323       1952 Graduation        Married  49413       0        1
1641  4682       1958 Graduation        Married  51876       0        0
1642  3083       1974 Graduation        Married  45837       1        1
1643  8015       1962        PhD       Divorced  85696       0        0
1644  1745       1962        PhD       Divorced  85696       0        0
1645  3136       1962     Master       Divorced  59432       0        1
1646  6991       1951 Graduation       Divorced  43185       0        1
1647  8132       1975        PhD        Married  60631       1        1
1648  8148       1956     Master       Together  50898       1        1
1649  2736       1978 Graduation        Married  73807       0        1
1650   692       1954 Graduation       Together  36807       1        1
1651  7706       1975   2n Cycle       Together  46772       0        1
1652  9298       1947        PhD       Together  81574       0        0
1653  2986       1976 Graduation        Married  30772       1        1
1654 10812       1978        PhD        Married  46377       1        0
1655  2909       1974        PhD        Married  78128       0        1
1656  6974       1972        PhD       Together  83443       0        0
1657  9140       1960   2n Cycle       Together  50523       1        1
1658  4554       1965 Graduation       Together  47009       0        1
1659  7791       1967     Master        Married  37054       1        1
1660  5455       1971        PhD        Married  32011       1        0
1661  7960       1962   2n Cycle       Together  82122       0        0
1662  3426       1975 Graduation       Divorced  70300       1        0
1663  1404       1968 Graduation       Together  34916       2        0
1664  8212       1971     Master        Married  39791       0        1
1665  3233       1965        PhD        Married  62745       0        1
1666  2975       1976 Graduation       Together  85606       0        1
1667  3104       1961 Graduation         Single  82332       0        0
1668 10854       1970        PhD        Married  38853       1        1
1669  5558       1954        PhD         Single  90933       0        0
1670   832       1966        PhD       Together  65814       0        1
1671  4964       1958        PhD       Together  74250       0        0
1672 11030       1976     Master        Married  33181       1        0
1673  4587       1944     Master          Widow  45006       0        0
1674   450       1958     Master       Together  42315       0        1
1675 11031       1950        PhD        Married  48699       1        1
1676  4990       1954 Graduation        Married  59111       0        0
1677   221       1955 Graduation        Married  48726       0        1
1678  4351       1955 Graduation       Divorced  37244       1        1
1679  1357       1970 Graduation       Together  74854       1        2
1680  5667       1964        PhD        Married  60896       0        1
1681  8867       1988        PhD        Married  67546       0        0
1682  2747       1988        PhD        Married  67546       0        0
1683  7422       1987 Graduation         Single  46923       1        0
1684  4148       1972 Graduation        Married  38988       1        2
1685  9516       1971   2n Cycle       Divorced  49118       0        0
1686  1833       1974        PhD         Single  39190       1        0
1687  7270       1981 Graduation       Divorced  56981       0        0
1688 10394       1984 Graduation        Married  90000       0        0
1689  1142       1953        PhD        Married  55707       0        1
1690  7128       1977        PhD         Single  42997       1        1
1691 10678       1959 Graduation       Together  71232       0        1
1692  7755       1954        PhD        Married  57744       0        1
1693  4754       1966     Master        Married  33585       0        1
1694    20       1965   2n Cycle        Married  46891       0        1
1695  2246       1965   2n Cycle        Married  46891       0        1
1696 10307       1956 Graduation        Married  50387       0        2
1697  2147       1969 Graduation       Together  76653       0        0
1698 10590       1956        PhD       Together  76542       0        0
1699  6565       1949     Master        Married  76995       0        1
1700  6619       1978 Graduation        Married  38415       1        1
1701  4508       1952 Graduation         Single  75127       0        0
1702  4843       1952 Graduation         Single  75127       0        0
1703  9197       1953 Graduation        Married  39722       0        1
1704  6515       1977 Graduation       Together  39771       1        0
1705  5954       1972     Master       Divorced  42618       1        0
1706  7938       1958        PhD       Together  51518       0        1
1707   961       1972 Graduation        Married  74716       0        1
1708  1764       1975 Graduation         Single  33955       1        0
1709  1916       1954     Master        Married  45736       0        1
1710  6941       1971 Graduation         Single  31632       0        0
1711  5562       1974 Graduation        Married  60093       0        1
1712  1517       1969 Graduation         Single  30822       1        0
1713  7286       1968 Graduation       Together  41728       1        0
1714  4687       1958     Master        Married  80739       0        0
1715  5631       1991 Graduation         Single  49767       0        0
1716  1951       1981      Basic        Married  34445       0        0
1717   123       1951 Graduation          Widow  67046       0        1
1718  9451       1965 Graduation        Married  73538       0        1
1719  7396       1966 Graduation        Married  80398       0        0
1720  3298       1956     Master        Married  52973       0        1
1721  6730       1954 Graduation        Married  38998       1        1
1722  9916       1954 Graduation        Married  38998       1        1
1723  4094       1961 Graduation        Married  60544       1        1
1724  8588       1961 Graduation        Married  60544       1        1
1725  3916       1971        PhD       Together  49269       1        0
1726  1755       1988   2n Cycle       Together  45204       1        0
1727  2875       1978 Graduation        Married  67023       0        0
1728  2008       1978 Graduation        Married  77583       0        0
1729 10925       1983 Graduation        Married  76630       0        0
1730  1604       1960     Master        Married  47353       0        1
1731  5389       1964 Graduation        Married  48920       0        2
1732  2878       1947        PhD        Married  67472       0        1
1733  4440       1964     Master        Married  64100       0        1
1734  1324       1988 Graduation        Married  38872       1        0
1735  6262       1962     Master         Single  72217       0        0
1736   322       1978 Graduation       Together  42554       1        1
1737   175       1986 Graduation        Married  71952       1        0
1738  6988       1986 Graduation        Married  71952       1        0
1739  8204       1971   2n Cycle        Married  78041       0        0
1740  7476       1964     Master         Single  63972       0        1
1741  5221       1957 Graduation        Married  52852       0        1
1742  8970       1972        PhD        Married  62010       0        1
1743  9286       1960     Master       Together  83151       0        0
1744  5831       1967 Graduation        Married  77870       0        1
1745  1010       1977 Graduation       Together  46931       2        1
1746 11074       1977 Graduation         Single  85072       0        0
1747  5896       1987     Master        Married  73395       0        0
1748  3515       1952 Graduation         Single  62307       0        1
1749  5324       1981        PhD        Married  58293       1        0
1750  6534       1974 Graduation       Together  47889       1        0
1751  4501       1965     Master         Single  69882       0        0
1752  9239       1961     Master        Married  61923       0        2
1753  8953       1965     Master         Single  35791       2        1
1754 10258       1965     Master         Single  35791       2        1
1755  3520       1990     Master         Single  91172       0        0
1756 10402       1967 Graduation        Married  35441       1        1
1757  6055       1979 Graduation        Married  71626       0        0
1758  4786       1977 Graduation        Married  75330       1        1
1759  5015       1976     Master        Married  34529       1        0
1760  8560       1992 Graduation         Single  48789       0        0
1761  3469       1977        PhD       Divorced  34487       1        1
1762  5885       1973   2n Cycle        Married  35688       2        1
1763  3310       1973   2n Cycle        Married  35688       2        1
1764  2134       1952 Graduation         Single  53700       0        1
1765  2532       1987     Master         Single  73454       0        0
1766  2579       1957 Graduation        Married  71113       0        1
1767  5623       1980     Master        Married  31535       1        0
1768  4789       1953 Graduation       Together  80812       0        0
1769  9523       1982 Graduation       Together  40479       1        0
1770  1545       1986 Graduation        Married  38508       1        0
1771  2254       1983 Graduation        Married  69520       0        0
1772  5847       1969 Graduation       Divorced  69901       0        1
1773  5863       1953 Graduation        Married  47703       0        1
1774   999       1991 Graduation         Single  86037       0        0
1775  2931       1978 Graduation       Divorced  71847       0        0
1776  1890       1971   2n Cycle       Together  42033       1        1
1777  5589       1964 Graduation       Divorced  51983       0        1
1778 10172       1988 Graduation         Single  68655       0        0
1779  6729       1988 Graduation         Single  68655       0        0
1780 10492       1959 Graduation       Together  38285       2        1
1781  2939       1970     Master       Together  79419       0        0
1782  5948       1975 Graduation         Single  57338       0        1
1783   574       1964 Graduation        Married  42523       0        0
1784  3266       1964 Graduation        Married  42523       0        0
1785 10500       1984 Graduation        Married  31761       1        0
1786  7987       1969 Graduation        Married  65747       0        1
1787  1966       1965        PhD        Married  84618       0        0
1788  7789       1965        PhD        Married  84618       0        0
1789  3336       1948        PhD       Together  66375       0        1
1790  5644       1957 Graduation       Together  42213       0        1
1791  6663       1940        PhD         Single  51141       0        0
1792  5748       1965 Graduation        Married  59754       0        1
1793  8952       1953     Master        Married  65569       0        1
1794  9826       1972        PhD         Single  86857       0        0
1795  5830       1972        PhD         Single  86857       0        0
1796  8310       1964 Graduation       Together  68142       0        1
1797  6382       1953 Graduation       Together  48794       1        1
1798  8439       1964 Graduation       Together  63404       0        2
1799  7613       1974   2n Cycle       Together  49669       1        0
1800    48       1964 Graduation       Together  55761       0        1
1801  5046       1958 Graduation       Divorced  78331       0        1
1802  3231       1973 Graduation        Married  37971       1        0
1803  7181       1977 Graduation        Married  30368       0        1
1804  1663       1978        PhD       Together  34043       1        0
1805  5441       1965        PhD          Widow  54111       0        1
1806  8602       1964 Graduation       Divorced  69932       0        1
1807  9925       1981        PhD       Together  39665       1        0
1808  9499       1954 Graduation        Married  93404       1        2
1809  6568       1984 Graduation        Married  38680       1        0
1810  5153       1967        PhD        Married  77766       0        1
1811  4127       1967        PhD        Married  77766       0        1
1812  9940       1958 Graduation       Together  64961       0        1
1813  3406       1964 Graduation         Single  45989       0        1
1814  6722       1954        PhD        Married  70421       0        1
1815  8475       1973        PhD        Married 157243       0        1
1816  8070       1973        PhD        Married  54222       0        1
1817   313       1968 Graduation          Widow  73455       0        0
1818  9757       1972 Graduation       Together  84906       0        0
1819  2088       1972 Graduation       Together  84906       0        0
1820  2320       1978   2n Cycle        Married  47025       0        1
1821   966       1966 Graduation        Married  44529       0        1
1822  9706       1974        PhD         Single  31560       1        0
1823  3979       1983        PhD       Divorced  90687       0        0
1824  5602       1989        PhD       Together  66973       0        0
1825  2202       1978 Graduation       Together  41154       0        1
1826  9645       1968 Graduation        Married  64590       0        0
1827  7230       1960        PhD       Divorced  50611       0        1
1828  5675       1960        PhD       Divorced  50611       0        1
1829  4974       1970 Graduation         Single  83273       1        2
1830  5687       1980 Graduation       Divorced  81702       0        0
1831  3846       1974 Graduation        Married  42557       0        1
1832  2831       1976 Graduation       Together  78416       0        1
1833   868       1966 Graduation        Married  44794       0        1
1834  7212       1966 Graduation        Married  44794       0        1
1835  1743       1974 Graduation         Single  69719       0        0
1836  2415       1962 Graduation       Together  62568       0        1
1837  7947       1969 Graduation        Married  42231       1        1
1838  8595       1973 Graduation          Widow  42429       0        1
1839  7232       1973 Graduation          Widow  42429       0        1
1840  7829       1900   2n Cycle       Divorced  36640       1        0
1841  9977       1973 Graduation       Divorced  78901       0        1
1842 10142       1976        PhD       Divorced  66476       0        1
1843  5263       1977   2n Cycle        Married  31056       1        0
1844    22       1976 Graduation       Divorced  46310       1        0
1845   528       1978 Graduation        Married  65819       0        0
1846  4070       1969        PhD        Married  94871       0        2
     Dt_Customer Recency MntWines MntFruits MntMeatProducts MntFishProducts
1      6/16/2014       0      189       104             379             111
2      6/15/2014       0      464         5              64               7
3      5/13/2014       0      134        11              59              15
4      11/5/2014       0       10         0               1               0
5      3/17/2014       0      336       130             411             240
6      1/29/2014       0      769        80             252              15
7      1/18/2014       0       78         0              11               0
8      11/1/2014       0      384         0             102              21
9      11/1/2014       0      384         0             102              21
10    12/27/2013       0      450        26             535              73
11     9/12/2013       0      140         4              61               0
12     7/12/2013       0      431        82             441              80
13     11/9/2013       0       63         6              57              13
14     11/9/2013       0       63         6              57              13
15      1/8/2013       0       18         0               2               0
16     7/23/2013       0       53         1               5               2
17      1/7/2013       0        5         0               3               0
18     5/28/2013       0      213         9              76               4
19     3/26/2013       0      275        11              68              25
20     3/15/2013       0       40         2              23               0
21     12/2/2013       0      308         0              73               0
22    11/23/2012       0      266        21             300              65
23    10/13/2012       0       80         1              37               0
24     9/14/2012       0      454         0             171               8
25     9/14/2012       0      454         0             171               8
26     6/29/2014       1       27         0              12               0
27     5/31/2014       1      184       174             256              50
28     5/30/2014       1      155         7              80              13
29     4/27/2014       1      423        42             706              73
30     11/4/2014       1        7         0               1               0
31     3/17/2014       1      408         0              21               0
32     9/10/2013       1     1285        21             449             106
33      1/8/2013       1       71        22             112             138
34     10/5/2013       1        7         1               6               0
35      9/5/2013       1     1248        16             349              43
36     4/25/2013       1      378         0             189              97
37     3/30/2013       1     1200         0             204              38
38      1/3/2013       1      709        45             115              30
39     2/14/2013       1       94         1              33              13
40     11/1/2013       1      539       169             816              20
41      3/1/2013       1       13         3               6               6
42    12/19/2012       1      670         9             249               0
43    12/15/2012       1      158        35             179               0
44     2/12/2012       1      283        10              38               0
45     11/9/2012       1      496        36             460             189
46     12/5/2014       2       12         0               4               0
47     4/28/2014       2      292        51             981             224
48      6/3/2014       2       46         0              12               0
49      4/3/2014       2       34         0               7               0
50      4/2/2014       2      167         0              43               6
51      3/2/2014       2      318         8             407             150
52      1/1/2014       2      522         0             257              32
53    11/15/2013       2       28         0               4               0
54     9/20/2013       2       58         0              18               2
55     8/31/2013       2      229         7             140              10
56     7/30/2013       2       14         0              16               0
57     7/30/2013       2      622         7             115              30
58     7/27/2013       2      362        50             431             134
59     6/22/2013       2       38         4              22               3
60     6/22/2013       2       38         4              22               3
61     11/1/2013       2     1074        37             518             193
62      5/1/2013       2      983        76             184             180
63    11/21/2012       2      262         6              61               0
64     9/28/2012       2      739       107             309             140
65     9/27/2012       2      610       105             125             137
66      7/9/2012       2       50         4              28               6
67     8/13/2012       2     1285       105             653              28
68     11/8/2012       2      650        37             780              27
69     6/25/2014       3      458        81             356             106
70     6/25/2014       3      458        81             356             106
71     5/28/2014       3      292         6              37               0
72     4/14/2014       3      520         7             154              19
73     10/3/2014       3       14         0               1               0
74     2/27/2014       3        3         4               7              15
75    11/17/2013       3      345        53             528              98
76    10/17/2013       3       42        11              57              10
77    10/13/2013       3      463        96             333             168
78     9/30/2013       3      260        86             559              63
79      3/7/2013       3      180        32             348              76
80     10/6/2013       3       62         1              44               6
81     10/6/2013       3       62         1              44               6
82     5/29/2013       3       67         1              20               0
83     4/29/2013       3      421        76             536              82
84     10/3/2013       3      154        22             202              39
85      2/1/2013       3      502        19             132               0
86     2/11/2012       3      145       193             459             205
87    10/18/2012       3      322         3              50               4
88    10/18/2012       3      322         3              50               4
89    10/18/2012       3      322         3              50               4
90     1/10/2012       3     1099         0              45               0
91     1/10/2012       3     1099         0              45               0
92      3/9/2012       3      890        63             292               0
93     8/26/2012       3      863        83             547              86
94     5/23/2014       4      448        21             125              52
95     5/17/2014       4      399         4              30               6
96     4/21/2014       4       85         7              24               2
97     4/21/2014       4       97         1              41               6
98     3/23/2014       4       35         3              67              10
99    12/16/2013       4        3         2              11               2
100   11/26/2013       4      315        35             322              46
101   11/14/2013       4      738         0             232              13
102   11/14/2013       4      738         0             232              13
103    6/11/2013       4      179        28             520             111
104    6/10/2013       4      381        28             215              84
105    9/27/2013       4      247        49             159               7
106    9/18/2013       4      711        36             217             172
107     9/9/2013       4       30         8              12               8
108     9/9/2013       4       30         8              12               8
109    7/18/2013       4      288        10              30               4
110     8/7/2013       4      212         6              69               4
111    5/27/2013       4      173         4              30               3
112     5/3/2013       4      604         0             100              19
113    2/20/2013       4      482        34             471             119
114    2/14/2013       4      531        69             300             150
115    2/14/2013       4      531        69             300             150
116    12/1/2013       4      448        40             469              80
117    9/17/2012       4      496        32             849             229
118    3/28/2014       5       33         4              24               4
119    2/24/2014       5      784        48             560              42
120     2/9/2013       5       10        12              12              25
121     5/5/2013       5      600        20             350              29
122     5/4/2013       5      168       148             444              32
123     4/1/2013       5      493        26             206             116
124    9/22/2012       5       29         0               2               0
125     7/9/2012       5      520         8             223              32
126     7/9/2012       5      520         8             223              32
127    3/31/2014       6      835        73             380             114
128    3/21/2014       6     1296        17             311              45
129     9/2/2014       6       16         0               3               0
130   11/17/2013       6      760        80             466              17
131    9/23/2013       6       70         6              69               2
132    9/18/2013       6       68         0              16               0
133    9/18/2013       6       68         0              16               0
134    6/27/2013       6        9         1               5               4
135    6/27/2013       6        9         1               5               4
136    3/28/2013       6      325        83             300              86
137    1/16/2013       6      303        23             751              82
138     8/1/2013       6      121       103              69               8
139   12/12/2012       6      561        64             785              84
140   11/25/2012       6      462        61             184              10
141    9/21/2012       6      376         0              38              11
142     9/9/2012       6      341       142             113             259
143     5/9/2012       6      595        97             291             127
144    8/17/2012       6      179         8              83              19
145    6/22/2014       7       23         4               5              10
146     1/5/2014       7      530       117             678             134
147     3/1/2014       7      594       134             786              33
148   12/16/2013       7      852        60             207              78
149   11/10/2013       7      158         0              76              13
150    8/13/2013       7      384        25             292             130
151   10/29/2012       7      194         2              56               0
152   10/29/2012       7      194         2              56               0
153    12/9/2012       7      179        21             273               0
154    3/19/2014       8        1         3               8               2
155     3/3/2014       8      216         2               6               0
156    1/24/2014       8      428        30             214              80
157   12/16/2013       8     1092        37             592             145
158    4/12/2013       8       10         0               7               2
159   11/28/2013       8      559       153             503             218
160    5/11/2013       8      606       148             228              15
161    3/10/2013       8       11         5              22              12
162     9/8/2013       8      588         7              76             110
163     7/8/2013       8      316        58             161              76
164    7/17/2013       8      279        83              88              32
165     9/7/2013       8     1462        16             128               0
166    11/6/2013       8      546         0              48               0
167    5/17/2013       8      277        21              64              62
168    3/23/2013       8      948        10              86              13
169    2/19/2013       8      664         9             240              50
170    1/19/2013       8      268        11              88              15
171    10/1/2013       8      530       142             217              62
172     1/1/2013       8      199        33              60               8
173     1/1/2013       8      199        33              60               8
174   12/12/2012       8       73        57             100              71
175   10/29/2012       8       96        12              96              33
176    11/9/2012       8      587        51             898             247
177    5/28/2014       9       56        19              29               2
178    5/28/2014       9        6         2               3               1
179    5/18/2014       9      158        11              99              15
180    3/30/2014       9       45         3               9               4
181    3/29/2014       9        8         2               5               3
182    1/30/2014       9       12         6               2              11
183    1/26/2014       9      508         5              21               7
184    1/22/2014       9       11         2               7               4
185    1/22/2014       9      234        14              77              19
186    1/15/2014       9      992        24             694              51
187   12/13/2013       9      125         6              73               8
188    5/11/2013       9      174        18              81              28
189     7/8/2013       9     1478        19             403               0
190     7/8/2013       9     1478        19             403               0
191     4/8/2013       9       80         1              60               4
192     1/5/2013       9     1001        12             240              16
193    4/24/2013       9      392         5              91              28
194     3/4/2013       9      388        14             218              91
195     3/2/2013       9       65         0              46               4
196     3/2/2013       9      177         2              71               3
197     2/1/2013       9      577         0              64               0
198   11/16/2012       9      460        35             422              33
199     3/8/2012       9      219         3             100              26
200    6/15/2014      10        5         0               3               0
201     1/4/2014      10      117         0              22              13
202    3/18/2014      10       30         5              24               6
203    10/2/2014      10      236       106             189              23
204   11/21/2013      10      464        28             873              29
205   10/16/2013      10       16         2              18               3
206    9/30/2013      10      120        58              73              65
207    8/20/2013      10      145         1              33               2
208     1/8/2013      10      200        19             111              50
209    7/21/2013      10      532        88             168              69
210    7/21/2013      10      532        88             168              69
211    6/18/2013      10      297         0              38              13
212    3/24/2013      10      151         7              89               0
213    2/19/2013      10      997        26             269              34
214    10/1/2013      10       23         1              13               2
215    10/1/2013      10       23         1              13               2
216    6/12/2012      10      797       153             293              72
217    9/11/2012      10      823        25             459             124
218    9/11/2012      10      823        25             459             124
219    2/14/2014      11      966        26             282              52
220     7/2/2014      11      180        60             241              13
221    7/12/2013      11       37        32              38              11
222   10/22/2013      11      416         0              26               0
223   10/16/2013      11      314        11              53               4
224    9/21/2013      11        9         1               4               3
225     5/8/2013      11       18         6              15              12
226     5/8/2013      11       18         6              15              12
227    7/21/2013      11      342         9             112              19
228    7/14/2013      11       63         3              67               8
229     4/7/2013      11       20         6               5               0
230    12/4/2013      11      629         0              70               0
231    10/4/2013      11      158         6              45               8
232     8/4/2013      11      201        53             172             116
233    3/31/2013      11      964        34             137              15
234    3/31/2013      11       72        24              68              65
235    3/17/2013      11      123       133             142              71
236    3/15/2013      11      159         0              22               2
237    2/20/2013      11        6        10              21              19
238    2/20/2013      11        6        10              21              19
239    1/21/2013      11      209         0              40               3
240   10/12/2012      11      100        64              79              65
241    9/24/2012      11     1170        19             594              99
242    6/18/2014      12       71        99             278             185
243    12/5/2014      12        5         7              24              19
244    12/5/2014      12        5         7              24              19
245    12/5/2014      12      376         9              83              19
246     5/4/2014      12      387        68             569              89
247   12/21/2013      12      357        35             271              28
248   11/23/2013      12      912        72             170              47
249   10/27/2013      12      625        38             242              50
250   10/21/2013      12      420         0             452             182
251     9/9/2013      12      209        19             456             160
252    8/31/2013      12      641         7              84               0
253     4/7/2013      12      712        26             538              69
254     4/7/2013      12      712        26             538              69
255    6/25/2013      12      465        25             132             136
256    10/5/2013      12       39         1               9               2
257    4/27/2013      12      154         2              46              20
258    4/18/2013      12      514        22             732              42
259   12/30/2012      12       14         7               9               6
260    8/22/2012      12      565        42             548              64
261     8/8/2012      12      667        50             850              21
262    6/19/2014      13       53         0               8               0
263    4/20/2014      13       66         2              40               4
264    2/24/2014      13       34         3              29               0
265    1/15/2014      13      129       129             259             168
266    1/15/2014      13      129       129             259             168
267   12/17/2013      13      185         0              28               3
268   11/25/2013      13     1023        93             651              49
269   11/23/2013      13      338         4              89              11
270   10/28/2013      13      647       107             391             175
271    3/10/2013      13      163        48              90               0
272     5/7/2013      13       19        13              18              10
273    6/19/2013      13      182        74             298             162
274    6/16/2013      13       56         4              76              17
275    4/29/2013      13        1         0            1725               2
276    4/22/2013      13      779        86             537              34
277    3/19/2013      13       32        34              41              73
278    2/23/2013      13       42         1              18               3
279    2/23/2013      13       42         1              18               3
280    2/15/2013      13      298        27             697             216
281   12/30/2012      13       10         4              14               4
282   12/30/2012      13       10         4              14               4
283   10/31/2012      13        4         1               5               2
284    7/10/2012      13      488        23              71              15
285     9/8/2012      13      817       185             687             145
286     6/5/2014      14       19         3              19               3
287     6/5/2014      14       19         3              19               3
288    4/15/2014      14      459        15             171             142
289     5/3/2014      14      492         5              32              13
290    2/19/2014      14      558        79             622             207
291    11/1/2014      14      383         0              53               6
292    6/11/2013      14      209       162             209              41
293    2/10/2013      14     1043        24              97              32
294     7/9/2013      14      400         4              35               6
295    7/25/2013      14      691         7              69               0
296    3/19/2013      14      783        30             537             140
297     1/3/2013      14        3         3              14              15
298   12/11/2012      14       10         2              16              11
299    9/22/2012      14      777        35             731              39
300    10/9/2012      14       63         0              21               7
301    3/20/2014      15       16         7              23               0
302    2/27/2014      15       27         2               7               0
303     9/2/2014      15       27         5               8               8
304   12/10/2013      15       71         0              13               3
305    9/28/2013      15      402        35             106             101
306    9/24/2013      15      144         1              32               2
307     5/5/2013      15      840        53             804              23
308   10/12/2012      15       56         5              24               4
309   11/22/2012      15       74         0              42               2
310    8/16/2012      15      100        71             243             108
311    12/5/2014      16       26         3              23               4
312    10/4/2014      16       29         1              17               0
313     3/4/2014      16      162         6              37               6
314    12/2/2014      16     1302        68             731              89
315    1/22/2014      16       47         1               6               0
316   10/30/2013      16      129        26              67               3
317    4/10/2013      16       16        11              15               2
318     9/9/2013      16      520        42              98               0
319     6/8/2013      16       71         0              18               0
320     2/2/2013      16      918        57             842              99
321   11/17/2012      16      172        10             125              21
322   11/13/2012      16      931        56             253              91
323    7/11/2012      16      666        35             124              69
324   10/16/2012      16       27         1              14               4
325    6/19/2014      17       24         1              10               2
326     2/3/2014      17       25         1              13               0
327    1/30/2014      17      391        32              70              21
328    1/30/2014      17       81         0               6               0
329   10/17/2013      17       14         2              30               8
330    8/15/2013      17      674       168             108             192
331    6/24/2013      17      267        42             309              55
332    6/13/2013      17      224         2              25               7
333    4/23/2013      17     1239        17             413              23
334    4/15/2013      17      412        22             132              59
335    2/14/2013      17     1205         0             235              19
336    1/29/2013      17      304        98             230             150
337   12/19/2012      17       76         3              31               4
338   10/30/2012      17     1004        12             145              32
339   10/23/2012      17      584        44             212              46
340    9/28/2012      17      422         7             238              69
341    10/9/2012      17     1170        48             320              42
342    11/8/2012      17      269       129             495             182
343    4/17/2014      18       26         0               8               0
344    3/18/2014      18       28         0               9               3
345    3/18/2014      18      613        22             319              33
346    2/25/2014      18      163        23             424              27
347    2/25/2014      18      163        23             424              27
348   11/12/2013      18       22         1              11               0
349   10/13/2013      18      279       172              74              38
350   10/10/2013      18        2         0               8               2
351    7/21/2013      18      113        61             204              34
352    5/20/2013      18       70        54             109              80
353    5/18/2013      18      267       140             599              34
354     7/4/2013      18      261        23              73               4
355     3/3/2013      18      856        61             570              40
356    7/12/2012      18      454       194             106              31
357   10/27/2012      18      546        91             410             119
358    9/15/2012      18       96         1              42              12
359     7/9/2012      18      452        18             102              16
360    6/17/2014      19       20         0              14               7
361    5/29/2014      19      658        80             483             123
362    5/23/2014      19      451         0              39               0
363    12/5/2014      19      395       183             565             166
364    3/19/2014      19      688        14             309             201
365     1/3/2014      19     1035       134             670              25
366    2/15/2014      19      464       151             292              65
367   12/23/2013      19      365        32             117              34
368    4/12/2013      19      181        21              69              39
369   10/25/2013      19      331       197             170              58
370    9/18/2013      19      256        34             103              90
371    8/17/2013      19      836       185             575              24
372     8/7/2013      19        2         6              28              13
373     6/6/2013      19       14         0              24               3
374     6/6/2013      19       14         0              24               3
375    3/29/2013      19      233         0              23               0
376   12/12/2012      19      378         0             101               0
377    7/12/2012      19       12         0               4               0
378    9/23/2012      19      345        25             501              63
379    4/18/2014      20       30         0              11               0
380     8/2/2014      20        9         0               3               0
381    1/28/2014      20      172         3             115              16
382    1/25/2014      20      279         0              18               0
383   11/27/2013      20      881        38             319              16
384   10/19/2013      20       19         0               9               0
385     7/5/2013      20      305         3              27               4
386     7/3/2013      20        6         4               7               4
387    2/28/2013      20      778       178             689              41
388    12/2/2013      20       69         8              26              12
389    12/2/2013      20       69         8              26              12
390    1/29/2013      20       79         7              58               6
391    1/17/2013      20      344       189             482              50
392    11/1/2013      20     1184       102             673              52
393   11/20/2012      20      490         0             184              10
394    5/11/2012      20     1349        16             249              43
395    3/11/2012      20      153         4              56               0
396    8/31/2012      20       84         5              38             150
397    8/31/2012      20       84         5              38             150
398    12/8/2012      20     1000       155             379             224
399    12/4/2014      21       52         0               9               0
400    12/4/2014      21       52         0               9               0
401     6/4/2014      21      301        11              61               4
402    3/19/2014      21       15         0               2               0
403     6/2/2014      21      519        50             167             130
404    5/10/2013      21      238       115             215             169
405    9/28/2013      21      620        26             195              34
406    9/28/2013      21      620        26             195              34
407    7/29/2013      21      572        19             286              50
408    6/29/2013      21      380        98             733             110
409    6/17/2013      21      443         5              71              21
410     8/6/2013      21      620        16             165               0
411     8/6/2013      21      620        16             165               0
412    5/26/2013      21      252        98             827             219
413    3/17/2013      21      796        14             590              38
414    1/21/2013      21      410         0              59              19
415     7/9/2012      21      507        19             364              25
416    8/26/2012      21      125        17              52               3
417     4/8/2012      21       55        16            1622              17
418    5/29/2014      22      327         9             125              25
419    4/30/2014      22       15         0               6               0
420    11/4/2014      22      397        19              69              12
421    11/4/2014      22      397        19              69              12
422     7/4/2014      22      760        38             104              50
423     5/4/2014      22       29         1               9               2
424    12/3/2014      22      105         0               9               2
425    9/10/2013      22     1126        28             211              37
426    6/25/2013      22      280         0              18               0
427    4/13/2013      22       39         1              22               3
428    6/12/2012      22      108         1              28              13
429    6/12/2012      22      108         1              28              13
430    6/16/2014      23       16         1               2               0
431     3/6/2014      23      641         7              56               0
432    5/17/2014      23        8         0               5               7
433    10/3/2014      23      102         9              49              24
434    2/17/2014      23     1000        19             711             125
435    2/17/2014      23     1000        19             711             125
436     5/2/2014      23      820        57             242              45
437    1/27/2014      23       86        12              75              33
438    1/27/2014      23       86        12              75              33
439    1/14/2014      23     1074         0              69               0
440   10/16/2013      23       13         6               7               0
441    2/10/2013      23      217        77             373             111
442    11/7/2013      23      352         0              27              10
443     2/6/2013      23        9        14              18               8
444     1/6/2013      23      240        90             216              63
445    1/17/2013      23      412         5             119              38
446    10/1/2013      23      124        83             267              85
447    10/1/2013      23      124        83             267              85
448    3/12/2012      23      736       114             279              82
449   11/24/2012      23     1006        22             115              59
450   11/24/2012      23     1006        22             115              59
451   10/26/2012      23        8         4               5              15
452    6/20/2014      24      217        38             350             111
453     1/5/2014      24       23         2              17               2
454    1/19/2014      24       22         1               9               0
455     9/1/2014      24      580         6              58               8
456   12/29/2013      24       10         0              10               3
457   12/29/2013      24       10         0              10               3
458   12/26/2013      24      112        19              21              16
459   12/26/2013      24      112        19              21              16
460    8/12/2013      24       11         0               4               0
461    9/27/2013      24        8         0               3               0
462    9/20/2013      24       88        39              54              64
463    8/31/2013      24      182         4              33               0
464    8/23/2013      24      227        23             389              42
465    8/23/2013      24      227        23             389              42
466    8/19/2013      24      290        59             177              77
467    7/24/2013      24      284        16             160              84
468     8/6/2013      24      173         2              39               3
469    2/16/2013      24      656        38             161              62
470    2/16/2013      24      656        38             161              62
471    1/25/2013      24      953         0              71               0
472    1/25/2013      24      953         0              71               0
473    3/11/2012      24        8         0               8               0
474    12/9/2012      24       37         5              56              12
475    8/18/2012      24      163         0             480               0
476     7/5/2014      25       69         2              15               2
477    4/21/2014      25       56         7              48              10
478    4/13/2014      25       38         0               2               0
479    4/13/2014      25       38         0               2               0
480    3/23/2014      25        8         2               4               0
481    10/3/2014      25      626         0              70               0
482    1/28/2014      25      112         0               6               2
483    1/24/2014      25      547        99             812             151
484    1/22/2014      25      507        93             520             242
485   12/15/2013      25       35         1              16               0
486    9/11/2013      25      795         0             545              95
487   11/10/2013      25       56         0               9               0
488    9/19/2013      25      895        10             101              13
489    8/25/2013      25      899         0             101               0
490    5/28/2013      25      178         4              26               8
491    5/16/2013      25       14         0               3               0
492     1/4/2013      25      265       199             303             234
493     1/4/2013      25      265       199             303             234
494    3/27/2013      25      349        16             144              28
495     8/2/2013      25      848       154             323             201
496   12/12/2012      25      817       183             797             106
497    9/20/2012      25      962        12             194              16
498    12/3/2014      26      212       123             177              15
499   12/30/2013      26      347         0              35               4
500    2/11/2013      26       73         0              13               0
501    8/21/2013      26      426        49             127             111
502    6/28/2013      26       48         9              45               3
503     4/6/2013      26     1076        68             103              29
504    5/31/2013      26       36         2              42              20
505    3/27/2013      26      733         9             180              12
506     6/3/2013      26       39         2              25               4
507    2/18/2013      26      523         7             134              37
508    9/26/2012      26     1083       108             649             253
509    12/9/2012      26       98         0             106              49
510    12/9/2012      26       98         0             106              49
511    8/30/2012      26       99         2              11               4
512    8/19/2012      26      138        15              35              25
513     9/8/2012      26      509       133             497              78
514    6/25/2014      27      527         0              21               0
515     2/5/2014      27      340        21             134             258
516     2/5/2014      27      340        21             134             258
517    4/29/2014      27     1184        32             352              21
518    2/15/2014      27       10        24              15              13
519     2/2/2014      27      434       137             400              45
520     2/2/2014      27      434       137             400              45
521     5/1/2014      27      102         1              15               2
522    5/12/2013      27      208        17              76              36
523   11/25/2013      27      438        66             400              12
524   11/18/2013      27      125        16              98             134
525    9/28/2013      27     1308         0             396              23
526    10/9/2013      27       64         1              21               0
527     1/8/2013      27      200         5              44               0
528     1/5/2013      27     1001        44             107              58
529    2/21/2013      27       36         0               2               0
530    2/14/2013      27      673         0             199              37
531    1/31/2013      27     1050        12             144               0
532    9/12/2012      27      787        20             204               0
533   11/17/2012      27      833        33             549             151
534    1/10/2012      27      284         0              52               8
535    9/29/2012      27      605        91             399               0
536     9/6/2014      28      227       151             573              98
537     5/4/2014      28      800         0             297               0
538     2/4/2014      28      861        31             558              62
539    3/29/2014      28       62         1              57              19
540    3/25/2014      28       23         0               9               0
541    3/24/2014      28       11         0              16               7
542     2/2/2014      28       25         0              22               2
543    1/23/2014      28       22         2              31               7
544   10/21/2013      28      161        28             136              32
545    9/16/2013      28      315         4              62              41
546    12/9/2013      28      522         0             522             227
547    10/9/2013      28      712        50             420              65
548    7/15/2013      28       33         0               5               0
549    3/30/2013      28      342        32             230              34
550     9/3/2013      28       22         2              12               0
551     9/2/2013      28      359        35             314              93
552     2/1/2013      28      324        48             186              39
553   12/14/2012      28      233        20              57               8
554   10/17/2012      28      370         9              92               6
555    9/21/2012      28     1001        17             572              93
556     3/9/2012      28      173         8             107               7
557    12/6/2014      29       10         3               3               0
558     7/6/2014      29        8         4              20               6
559     3/6/2014      29      138        39              63              55
560    12/5/2014      29      245        19             125              37
561    4/30/2014      29       68       129             396             188
562     9/4/2014      29      434        22             388             104
563    2/28/2014      29      631        43             239             128
564    2/13/2014      29     1156       120             915              94
565    2/13/2014      29     1156       120             915              94
566    6/12/2013      29      398        40             367             119
567   11/17/2013      29      230        35              75              63
568   10/20/2013      29      122        21              43              25
569    6/20/2013      29      386        23              95              54
570    6/17/2013      29      379         6             157              25
571    11/6/2013      29      243        11             119              10
572     8/5/2013      29      358       108             413             141
573     8/5/2013      29      358       108             413             141
574    3/17/2013      29      258       107             291              84
575    11/3/2013      29       65        36              74              38
576    1/16/2013      29      846        84             352              91
577     5/1/2013      29      724        17             143               0
578    3/12/2012      29      770        29             890             250
579    7/11/2012      29      815        10             239              28
580    12/8/2012      29      819         0              72              12
581    6/16/2014      30       46         0              40               3
582    5/22/2014      30        5         3              11              12
583    5/22/2014      30        5         3              11              12
584    3/21/2014      30      479         5              82               7
585    10/3/2014      30      938       142             754             159
586     9/3/2014      30      283        17             372             138
587    11/2/2014      30      909        12             278               0
588   11/17/2013      30      156        29              56              30
589   10/30/2013      30      213         2              44               0
590   10/20/2013      30      123         1              26               2
591    2/10/2013      30      154         0              50               6
592    2/10/2013      30      154         0              50               6
593    8/28/2013      30      940        44             396               0
594    7/30/2013      30       51         1               7               2
595     6/7/2013      30      141        11             114              15
596    5/30/2013      30      160        15             196              15
597     5/4/2013      30      557       129             761              29
598     2/4/2013      30      196         0             512              33
599     2/4/2013      30      295        35             482             121
600    3/20/2013      30      231         7             137               4
601    3/20/2013      30      231         7             137               4
602    3/14/2013      30       38         4              22               4
603    2/14/2013      30       29        12              59              19
604    2/14/2013      30       29        12              59              19
605    2/14/2013      30       29        12              59              19
606    1/22/2013      30      420        15             186             151
607    9/11/2012      30        8         4              12              15
608     8/9/2012      30      229        27              71              13
609    8/25/2012      30     1230         0             396             232
610    8/14/2012      30       91        64             128              65
611    6/17/2014      31     1060        61             835              80
612     5/6/2014      31       11         0               5               0
613     2/5/2014      31      121        24             124              24
614    1/23/2014      31        8         1               5               0
615   11/19/2013      31       46         7              59               2
616     3/6/2013      31       85         1              16               2
617    3/18/2013      31        5         6              10               6
618    2/13/2013      31      302        29             131              32
619   12/21/2012      31      728        17             133              11
620   11/23/2012      31        9         0               6               4
621   11/23/2012      31        9         0               6               4
622   10/10/2012      31      110         0               5               2
623    1/10/2012      31      711        28             142              49
624    9/22/2012      31      778        44             499              95
625     7/8/2012      31      995       112             417              42
626    4/20/2014      32      493       183             352             184
627   12/24/2013      32       23        17              23              43
628   12/14/2013      32      704       129             853             120
629    4/10/2013      32      415         5             124              15
630     9/8/2013      32      241         0              12               0
631    7/25/2013      32       34        11             137             179
632     3/7/2013      32     1050       178             555              77
633    6/20/2013      32      135        46              92              65
634    6/20/2013      32      135        46              92              65
635     8/5/2013      32       76        10              56               3
636     6/5/2013      32       50         4              44              10
637    4/29/2013      32      384        60             364             119
638    4/18/2013      32      275         0              86              10
639     7/1/2013      32      254        10              44              30
640   10/11/2012      32      957        40             175             158
641    7/11/2012      32      293         6              23              13
642   10/31/2012      32      777       129             573             216
643     2/8/2012      32       63       151             137             153
644    6/25/2014      33       21        12              12               0
645    4/24/2014      33      245        16             223              21
646    4/24/2014      33      245        16             223              21
647    3/30/2014      33       12         0               1               0
648    3/24/2014      33       24         4              22               0
649     8/3/2014      33      173        26             255              35
650   12/24/2013      33      754       160             625              63
651    7/16/2013      33       11         0               7               3
652    2/22/2013      33      822       114             108             179
653    1/20/2013      33      219         3              60              12
654    1/13/2013      33      373        14              83               6
655   12/25/2012      33       15         0              12               7
656   12/25/2012      33       15         0              12               7
657   11/12/2012      33     1171        43             219              19
658    12/9/2012      33      371       159             194              58
659    6/27/2014      34       23         0               8               6
660    3/17/2014      34      801         0              80               0
661    3/16/2014      34       20         4              10               6
662    1/23/2014      34       23         2              11               3
663   11/12/2013      34       48         0               2               0
664    3/11/2013      34      244         8              32               7
665    6/10/2013      34      562        58             168              43
666    4/10/2013      34       79         1              31               4
667    4/10/2013      34       79         1              31               4
668    9/15/2013      34        4         3               7               0
669    8/20/2013      34      707        20             171              65
670     2/8/2013      34      356         0             107              19
671     2/8/2013      34      356         0             107              19
672    7/25/2013      34      743        19             181              12
673   11/13/2012      34      235        65             164              50
674    8/31/2012      34      393         5             136               7
675    8/27/2012      34      721       111             925              97
676    8/22/2012      34       28         9              37              12
677    8/16/2012      34      896        10             101              13
678     8/5/2014      35      217        76             690              50
679     4/4/2014      35       48        13              57              24
680    12/3/2014      35      482       147             509             104
681    2/15/2014      35      167         2              89               0
682    12/2/2014      35      879       143             797             106
683    9/22/2013      35      367         4              51               6
684    8/19/2013      35      693        21             925              31
685    7/23/2013      35      691         7              61              10
686    3/17/2013      35      231       161             215             171
687   12/22/2012      35      816        66             549             216
688   12/16/2012      35       19         1              17               2
689   10/13/2012      35       24         0               8               0
690    9/14/2012      35      483        74             114             169
691     8/9/2012      35      595        71             153             120
692    8/20/2012      35     1181        26             120              17
693    4/20/2014      36      244        51             270             101
694    3/23/2014      36       48         0              14               0
695     7/1/2014      36      491        48             231             112
696    1/12/2013      36       38         0              12               3
697   11/29/2013      36      254         6              71               4
698    9/26/2013      36      755       144             562             104
699    8/31/2013      36      410       112             420               0
700    8/31/2013      36      410       112             420               0
701    3/19/2013      36       21         1               9               7
702    2/25/2013      36      671        47             655             145
703    1/21/2013      36     1009       181             104             202
704   10/24/2012      36      972        19             595             180
705   10/18/2012      36      598        16             141              32
706     8/8/2012      36      139        13              78              20
707    7/31/2012      36      488        21             238              56
708    5/19/2014      37       15         0               8               4
709    5/19/2014      37       15         0               8               4
710    5/19/2014      37       15         0               8               4
711    5/19/2014      37       15         0               8               4
712     3/5/2014      37      605        10             345              84
713   12/31/2013      37      702        17             151               0
714    7/12/2013      37      239         7             119               4
715    2/12/2013      37        5         1               5              10
716   10/29/2013      37      183         2              64               7
717    7/22/2013      37      771        51             154              54
718    6/22/2013      37       83         2             101              64
719     6/6/2013      37      170         6              97              24
720     4/6/2013      37       39         1               9               2
721     9/5/2013      37       33         0               5               0
722    4/21/2013      37      450       133             951             173
723    11/4/2013      37       51         2               7               0
724    1/17/2013      37       59         0              11               4
725   12/30/2012      37     1063        89             102              16
726    8/17/2012      37      789         0             133               0
727     6/8/2012      37       63        10              83               7
728    4/13/2014      38      228        19             130               4
729    3/22/2014      38      512         0              83               0
730     8/3/2014      38       11         1               6               2
731   12/16/2013      38      275        59             107              69
732   10/28/2013      38      452        20             514              13
733     9/9/2013      38      355        30             177              90
734     3/7/2013      38      512        53              98              81
735     6/5/2013      38      204        97              97              21
736    2/18/2013      38      235         6              45               8
737     6/2/2013      38       33         6              40               3
738    1/16/2013      38      239         3             141               0
739     8/1/2013      38       11         0               5               0
740   11/28/2012      38      252         3              42               4
741    6/11/2012      38      556        54             845             202
742    6/11/2012      38      556        54             845             202
743    12/9/2012      38      317        46             247             151
744    10/9/2012      38      158        19             288              25
745     8/9/2012      38      897        23             207              15
746    8/28/2012      38      167        13             180              86
747    6/27/2014      39       48        58              68              16
748     8/5/2014      39       42         0              17               0
749    3/20/2014      39       97         3              66              12
750    6/11/2013      39        9         1               5               2
751    9/16/2013      39       56         0              11               0
752     3/3/2013      39      229         7             137               4
753    12/2/2013      39      380         0              47               6
754    8/11/2012      39      826        50             317              50
755   12/10/2012      39      513         7             133              46
756     3/8/2012      39      313        15              47              20
757     3/8/2012      39      313        15              47              20
758    5/16/2014      40      760        40             480               0
759    4/25/2014      40       18         0               6               3
760    3/20/2014      40       29         0               8               2
761   12/17/2013      40      329        35             222             130
762   11/13/2013      40      703       102             601               0
763    7/11/2013      40      571        12             523              63
764     6/9/2013      40       40        15              15              17
765     6/7/2013      40       28         0              11               0
766    6/18/2013      40        6         2              15               6
767    5/20/2013      40     1218        16             272             104
768    5/20/2013      40     1218        16             272             104
769    2/18/2013      40      478         0             193             110
770   11/18/2012      40      110         5             137              26
771   10/11/2012      40     1332        17             311              23
772   10/15/2012      40       84         3              61               2
773   12/10/2012      40     1032       105             779             137
774     8/9/2012      40      296        13             104              11
775     6/9/2012      40        8         4              15               3
776    6/14/2014      41      674        62             134               0
777     7/4/2014      41      635       114             254             132
778     7/4/2014      41      635       114             254             132
779    3/23/2014      41      399        27             159              58
780    1/25/2014      41      294       142             218             164
781    1/23/2014      41      913        26             376              17
782    1/17/2014      41      224       155             155             192
783     7/2/2013      41      731        60             353              78
784   10/31/2012      41      281         7              84              15
785   12/10/2012      41       19         0              35               6
786    9/24/2012      41      489         6             152               8
787     8/8/2012      41       86         2              73              69
788    5/23/2014      42      721         0             152             119
789    4/24/2014      42      551       137             792             179
790    4/14/2014      42        6         5               5               8
791     8/4/2014      42      471         0             510              99
792     5/2/2014      42      519        71             860              93
793   12/31/2013      42      140         3              29               4
794   12/20/2013      42      176        29             818               0
795    9/13/2013      42       51        12              49              17
796     2/7/2013      42       31         0               6               0
797     5/5/2013      42      421         5              90               0
798    10/3/2013      42      534         5              47               0
799     6/2/2013      42      768        44             561              77
800   11/13/2012      42      652        48             350              94
801   10/29/2012      42      235         0             235              19
802   12/10/2012      42      594        51             631              72
803    9/18/2012      42      174        77             203               6
804    5/26/2014      43       24         0               2               0
805    5/23/2014      43     1142        29             249              38
806    4/13/2014      43       80        15              93              20
807    3/30/2014      43       41         1               6               2
808    3/24/2014      43      105         0              10               0
809    1/13/2014      43      724        74             929              97
810   11/19/2013      43     1181       107             199              39
811   11/19/2013      43     1181       107             199              39
812    8/21/2013      43      284         3              84               4
813     5/7/2013      43       14         0               3               0
814     6/4/2013      43      604        26             470             123
815    3/14/2013      43       16         2              18               2
816    1/13/2013      43       65         4              16               0
817    1/13/2013      43       65         4              16               0
818     6/9/2012      43      100         2              16               2
819    3/18/2014      44       21         0               3               0
820    2/26/2014      44       26         1              16               2
821    1/12/2013      44      207        26             447              75
822    1/12/2013      44      207        26             447              75
823   12/10/2013      44      513        14             154              19
824    5/14/2013      44      299         5             201              21
825    3/28/2013      44      525       147             112             219
826     5/1/2013      44      155         1              25               0
827    9/15/2012      44      606        24             974             197
828    8/24/2012      44      159         0             120               0
829    8/17/2012      44      676       161             426             210
830    2/23/2014      45       68        28              39              16
831    10/1/2014      45       19         5              12              10
832   11/29/2013      45       22         2              14               0
833    7/19/2013      45      494         5              82               7
834    6/23/2013      45      353        61             753              40
835    5/22/2013      45     1253         0             447              23
836    2/13/2013      45      443        10              75               0
837     6/2/2013      45      182         4              33               0
838    1/15/2013      45      521       168             706              80
839    12/1/2013      45      395        15             263              60
840   11/11/2012      45      977        12             253              16
841   11/11/2012      45      977        12             253              16
842    6/13/2014      46      603        45             207              36
843     2/6/2014      46       51         0              16               0
844    4/29/2014      46      967         0             617              43
845    2/24/2014      46        7         5              39              17
846    3/11/2013      46      273        11             178              62
847    2/11/2013      46      277       162             305             173
848    2/11/2013      46      425       115             292              23
849    2/11/2013      46      425       115             292              23
850    1/11/2013      46       35         4              17               7
851   10/25/2013      46     1394        22             708              89
852    11/9/2013      46       40         2              15               8
853    11/9/2013      46       40         2              15               8
854    8/16/2013      46      171         0              11               0
855    6/13/2013      46      709        43             182              42
856    5/22/2013      46      554        41             215              11
857    4/25/2013      46      191         9              97               0
858     1/4/2013      46      230        14             156              82
859    3/29/2013      46       11         1               2               2
860    3/29/2013      46       11         1               2               2
861    3/26/2013      46      131         0              16               2
862    2/18/2013      46     1073         0             250             153
863    2/17/2013      46       56        10              92              19
864     4/2/2013      46      652         8             158              21
865     2/2/2013      46      157        43             127              68
866   12/25/2012      46      226        22             133              41
867   10/19/2012      46      962        61             921              52
868   10/13/2012      46      186        36             234              86
869    6/26/2014      47      483        84             398             205
870    6/26/2014      47      483        84             398             205
871    6/25/2014      47       97        12              84              13
872    5/26/2014      47      303         0             280              60
873     2/5/2014      47       18         0               9               0
874   10/23/2013      47      178         3              85              71
875   10/17/2013      47     1276        24             746              94
876    9/30/2013      47      240       132             445             250
877    11/9/2013      47      130        30             168              20
878    8/28/2013      47      614        16             132              43
879    4/14/2013      47     1288        20             613              80
880    3/27/2013      47      563        76             384              84
881   12/10/2012      47       43         2              27               0
882     7/6/2014      48      189         2              29               3
883    5/19/2014      48        6         3              12               6
884     7/5/2014      48       67         4              32              17
885     7/5/2014      48       67         4              32              17
886    10/1/2014      48      240        67             500             199
887    10/1/2014      48      240        67             500             199
888   11/29/2013      48       95        11              35               0
889   10/13/2013      48      210         0               6               0
890    1/10/2013      48      344        35             178              15
891    8/16/2013      48      179         2              64              38
892    7/16/2013      48      130         0              16               0
893     9/7/2013      48      306         5             109              21
894     2/6/2013      48      189        10             253              56
895    4/27/2013      48      267         3              30               4
896    4/13/2013      48       14         0               2               0
897    4/13/2013      48       14         0               2               0
898     8/3/2013      48      505        72             270              36
899     8/3/2013      48      505        72             270              36
900    2/25/2013      48      183         5              65               3
901    1/13/2013      48      758        12             385              33
902    1/13/2013      48      758        12             385              33
903     8/1/2013      48      505       137             401             104
904   11/14/2012      48      824        32             162              42
905   10/16/2012      48      918        21             118              13
906   10/16/2012      48      918        21             118              13
907    8/20/2012      48      980        37             265              35
908    6/22/2014      49      526        35             214              69
909    6/22/2014      49       66         0              16               0
910    12/5/2014      49      151        81              86             168
911    2/23/2014      49       13         3              17               7
912    8/10/2013      49      690       117             499              76
913    12/9/2013      49        8         1               7               2
914    8/28/2013      49        6         1              10               0
915    7/30/2013      49      202         2              46               3
916     5/7/2013      49      792         0             275              45
917    6/24/2013      49      545         7             114              37
918    6/21/2013      49       31         0               7               2
919    6/21/2013      49       31         0               7               2
920    12/2/2013      49      280         7              81              20
921    1/23/2013      49      109        18              16              24
922   12/16/2012      49      382       138              65              60
923   10/21/2012      49      664        58              83              32
924    4/10/2012      49       27         2              10               0
925    4/10/2012      49       27         2              10               0
926    9/20/2012      49       13         4              20               0
927     8/8/2012      49      132         0              16               0
928     7/8/2012      49       88         3              21               4
929    6/29/2014      50      448         4              34               6
930     9/6/2014      50      129         0              21               0
931    1/31/2014      50      371        32             189               0
932    1/21/2014      50      750        71             174              13
933   12/28/2013      50       10         6              11               0
934    9/20/2013      50       40         1              40               4
935    11/8/2013      50      194        55             134              15
936     8/8/2013      50       99         4              32              37
937    5/17/2013      50      223         2              31               0
938    5/13/2013      50       81        18             113              47
939    4/22/2013      50       57         2              51               4
940     8/4/2013      50      340       108             185             130
941    3/29/2013      50      336       123             274              46
942    9/11/2012      50      407        53             221              58
943    9/11/2012      50       51         4              50              12
944    12/9/2012      50       90        17              97              15
945     2/9/2012      50      423       184             368              13
946     2/8/2012      50      378        97             259             197
947    6/24/2014      51       61         0               3               0
948     8/6/2014      51       70         0              16               0
949    5/24/2014      51      173        13             131              32
950    11/5/2014      51        3         2              10               3
951   10/18/2013      51      595        23             123              10
952   10/18/2013      51      595        23             123              10
953    9/17/2013      51       82        33              54              71
954    8/14/2013      51      220         0              33               3
955    7/20/2013      51      517        12              54              16
956    7/16/2013      51      615        28             259              12
957    10/6/2013      51      480        86             249              75
958    11/5/2013      51      398        61             265             138
959    11/5/2013      51      398        61             265             138
960    4/16/2013      51      752       122             476              39
961    3/19/2013      51      464         5              64               7
962     7/3/2013      51      154        20              66               0
963    1/31/2013      51       23         0              26               7
964   12/24/2012      51       53         5              19               2
965   12/22/2012      51      741        68             689             224
966   10/27/2012      51      230        48             214              13
967    6/18/2014      52      456         4              24               0
968    5/25/2014      52      143        15              60              24
969    10/5/2014      52       31         0               6               2
970    10/3/2014      52      625        35             169              58
971    1/21/2014      52      407       114             445             181
972    7/11/2013      52      254         7             108              20
973    8/10/2013      52      269        15              69              15
974    8/10/2013      52      269        15              69              15
975    5/26/2013      52      301         7              74              10
976    10/5/2013      52       10         0               3               0
977    5/12/2012      52      258       105             239             237
978    8/19/2012      52       45        12              52              25
979     3/8/2012      52     1215        33             249              64
980    4/16/2014      53       36         0              12               2
981    1/21/2014      53      106        27              68              52
982   12/30/2013      53      871       111             704             145
983   11/12/2013      53      368        32             639              13
984   11/15/2013      53      233         2              53               3
985   10/25/2013      53       11        12              35               3
986    1/10/2013      53     1193        33             281             129
987    5/23/2013      53      441        35              83               7
988    5/22/2013      53       87         3              25               3
989    11/5/2013      53       20         6              43              19
990     5/4/2013      53       14        10              29               4
991    2/15/2013      53      110         5              59               7
992     1/2/2013      53      437         8             206             160
993     1/2/2013      53      437         8             206             160
994    9/28/2012      53      965        69             279              54
995    9/27/2012      53      483         0             108               0
996    8/13/2012      53      204         5              39              17
997     7/6/2014      54      510       120             550             156
998     2/6/2014      54      574         8             216              21
999     5/4/2014      54       85         0               3               0
1000    5/4/2014      54      332       194             377             149
1001    5/4/2014      54      332       194             377             149
1002   3/29/2014      54      642        14              49               0
1003   3/29/2014      54      642        14              49               0
1004   2/16/2014      54       35         0               4               0
1005   2/13/2014      54        2         3              10              11
1006   2/13/2014      54        2         3              10              11
1007    3/1/2014      54       30         9              12               2
1008   9/12/2013      54       46         0              30              12
1009  10/25/2013      54      587        54             348              71
1010  10/25/2013      54      587        54             348              71
1011  10/24/2013      54      354        21             311             167
1012  10/20/2013      54        9         0              16               6
1013   9/25/2013      54       97         4              44               6
1014   11/8/2013      54       26         3              13               2
1015    8/6/2013      54      376        53             462             168
1016    3/6/2013      54      390        22             323             104
1017    3/6/2013      54      390        22             323             104
1018   5/29/2013      54      476        75             162              29
1019    6/5/2013      54      121        62              90              68
1020   3/31/2013      54       18         7              34              10
1021    2/3/2013      54      627        91             597             159
1022    2/1/2013      54       12         6              20              30
1023  12/18/2012      54      165         3             147               4
1024   4/11/2012      54      806        80             161             120
1025   2/11/2012      54      763        29             138              76
1026    8/9/2012      54      205        20              47              23
1027   6/23/2014      55     1003        34             536             134
1028    9/6/2014      55       23         0              11               3
1029   5/24/2014      55      790        19             133              12
1030   4/20/2014      55       10         0              11              17
1031   8/29/2013      55       40         0              19               2
1032   8/20/2013      55       98         1              17               0
1033   12/7/2013      55       12         1               3               0
1034   1/19/2013      55       62         0              22               3
1035   1/19/2013      55     1148         0              60               0
1036  11/19/2012      55      984        51             432             180
1037  10/22/2012      55      172        41              86              45
1038   9/26/2012      55      368        24              68              38
1039   9/26/2012      55      368        24              68              38
1040   9/22/2012      55      941        14             397              76
1041   8/22/2012      55      241        45             604              34
1042   8/16/2012      55      112        10             107              30
1043   11/8/2012      55      799        12             375              16
1044   10/6/2014      56      406         0              30               0
1045   10/6/2014      56      406         0              30               0
1046    5/5/2014      56       95        14              64               2
1047    2/5/2014      56      709        93             374             104
1048    2/5/2014      56      709        93             374             104
1049   4/19/2014      56       90        67             165              30
1050   4/18/2014      56      128         0              16               0
1051   3/23/2014      56        8         0              14               2
1052   2/16/2014      56      261        42             144              55
1053    6/2/2014      56     1050        14             322               0
1054  12/12/2013      56      298         7              68               4
1055  11/14/2013      56      377        10             540              80
1056   6/10/2013      56      919         0             505              99
1057   6/10/2013      56      919         0             505              99
1058   2/10/2013      56       25         6              25               6
1059   8/18/2013      56      163         2              40               8
1060    7/8/2013      56      162        50             100              55
1061    7/8/2013      56      162        50             100              55
1062    4/6/2013      56      198        18             252              32
1063    3/6/2013      56      215        63             507             231
1064   11/5/2013      56      112        17              44              34
1065   11/5/2013      56      112        17              44              34
1066   3/22/2013      56      198         2              43               0
1067    3/3/2013      56     1493        86             454             112
1068   2/26/2013      56     1090        12              96              16
1069    2/2/2013      56      295       106             271              75
1070   1/17/2013      56      216       162             224             101
1071   5/12/2012      56        3         2              12               0
1072   9/18/2012      56      536        27             590              38
1073   12/9/2012      56     1149        71             449              69
1074   8/30/2012      56       70         0              11               2
1075   8/17/2012      56      244        15             108               4
1076   8/17/2012      56      244        15             108               4
1077   5/13/2014      57      586        66             653              17
1078   4/29/2014      57       77         8              44              10
1079    2/2/2014      57      539        30              92              80
1080   1/19/2014      57      200       193             100              46
1081  12/12/2013      57      794       115             243             150
1082   8/30/2013      57       23         1               6               0
1083    9/8/2013      57      387        84             141              73
1084   7/29/2013      57      774        70             118             182
1085   12/6/2013      57      328         9             124              12
1086   12/6/2013      57      328         9             124              12
1087   12/5/2013      57      901        31             345              75
1088   12/5/2013      57      901        31             345              75
1089   12/5/2013      57      901        31             345              75
1090    8/5/2013      57      866        21             151              28
1091    1/3/2013      57      308        85             137             102
1092   2/16/2013      57      753        43             226              69
1093  12/22/2012      57     1048         0             217               0
1094  10/29/2012      57      960        28             183             220
1095   9/10/2012      57      888         0              57               0
1096   8/17/2012      57       31         3              31               2
1097    4/5/2014      58       19         6              20               0
1098   4/21/2014      58        7         3              10               8
1099   1/27/2014      58       32         0               5               0
1100   1/17/2014      58      654         7              92               0
1101  10/11/2013      58      204        34             204             172
1102   6/11/2013      58      707        21             250              85
1103   8/24/2013      58      499       149             815             173
1104   4/15/2013      58      172        73              93              95
1105   1/17/2013      58      576       172             961             125
1106  12/19/2012      58      471       102             125             212
1107   7/11/2012      58      184        23             446              30
1108    4/9/2012      58      635        88             546             172
1109   4/24/2014      59      295        21              78              39
1110   12/3/2014      59      576         7             115              19
1111  10/22/2013      59      381        35             172              56
1112   9/16/2013      59       16         3              25               6
1113   7/29/2013      59       44         4              21               6
1114   7/29/2013      59       44         4              21               6
1115   7/14/2013      59      371        17             238              23
1116    6/7/2013      59      735        40             183              52
1117   4/20/2013      59      386       172             183             185
1118   1/16/2013      59      548        31             422               0
1119  10/16/2012      59     1000         0              76               0
1120   12/5/2014      60      483        72             567              94
1121   11/5/2014      60      611        76             749              59
1122   3/30/2014      60        7        10              17               8
1123  12/30/2013      60       19         7              19               0
1124   9/12/2013      60      265       138             553             224
1125  11/10/2013      60      292         3              77              10
1126  11/10/2013      60      292         3              77              10
1127   9/22/2013      60      161         0             253             199
1128   11/9/2013      60      713         0             264             120
1129   8/20/2013      60      593        30              91              29
1130   7/18/2013      60       26         2              19              10
1131   4/23/2013      60      448        71             951              40
1132   3/30/2013      60     1311         0             359              46
1133   2/27/2013      60      526        80             553             123
1134   11/2/2013      60       86         4              56               2
1135  12/24/2012      60      547         7             140               0
1136   1/10/2012      60     1166         0              48               0
1137   9/29/2012      60     1486        55             278              49
1138    7/8/2012      60      349         4              78               6
1139    9/3/2014      61      365         3              15               4
1140   12/1/2014      61      349         7              35               0
1141    6/1/2014      61      515        47             267              62
1142  12/17/2013      61       88        39              78              58
1143   9/16/2013      61       10         1               7               0
1144    7/7/2013      61       53         1              34               2
1145   6/28/2013      61      606         7             155              10
1146   5/22/2013      61     1492        38             287              50
1147   5/22/2013      61     1492        38             287              50
1148   11/5/2013      61       78         0              11               0
1149   11/3/2013      61      356        80             329             138
1150   2/17/2013      61      533        10             217             198
1151   11/2/2013      61      216         9              57              20
1152    6/2/2013      61      183        33             493              59
1153  12/15/2012      61      196        25             607              67
1154  11/29/2012      61       91        65              52              10
1155  11/26/2012      61      575        80             428             208
1156  11/22/2012      61      726        53             363             123
1157    1/8/2012      61      833        80             363              52
1158   10/6/2014      62       12         2              20               3
1159   5/29/2014      62      938        19             843              25
1160   3/30/2014      62       56         0              14               0
1161   3/30/2014      62       56         0              14               0
1162  11/23/2013      62      445        25             706              80
1163   7/27/2013      62     1259       172             815              97
1164   6/13/2013      62      248         3              81               4
1165   11/5/2013      62      284         0              55               0
1166    2/5/2013      62      239        13             143              45
1167    4/3/2013      62     1111        24             790             160
1168    4/3/2013      62     1111        24             790             160
1169   2/13/2013      62       52        12              50               4
1170   1/27/2013      62       25         6              16              20
1171   1/19/2013      62       28        23              29              29
1172    2/1/2013      62      614        35             160              58
1173  11/19/2012      62      710        15              30              20
1174  10/29/2012      62      322        53             899              34
1175   8/23/2012      62     1241         0              80               0
1176   5/22/2014      63      529         0             356              63
1177   5/22/2014      63      529         0             356              63
1178    8/3/2014      63       35         0               2               0
1179    3/3/2014      63      447         0              28               0
1180   11/1/2014      63       81         1              31               2
1181  10/11/2013      63      123        17             171              39
1182  10/14/2013      63      587        43             337              42
1183  10/14/2013      63      587        43             337              42
1184   8/28/2013      63      212         5              33               7
1185   8/21/2013      63      293         8             124              11
1186    5/8/2013      63      376         4              94              12
1187    3/6/2013      63      570        73             614             133
1188   2/21/2013      63       23         1               7               0
1189  12/23/2012      63      867         0              86               0
1190   1/12/2012      63      789         0             142              12
1191   1/12/2012      63      789         0             142              12
1192   12/8/2012      63      757        80             217              29
1193   12/8/2012      63      757        80             217              29
1194   12/8/2012      63      757        80             217              29
1195    5/8/2012      63       29         4              34               2
1196    3/4/2014      64       46         0               7               0
1197  10/21/2013      64      159         2              51               6
1198   8/30/2013      64       70         0              17               0
1199   8/27/2013      64      882        29             514              38
1200   8/20/2013      64      536        11             387             149
1201   8/17/2013      64      291        10             689              84
1202   8/15/2013      64      318         3              17               4
1203   6/30/2013      64      379         4              93              12
1204   6/27/2013      64      378         0              88              19
1205   5/17/2013      64      333         0             815             129
1206   4/21/2013      64      635        15             100              20
1207   4/21/2013      64      635        15             100              20
1208   4/21/2013      64      635        15             100              20
1209   11/3/2013      64      960         0             883              50
1210   1/16/2013      64      313         8             104               6
1211   7/12/2012      64      749        40             294             121
1212  10/11/2012      64      203         0              10               0
1213  10/31/2012      64      157         6              39               6
1214   6/26/2014      65       39         1              16               2
1215   6/21/2014      65       42        16              29              12
1216   3/26/2014      65        4         2              11               2
1217   3/26/2014      65        4         2              11               2
1218   3/20/2014      65      750         8             125              11
1219  11/22/2013      65       10         5              28              11
1220   3/11/2013      65        4         0               2               0
1221  10/14/2013      65      407        70             239             103
1222   9/18/2013      65      619        54             260             127
1223   8/20/2013      65      629        17             177              69
1224   6/23/2013      65       30         0               9               0
1225   6/20/2013      65      320        48             133              39
1226   6/20/2013      65      320        48             133              39
1227   5/15/2013      65        3         1               8               4
1228   5/15/2013      65      215         7              33               3
1229   12/5/2013      65      311        26             640             180
1230   4/27/2013      65       29         0               5               0
1231   4/24/2013      65      112         6              92               3
1232   4/22/2013      65        7         2               6               2
1233  11/23/2012      65     1103         0              45               0
1234  11/23/2012      65     1103         0              45               0
1235   9/23/2012      65     1060        21             530              32
1236   9/21/2012      65      561        85             171              25
1237   9/14/2012      65      153        64             123             116
1238   8/21/2012      65      404         0              92              28
1239    4/5/2014      66      375       152             335              93
1240    4/5/2014      66      375       152             335              93
1241   4/22/2014      66       10         4               7               0
1242   2/16/2014      66        4         1               9               3
1243  11/23/2013      66       23         4              10               0
1244   4/11/2013      66      411         0              26               0
1245   4/11/2013      66      411         0              26               0
1246  10/26/2013      66      211         2              30               7
1247    5/9/2013      66      446       107             768              33
1248    4/5/2013      66      239        10             554             254
1249   2/19/2013      66      374        64             116              84
1250   1/25/2013      66      221       104             169             102
1251  10/15/2012      66     1218       107             304              23
1252   8/24/2012      66     1047         0             140              67
1253    1/8/2012      66     1206        55             445             168
1254    9/5/2014      67       20         3               4               2
1255   4/25/2014      67      274        83             216             151
1256   1/27/2014      67       27         1              12               2
1257   7/11/2013      67      584       100             835              65
1258    2/7/2013      67      889        55             685             168
1259   5/17/2013      67      146         0              93               7
1260   4/17/2013      67      315        26             473             220
1261   1/24/2013      67       15        20              25               2
1262   1/15/2013      67      815         8              53              11
1263  12/28/2012      67      247         8             160               6
1264  11/29/2012      67     1115        12             128              33
1265   3/11/2012      67      185         8             133              56
1266   6/20/2014      68       54         0              10               0
1267   5/24/2014      68      411       106             147              54
1268   5/16/2014      68        7         2               9               2
1269   4/28/2014      68      182        17             259              77
1270   3/17/2014      68      251       108             334              65
1271    1/2/2014      68       20         2               9               4
1272    7/1/2014      68      416        46             925              60
1273  10/28/2013      68      112         1              54               7
1274  10/15/2013      68      141         8             129               3
1275  12/10/2013      68       50         1              27               6
1276   10/9/2013      68      166        75              96             119
1277   5/17/2013      68      562        81             276              80
1278    2/5/2013      68       72         7              58              13
1279   2/13/2013      68      315         0              31               4
1280   1/20/2013      68      438       169             565              91
1281    5/1/2013      68      134         8              76               6
1282  12/30/2012      68      283       112             151              51
1283  12/19/2012      68        2         1               6               2
1284  11/13/2012      68       75        12             141              43
1285  11/13/2012      68       75        12             141              43
1286   5/10/2012      68      347        44             534              17
1287   5/10/2012      68      347        44             534              17
1288    7/5/2014      69      492         0              37               7
1289   3/23/2014      69       15         2              10               0
1290   1/22/2014      69      364        40             425             158
1291   3/11/2013      69      206        10              67              30
1292   7/13/2013      69      135         1              41              10
1293    1/6/2013      69     1016        12             215              16
1294   4/22/2013      69        8        15              27               0
1295   3/29/2013      69      432        79             341             177
1296   3/18/2013      69      270         3              27              39
1297   3/18/2013      69      270         3              27              39
1298   12/3/2013      69      722        27             102              44
1299    7/3/2013      69      516         0              21               0
1300   9/12/2012      69      410        16             114               0
1301  10/28/2012      69      159         4              45               6
1302   12/5/2014      70      350        60             568             110
1303   12/5/2014      70      350        60             568             110
1304   4/23/2014      70      403        24              29               6
1305   2/18/2014      70      218        63             282             137
1306  11/26/2013      70      560        21             442              29
1307   12/9/2013      70      729        17             133              11
1308   8/28/2013      70     1224        28             140               0
1309   12/8/2013      70     1121         0              72               0
1310   7/19/2013      70      503        27             419              90
1311   11/4/2013      70      172        12             112               8
1312   11/4/2013      70      172        12             112               8
1313    5/4/2013      70       31        19              35              26
1314    3/4/2013      70      266         6              51               8
1315  10/29/2012      70     1245        33             332              21
1316  10/15/2012      70       77         2              35               0
1317   5/10/2012      70      224         0              30               0
1318   6/16/2014      71      479        35             179              28
1319   5/31/2014      71      199         9              57              20
1320   4/19/2014      71       18        10               3               3
1321   4/13/2014      71       30         2              25               0
1322    5/2/2014      71       45         0              16               2
1323  12/29/2013      71       21         5               3              10
1324   9/27/2013      71      966       168             672             246
1325   9/23/2013      71     1459         0              61               0
1326    5/9/2013      71       87         5              71               7
1327    1/8/2013      71       13        11              24              13
1328   7/27/2013      71       35         0               4               0
1329    6/7/2013      71      621        73             414              78
1330   6/21/2013      71       34         4              66               3
1331   6/21/2013      71       34         4              66               3
1332   6/13/2013      71      378        14              68              19
1333   6/13/2013      71      378        14              68              19
1334    2/5/2013      71      430        16             322              43
1335    1/5/2013      71      979        44             935              29
1336    1/4/2013      71      116        11              72               3
1337   3/26/2013      71       19         1              10               2
1338  11/16/2012      71      777        30             163               0
1339  10/31/2012      71      160        80             369              67
1340  10/17/2012      71        4        12              15              19
1341   8/21/2012      71      853        10             143              13
1342   6/28/2014      72      123       164             266             227
1343   6/28/2014      72      572         8             232              23
1344    8/6/2014      72      141        15             153              67
1345   10/5/2014      72      492        19             110              16
1346    5/4/2014      72      572         8             259              34
1347   2/17/2014      72       93         1              21               0
1348  12/20/2013      72       77        28              31              16
1349   3/12/2013      72       42         7              43              20
1350  11/23/2013      72      410        73             747              76
1351   7/17/2013      72       22         0              13               0
1352    4/6/2013      72      387        20             713              38
1353   5/28/2013      72      127         4              73              15
1354   3/26/2013      72      465        71             250              93
1355    3/3/2013      72      689         8             167              11
1356   2/27/2013      72      532        21             127              26
1357   2/22/2013      72      983        20             389             240
1358   2/17/2013      72      686        17             142              23
1359    4/2/2013      72      393         0             239              90
1360    1/2/2013      72       43         4              12               8
1361  12/26/2012      72       15         0               4               0
1362  11/22/2012      72      505         0              26               0
1363   8/28/2012      72      600        21             128             223
1364    8/8/2012      72      792        86             740              67
1365   7/30/2012      72      293         0              87               4
1366   6/21/2014      73      630        26             611              44
1367   3/31/2014      73      483         0             591             156
1368   3/23/2014      73      213         5              28               7
1369    7/2/2014      73      458         0              24               6
1370   1/26/2014      73      247       161             295             210
1371    2/1/2014      73       90        38              67              33
1372   9/17/2013      73      182         2              49              17
1373   8/25/2013      73      466         0             224             119
1374   7/14/2013      73      243       101             405              29
1375    3/6/2013      73      910       111             724              49
1376    3/6/2013      73      167        48             602              63
1377   5/18/2013      73      960        64             464             146
1378   4/19/2013      73      399        28             756              36
1379   10/3/2013      73     1200       105             758               0
1380    9/2/2013      73       35         3              20               4
1381   1/26/2013      73      707        44             603              95
1382   9/11/2012      73      389        91             248              64
1383  10/14/2012      73      171         3             129              26
1384   9/30/2012      73     1379        33             216               0
1385   8/29/2012      73      504        23             117             179
1386   11/3/2014      74       60        51              87               6
1387    4/3/2014      74      224        12              48               4
1388    1/3/2014      74      204         7             149              20
1389  12/27/2013      74       39         0              56              20
1390  12/27/2013      74       39         0              56              20
1391  10/29/2013      74     1067       138             750               0
1392  10/16/2013      74      144         2              99               7
1393   3/10/2013      74       46         1              12               3
1394   9/14/2013      74      264        47             188              54
1395   8/26/2013      74      202         5              74              11
1396   8/26/2013      74      202         5              74              11
1397   7/28/2013      74       17         1              12               3
1398    3/7/2013      74       84        10              34              11
1399   5/19/2013      74      581        49             157              43
1400   4/28/2013      74      952        12             180              47
1401   2/19/2013      74       47        90              94             123
1402    9/1/2013      74      925        64             179             133
1403   5/11/2012      74      965        34             586              89
1404   5/11/2012      74      539         6              91               8
1405  10/26/2012      74      324       132             693              27
1406  10/20/2012      74      457         4              29               0
1407    3/4/2014      75     1017        33             417             108
1408    2/1/2014      75      187        81             149              25
1409  12/23/2013      75        9         3              15               2
1410    7/8/2013      75       99        13              66              43
1411   12/7/2013      75       15         6              20               4
1412   6/29/2013      75      604        28             674              91
1413   6/16/2013      75      249       153             940              58
1414    4/3/2013      75       33        87              64             175
1415   12/1/2013      75       22         1               8               2
1416   9/25/2012      75        8         0               5               0
1417   3/23/2014      76       41         0              10               0
1418    1/3/2014      76      104        12              48               4
1419   7/11/2013      76      111        16              37               7
1420   7/11/2013      76      111        16              37               7
1421  12/10/2013      76      618        15             106              20
1422   8/17/2013      76       56         0              12               0
1423   5/28/2013      76      267        98             606              48
1424    6/4/2013      76     1039        43             204             153
1425   1/23/2013      76      515        47             181             149
1426   1/20/2013      76      293        35             179              46
1427   4/12/2012      76        8         4              15               7
1428   6/19/2014      77       45         2              26               4
1429   5/29/2014      77      527        24             230              32
1430    3/5/2014      77        8         0               9               2
1431    4/4/2014      77       59         0              12               0
1432    8/3/2014      77       30         5              23               4
1433   11/1/2014      77       35        40             111              36
1434   2/12/2013      77      225       162             387             106
1435   7/19/2013      77      493        70             324             146
1436   7/19/2013      77      493        70             324             146
1437   6/28/2013      77      918        10             129              13
1438   6/14/2013      77        3         1               3               8
1439   4/13/2013      77     1285        42             716              55
1440   3/31/2013      77      440        81             368               0
1441   1/26/2013      77       80         3              26               4
1442   12/1/2013      77      691         0              69              10
1443    1/1/2013      77       24         0              27               8
1444   8/29/2012      77      650        28             353              45
1445   5/25/2014      78       26         0              15               2
1446   5/25/2014      78       26         0              15               2
1447   3/17/2014      78     1168        92             408              72
1448   10/2/2014      78       31         9              27              16
1449    9/2/2014      78       12         0               4               0
1450   1/25/2014      78       89        15              89              34
1451   2/12/2013      78      255        47             573              52
1452  11/15/2013      78      760        53             400              17
1453   8/10/2013      78      897       161             430             186
1454   8/10/2013      78      897       161             430             186
1455    6/9/2013      78       28         0              13               4
1456    7/8/2013      78       22         3              18               0
1457   7/23/2013      78        9         1               5               0
1458   5/26/2013      78      138       120             204              16
1459   5/20/2013      78      520        20             367              39
1460   12/3/2013      78      972        59             913              25
1461   11/1/2013      78      424        17             118               7
1462  11/23/2012      78      556        14             717             210
1463  11/23/2012      78      556        14             717             210
1464   5/10/2012      78      571        50             142              33
1465   5/10/2012      78      571        50             142              33
1466   9/25/2012      78      398        96             447             220
1467   9/25/2012      78      398        96             447             220
1468    8/8/2012      78      957        47             494              82
1469    1/4/2014      79      171         7             171              25
1470   1/24/2014      79      944         0              60               0
1471   1/21/2014      79      135         9              39               4
1472    1/1/2014      79       28         1              21               3
1473  12/18/2013      79       26         1              11               0
1474  11/30/2013      79       45         7              99               4
1475  10/23/2013      79      104         1              54              13
1476   9/17/2013      79      400        32             519              71
1477    6/8/2013      79      908        43             735              40
1478    4/5/2013      79       16         2              11               3
1479   2/25/2013      79      516        56             449              86
1480   2/13/2013      79      597       166             597             172
1481  12/16/2012      79      847        66             119              86
1482    4/9/2012      79      543        10             205             160
1483   5/13/2014      80      656        16             106              32
1484   4/23/2014      80       33         8              10               2
1485   4/16/2014      80       29         3              30               3
1486   2/25/2014      80      554        35             113               0
1487   4/12/2013      80      742        28             152              25
1488   1/12/2013      80       37         0               7               3
1489   6/11/2013      80       24         2              23               0
1490   6/19/2013      80       21         8              20              15
1491   3/23/2013      80       23         1              25               0
1492   10/3/2013      80      618        44             215               0
1493   2/15/2013      80      162        61              83              97
1494   10/2/2013      80      968       147             842             137
1495   1/20/2013      80      708         7              62               0
1496    4/1/2013      80      152        27             103             106
1497   5/12/2012      80      747        10             161              65
1498  10/15/2012      80      158         0              23               0
1499   6/10/2012      80      958       159             447              20
1500   4/10/2012      80       46        35              69              84
1501   11/9/2012      80      167        37              64              49
1502   8/31/2012      80      387       126             342               0
1503   11/5/2014      81      152         3              22               2
1504   4/17/2014      81       97         1              19               2
1505   3/31/2014      81       96         1              79               7
1506   2/16/2014      81       30         1               8               0
1507    7/2/2014      81        1         1               1               1
1508    2/1/2014      81      293         0             124             179
1509  12/13/2013      81      330         5             159              36
1510  11/26/2013      81      270        31              88              11
1511  11/15/2013      81     1076        16             417              42
1512  10/19/2013      81       16         3              15               2
1513   9/22/2013      81       62         1              16               3
1514    6/9/2013      81      637        47             237              12
1515   7/29/2013      81      418        61             428              80
1516    1/7/2013      81        3         3               7               6
1517    1/7/2013      81        3         3               7               6
1518   5/26/2013      81       14         0               3               0
1519   5/20/2013      81      587        51             932             180
1520    4/3/2013      81      986        36             168              16
1521    2/2/2013      81      229         5              56               3
1522   1/23/2013      81      255        43             134              37
1523  12/12/2012      81      825         8              53              11
1524  11/17/2012      81     1298         0              70              37
1525  10/28/2012      81      167         2              44               6
1526   8/30/2012      81     1132       134             384             175
1527    4/8/2012      81      746         8             125              11
1528   5/18/2014      82      812        99             431             237
1529    7/2/2014      82       34         6              21              11
1530    7/2/2014      82       34         6              21              11
1531   10/1/2014      82       18         0               5               0
1532  11/15/2013      82      194        61             480             225
1533   9/30/2013      82       37         0              17               0
1534   9/28/2013      82      110        29              92              28
1535   9/19/2013      82      519        17             813              27
1536   5/31/2013      82       23         0              15               0
1537    5/4/2013      82       12         0               5               0
1538    3/4/2013      82      909        11             218               0
1539   3/16/2013      82        2         3              20               6
1540   2/16/2013      82     1315        22             780             145
1541    6/2/2013      82      344        45             654             104
1542  11/23/2012      82      462         0              24               6
1543   6/19/2014      83       22         0              19               6
1544   4/16/2014      83       31         1               8               0
1545   3/23/2014      83       34         1              19               2
1546    3/3/2014      83      789        25             420              16
1547   1/25/2014      83      307        26             360             138
1548  11/20/2013      83       46         4              36               2
1549  11/13/2013      83       18         1              32               6
1550   9/30/2013      83      135        25              51              23
1551   8/15/2013      83       67         5              61               3
1552   10/6/2013      83      191        56             139              51
1553   11/5/2013      83      860        28             409              73
1554   4/22/2013      83       17         0              14               7
1555   4/22/2013      83       17         0              14               7
1556   4/21/2013      83     1396         0             322              46
1557   2/14/2013      83      199        66             315              97
1558   1/23/2013      83      583        34             309               0
1559   7/12/2012      83      509         0              65               7
1560  11/30/2012      83      473        21             176              19
1561   8/31/2012      83      526        28             135              10
1562   8/31/2012      83      526        28             135              10
1563   11/5/2014      84       30         0               8               2
1564    7/5/2014      84      410         0             592             147
1565   2/18/2014      84        5         1               7               2
1566   1/17/2014      84       43         5              28               7
1567  12/19/2013      84      693        21             118             110
1568   5/11/2013      84      508       124             249              50
1569  10/24/2013      84      116         6              82               6
1570  10/24/2013      84      116         6              82               6
1571  10/14/2013      84       80         4              46               0
1572    8/6/2013      84       22         2              10               6
1573   3/31/2013      84      336        28             282             184
1574    3/3/2013      84      553        25             142              65
1575   1/26/2013      84      408        61             109              48
1576  11/28/2012      84      675         0              85              10
1577  11/17/2012      84       68         1              13               3
1578  10/25/2012      84      297         7              79               0
1579  10/25/2012      84      297         7              79               0
1580  10/20/2012      84     1324        27             119              71
1581    4/9/2012      84      367        17             241             104
1582   6/17/2014      85      167         2              62              24
1583   5/23/2014      85      292        30             415              63
1584   5/23/2014      85      292        30             415              63
1585   5/22/2014      85       11         0               3               0
1586   3/21/2014      85      582         0              65               0
1587    5/3/2014      85      675        11             400              15
1588  12/29/2013      85      557       129             984             193
1589  12/25/2013      85      184       178             178             103
1590   5/12/2013      85     1142        51             415              90
1591  11/27/2013      85      504        13             131               8
1592   8/29/2013      85        2         1               2               1
1593   11/7/2013      85       12         5              25               0
1594    9/7/2013      85      145        13              46              17
1595   4/28/2013      85      135         0              10               0
1596   11/1/2013      85     1449        89             161              69
1597  10/14/2012      85      829       138             430              60
1598  10/14/2012      85      829       138             430              60
1599    6/4/2014      86       76         0               7               0
1600    5/4/2014      86      412        12             546              78
1601    6/3/2014      86      335        42             127              28
1602    5/3/2014      86      612        91             520             258
1603  12/26/2013      86      741        19             154              50
1604  11/12/2013      86       22         3              30               0
1605  10/21/2013      86      100         1              39               6
1606   9/16/2013      86      625         7              99              10
1607   8/31/2013      86      389        66             408              37
1608   8/22/2013      86       24         2              20               2
1609   6/29/2013      86       23         0              11               2
1610   4/18/2013      86      102         9              63               2
1611   4/18/2013      86      102         9              63               2
1612    6/3/2013      86       13         0               3               0
1613   2/26/2013      86      175        10             110              54
1614   3/11/2012      86        4        17              19              30
1615   8/18/2012      86       57         0              27               0
1616   8/18/2012      86       57         0              27               0
1617   8/18/2012      86       57         0              27               0
1618    3/8/2012      86      176        72              98             136
1619    2/5/2014      87      957       153             612              99
1620   3/31/2014      87       15         4              10               3
1621    4/1/2014      87      111         3              28               2
1622  12/29/2013      87      398       190             537              61
1623  12/25/2013      87      445        53             213             104
1624  12/25/2013      87      445        53             213             104
1625  12/19/2013      87      565        32             435              28
1626   1/12/2013      87      141        70             106              72
1627   8/11/2013      87      327         9             122              19
1628   12/9/2013      87      197       107             227               7
1629   5/23/2013      87      243       131             217              85
1630   3/24/2013      87      457         5             106              15
1631   3/22/2013      87      623        53             178              23
1632   2/20/2013      87      544        13              85               8
1633   2/18/2013      87      162        33             124              40
1634  11/27/2012      87      631        28             491              30
1635  11/26/2012      87      189         2              55               0
1636  10/14/2012      87     1073         0             629             145
1637  10/13/2012      87       91         3              52               2
1638   9/28/2012      87      736       163             818             212
1639   5/29/2014      88      274         0              21               4
1640  10/25/2013      88      205         7              41               3
1641  10/15/2013      88       99        27             102              28
1642   7/26/2013      88      215        13              87              17
1643    3/5/2013      88      714        76             395             116
1644    3/5/2013      88      714        76             395             116
1645   4/13/2013      88      317        25             265              25
1646   10/4/2013      88      537         6              42              16
1647    5/4/2013      88      565         6              65               0
1648    8/1/2013      88      285        28             242              55
1649    2/1/2013      88      366       124             156              71
1650  12/20/2012      88        4         2               5               0
1651   7/11/2012      88      350       104             189             197
1652   4/28/2014      89     1252         0             465              46
1653   12/3/2014      89        7         2               4               2
1654    1/3/2014      89       37         0              46               4
1655   2/19/2014      89      934        24             230              16
1656  12/31/2013      89      518        42             742              55
1657  12/25/2013      89       51         4              24               4
1658   1/10/2013      89      171        45              73              59
1659   9/15/2013      89       12         1               6               0
1660   8/22/2013      89       99         0              15               2
1661   8/15/2013      89      734        22             350             151
1662   7/15/2013      89     1045        61             338              60
1663   5/15/2013      89       51        23              82              33
1664   3/28/2013      89       85        15              27              13
1665   3/23/2013      89      562        21             464              28
1666  12/11/2012      89      717        42             864             219
1667   9/17/2012      89      830        59             968              51
1668   5/23/2014      90       29         0              14               0
1669   3/31/2014      90     1020        31             430              62
1670    2/3/2014      90      561        14             113              10
1671   1/26/2014      90      680        11             392              75
1672    3/1/2014      90        9         0               3               0
1673   7/18/2013      90      162        25              53              16
1674   12/7/2013      90       67        15              80              17
1675   5/21/2013      90       26         1              10               2
1676    2/5/2013      90      524         0             134              28
1677   4/27/2013      90      138         3              38               4
1678   4/27/2013      90       18         2              10               0
1679    8/4/2013      90      856        59             487              58
1680  11/10/2012      90     1013        30             399              60
1681   8/31/2012      90      864       134             768             150
1682   8/31/2012      90      864       134             768             150
1683   8/22/2012      90       85        44              54             102
1684   8/20/2012      90      164        24             103              12
1685   8/18/2012      90      620        54             239              99
1686   4/26/2014      91       68         8              18              19
1687   1/25/2014      91      908        48             217              32
1688  12/23/2013      91      675       144             133              94
1689  12/22/2013      91      208         7              82              30
1690   7/12/2013      91        4         0               5               0
1691  11/28/2013      91      653        17             170              34
1692  12/11/2013      91      350         3              39               0
1693   9/25/2013      91       30        11              33              13
1694    1/9/2013      91       43        12              23              29
1695    1/9/2013      91       43        12              23              29
1696   8/31/2013      91      369         9              87              12
1697   8/16/2013      91      736        63             946             219
1698   3/30/2013      91      794        73             573               0
1699   3/28/2013      91     1012        80             498               0
1700    2/1/2013      91       22         1              13               4
1701   5/22/2014      92      203        35             305              46
1702   5/22/2014      92      203        35             305              46
1703   2/24/2014      92       32         0               5               2
1704   6/12/2013      92        6         2              18               2
1705   9/10/2013      92       76        14              74              13
1706   3/10/2013      92      350         8              66              17
1707   12/9/2013      92      133        27             421              13
1708    9/8/2013      92      100         2             128              23
1709   7/24/2013      92      188         3             180              20
1710   7/14/2013      92       17         8              12              11
1711   6/26/2013      92      502        12             109              16
1712   6/14/2013      92        3         9              13               2
1713   5/24/2013      92       13         6              15               3
1714   5/23/2013      92      674        92             736              39
1715    2/5/2013      92      202        47             197              55
1716   1/27/2013      92      228       122             122             208
1717    6/1/2013      92      544        35             133              23
1718  11/25/2012      92      811        76             428              99
1719  10/11/2012      92      342        51             936             207
1720   8/11/2012      92      856         0              76              12
1721   3/11/2012      92       34         1              14               0
1722   3/11/2012      92       34         1              14               0
1723   8/25/2012      92      201         2              43               3
1724   8/25/2012      92      201         2              43               3
1725   8/15/2012      92      639         8             166              11
1726   11/4/2014      93       30        11              25              29
1727    4/3/2014      93      444        44             382              11
1728   10/2/2014      93      372        23             384             250
1729   1/14/2014      93      255        31             446              40
1730  11/13/2013      93      184         2              19               8
1731  10/20/2013      93      238        17              68               8
1732   9/28/2013      93      162        31             127               8
1733   10/9/2013      93      509         0              27               0
1734   5/30/2013      93       23         3              21               3
1735   10/4/2013      93      816        42             450              55
1736   12/1/2013      93       29         1              11               0
1737   10/1/2013      93      656        80             455              52
1738   10/1/2013      93      656        80             455              52
1739  12/16/2012      93      482        35             553              72
1740   2/12/2012      93      928        63             254               0
1741   1/12/2012      93      714         8              99              11
1742  10/23/2012      93      371        22              39               6
1743  10/10/2012      93      407        28             100             120
1744   8/22/2012      93     1017        50             500              65
1745   4/24/2014      94       41         0              17               3
1746    9/4/2014      94      494        92             391             194
1747   3/18/2014      94      272         7              80              20
1748   2/17/2014      94       87        13              34              10
1749   1/19/2014      94      173        43             118              46
1750    4/1/2014      94       29         0              29               0
1751  10/11/2013      94      292       127             635             132
1752   7/26/2013      94       92         4              18               3
1753    6/5/2013      94       27         0               5               0
1754    6/5/2013      94       27         0               5               0
1755   3/27/2013      94      162        28             818               0
1756   2/14/2013      94       25         1               9               2
1757   1/11/2012      94      546        72             376              94
1758   4/10/2012      94      555        82             257              93
1759   9/14/2012      94       68         6              38               3
1760   10/9/2012      94      351        16             156               7
1761    6/9/2012      94       19        18              33              24
1762   8/22/2012      94       73         3              90              12
1763   8/22/2012      94       73         3              90              12
1764   8/17/2012      94      263         5             233              69
1765    1/3/2014      95      982        73             351              56
1766  12/17/2013      95      495        33             255              11
1767   9/26/2013      95       15         4              13               0
1768   9/17/2013      95      769        22             500             210
1769   8/17/2013      95        5         0               8               2
1770    2/8/2013      95      120        19             206              25
1771    7/7/2013      95      627       120             414             121
1772   5/29/2013      95      312        21             206             102
1773   5/29/2013      95      359         0             134              13
1774    2/1/2013      95      490        44             125              29
1775   9/21/2012      95      737        21             106              55
1776   9/19/2012      95       11         1               4               2
1777   8/31/2012      95      631         0             115              10
1778   10/8/2012      95      456        19             832              75
1779   10/8/2012      95      456        19             832              75
1780   6/24/2014      96        2         0               5               2
1781   6/22/2014      96      751       127             687              20
1782   4/29/2014      96      143         6              52              11
1783   4/23/2014      96       14        36              11               3
1784   4/23/2014      96       14        36              11               3
1785    5/4/2014      96       19         1              20              16
1786    7/3/2014      96      346        17              48              23
1787  11/22/2013      96      684       100             801              21
1788  11/22/2013      96      684       100             801              21
1789  11/21/2013      96      712         0              45               0
1790  12/10/2013      96      309         3              24               4
1791    8/7/2013      96      144         0               7               0
1792   1/12/2012      96      115        27              44               4
1793   5/11/2012      96      397        46             288              20
1794   12/9/2012      96      899       102             838             133
1795   12/9/2012      96      899       102             838             133
1796   8/29/2012      96      897       126             196              91
1797   6/26/2014      97       25         0              11               3
1798    6/6/2014      97      734        26              70              11
1799   5/24/2014      97      166         5             107              11
1800   4/24/2014      97      136         1              12               0
1801   1/23/2014      97      756       138             354             160
1802  11/25/2013      97        5         4              10               2
1803   7/11/2013      97       35         0              13               2
1804  10/25/2013      97       20         2              14               3
1805   8/25/2013      97      267         6              54               8
1806   12/6/2013      97      412       172             153             150
1807   5/25/2013      97      127         1              56               0
1808    7/5/2013      97     1279        15             287              20
1809   3/28/2013      97       11         0              36              15
1810   2/22/2013      97     1004        59             265             115
1811   2/22/2013      97     1004        59             265             115
1812  12/23/2012      97      382       114             276              75
1813  10/22/2012      97      138        33              87              28
1814   6/28/2014      98      479        28             136              75
1815    1/3/2014      98       20         2            1582               1
1816    1/3/2014      98      199        12              31               3
1817  10/28/2013      98      901        61             757             186
1818   4/10/2013      98      997        15             414              99
1819   4/10/2013      98      997        15             414              99
1820   12/9/2013      98      508        11              59              23
1821    5/7/2013      98      538        13              91              17
1822   6/24/2013      98       62         1              20               4
1823   5/22/2013      98      982        17             672              23
1824   5/17/2013      98      466        22             432             147
1825    9/4/2013      98       44         2              11               2
1826  10/14/2012      98      920       138             168              36
1827   4/10/2012      98      459         0              24               6
1828   4/10/2012      98      459         0              24               6
1829   9/25/2012      98      433        89             650              16
1830   9/23/2012      98      563        50             774              28
1831   8/29/2012      98      192         5              53               0
1832   6/27/2014      99      453        38             279             188
1833    8/6/2014      99       54         0               7               0
1834    8/6/2014      99       54         0               7               0
1835   5/26/2014      99      273        86             208             177
1836    7/4/2014      99      362        17             398              80
1837   3/25/2014      99       24         0               8               0
1838   11/2/2014      99       55         0               6               2
1839   11/2/2014      99       55         0               6               2
1840   9/26/2013      99       15         6               8               7
1841   9/17/2013      99      321        11             309              33
1842    7/3/2013      99      372        18             126              47
1843   1/22/2013      99        5        10              13               3
1844   3/12/2012      99      185         2              88              15
1845  11/29/2012      99      267        38             701             149
1846    1/9/2012      99      169        24             553             188
     MntSweetProducts MntGoldProds NumDealsPurchases NumWebPurchases
1                 189          218                 1               4
2                   0           37                 1               7
3                   2           30                 1               3
4                   0            0                 1               1
5                  32           43                 1               4
6                  34           65                 1              10
7                   0            7                 1               2
8                  32            5                 3               6
9                  32            5                 3               6
10                 98           26                 1               5
11                 13            4                 2               3
12                 20          102                 1               3
13                 13           22                 4               2
14                 13           22                 4               2
15                  0            2                 1               1
16                  1           10                 2               2
17                  0            5                 1               1
18                  3           30                 3               5
19                  7            7                 3               5
20                  4           23                 2               2
21                  0           23                 2               5
22                  8           44                 4               8
23                  1            3                 3               2
24                 19           32                12               9
25                 19           32                12               9
26                  1            5                 2               2
27                 30           32                 1               5
28                  7           10                 3               5
29                197          197                 1               4
30                  0            0                 1               1
31                  0           17                 3               7
32                 20           20                 1               4
33                 89           29                 1               2
34                  3            3                 1               0
35                 16           16                 1               2
36                172          172                 2               5
37                 29           14                 3              11
38                160           45                 1               8
39                 12           12                 3               4
40                  0           30                 1               4
41                  5            6                 1               1
42                 28            9                 2               5
43                  0          125                 2               7
44                 13           27                 4               7
45                 60           12                 3               4
46                  0            1                 1               1
47                 23           17                 1               4
48                  2           23                 2               2
49                  0            0                 1               1
50                  2           13                 2               4
51                 35            8                 1               2
52                 16           66                 4               2
53                  0            0                 1               1
54                  0           10                 4               3
55                  3           11                 7               5
56                  0            6                 1               1
57                  0           15                 2               6
58                 35           54                 1               3
59                  3            3                 3               3
60                  3            3                 3               3
61                 92          129                 1               5
62                138           27                 1               6
63                 10          102                 3               5
64                 80           35                 1               2
65                 42           21                 1               9
66                  3           26                 3               3
67                 21            0                 1              10
68                167           32                 1               6
69                 50           40                 1               4
70                 50           40                 1               4
71                  3           34                 4               6
72                  0           14                 2               6
73                  0            1                 1               1
74                  8           11                 1               1
75                 75           97                 1               8
76                 28           14                 1               1
77                 53           10                 1               7
78                  9           67                 1               4
79                 32           90                 2               5
80                  5           22                 1               2
81                  5           22                 1               2
82                  2           31                 3               2
83                178          102                 2               8
84                 30            8                 5               4
85                  6           26                 6               6
86                 26          145                 2               3
87                  3           42                 5               7
88                  3           42                 5               7
89                  3           42                 5               7
90                  0           34                11               3
91                  0           34                11               3
92                 25           12                 4               8
93                 99           33                 1               8
94                101           62                 0               7
95                  4           30                 3               7
96                  3           27                 1               3
97                  2           41                 2               4
98                  8           24                 1               3
99                  2           10                 1               1
100                 7          143                 3               7
101                20           50                 2               3
102                20           50                 2               3
103               123           47                 1               3
104                28           21                 2               6
105                82          109                 1               5
106                96          168                 3               7
107                 8           12                 1               2
108                 8           12                 1               2
109                10          125                 1               6
110                12            3                 3               6
111                 6           41                 4               5
112                 0           28                 9              10
113                68           22                 1               3
114               138          150                 3               5
115               138          150                 3               5
116                 0           91                 3              11
117                48          128                 2               5
118                 2            5                 2               3
119               176           48                 1               4
120                 1           20                 1               2
121                30           33                 1               6
122               172          148                 1               6
123                80           80                 4               8
124                 0            1                 1               1
125                49           42                 4              10
126                49           42                 4              10
127                73           43                 1               6
128                69           51                 1               2
129                 0            1                 1               1
130                13           80                 1               6
131                 3            3                 3               3
132                 0            8                 3               2
133                 0            8                 3               2
134                 5            7                 1               1
135                 5            7                 1               1
136                58           91                 1               6
137                26          191                 1               6
138                44           48                 1               4
139               128           48                 1               3
140                53          107                 4               7
141                 8           69                 5               6
142               151           66                 3               6
143               133          121                 1              11
144                11           26                 5               1
145                 5           23                 1               1
146                44          147                 1               4
147               134           57                 0               5
148                36           48                 2               2
149                 7           71                 6               4
150                41           64                 3               8
151                 0            0                 5               4
152                 0            0                 5               4
153                21           63                 1               6
154                 5            5                 1               1
155                 0            9                 2               5
156                30           61                 2               6
157                37           55                 1               5
158                 0            1                 1               1
159                13          181                 1               3
160               148           22                 1               6
161                 5           11                 2               3
162                15           15                 2               8
163                51          135                 1               6
164                14           34                 1               4
165                 0          160                 1               5
166                 6            6                 1               7
167                21           25                 2               3
168                21           21                 4               6
169                19           57                 2               7
170                 3           22                 2               6
171                 9           56                 4               7
172                 3           15                 5               5
173                 3           15                 5               5
174                15            0                 5               6
175                22           43                 6               4
176                 0           86                 1               3
177                14           25                 1               3
178               262            3                 0              27
179                11           17                 2               3
180                 4            7                 1               1
181                 0            3                 1               1
182                 2           16                 1               1
183                 5           10                 4               7
184                 2            2                 1               1
185                10           42                 2               4
186                19          119                 0               5
187                 4           19                 1               3
188                 6           24                 3               3
189                19            0                 1               7
190                19            0                 1               7
191                 6           16                 2               5
192                12           12                 1               5
193                26          112                 8               7
194                14           21                 1               4
195                 3           20                 4               3
196                 2           20                 6               5
197                 0           51                 2              10
198                12          153                 2               6
199                 0           17                 2               7
200                 0            1                 1               1
201                 0           30                 3               4
202                 3            8                 2               2
203                41          130                 1               7
204                18           37                 0               7
205                 0           24                 1               1
206                89           58                 5               5
207                 1            1                 1               4
208                15           19                 6               5
209                44          133                 3               7
210                44          133                 3               7
211                 0          152                 7               5
212                 7           28                 5               4
213                13           42                 1              10
214                 2           18                 1               1
215                 2           18                 1               1
216                97           30                 1              11
217                29           95                 1               6
218                29           95                 1               6
219                26           26                 1               2
220                54           54                 2               5
221                 3           18                 1               2
222                 0            4                 9               6
223                 3          107                 3               7
224                 2            3                 1               1
225                 8           17                 3               2
226                 8           17                 3               2
227                14           19                10               5
228                 9           28                 2               3
229                 9           12                 1               1
230                 0           35                 6              11
231                 2            2                 7               3
232                77           83                 3               5
233                 0           11                 2               5
234                 4            8                 5               3
235                44           88                 1               6
236                 1           31                 3               4
237                14           42                 2               2
238                14           42                 2               2
239                 2           15                 4               6
240                 0          109                 2               6
241                76          134                 2               2
242               121           38                 1               5
243                14           20                 4               3
244                14           20                 4               3
245                 4            4                 2               5
246                45           68                 1               6
247                28           14                 3               6
248                36           97                 1              11
249                34           76                 2               7
250                64          140                 1               6
251               142           66                 1               2
252                30           38                 3              10
253                13           80                 1               3
254                13           80                 1               3
255                 0           37                 2               8
256                 1           34                 1               2
257                 4           15                 1               4
258               198           79                 1               6
259                16           12                 2               2
260                83           99                 1               5
261                83           83                 1               4
262                 0            2                 1               2
263                 3           14                 1               3
264                 4           10                 3               2
265               121           83                 5               6
266               121           83                 5               6
267                 2           17                 6               3
268                55           37                 1               5
269                 8           13                 1               4
270                67           40                 1               6
271                45           52                 1               3
272                 7            8                 1               1
273               149          116                 1               3
274                 1           18                 4               4
275                 1            1                 0               0
276                69          138                 1               5
277                16          116                 3               4
278                 0            4                 2               2
279                 0            4                 2               2
280                24          166                 1               4
281                 4            1                 1               1
282                 4            1                 1               1
283                 0            3                 1               1
284                 0           59                11               8
285                55          241                 1               4
286                 1            3                 2               2
287                 1            3                 2               2
288                23           31                 2               5
289                 5           21                 1               9
290               175           95                 1               4
291                 4           40                 3               8
292               162           37                 5               4
293                24          157                 2               3
294                 0           22                 2               9
295                 7           23                 4               2
296                76           15                 1               4
297                21           10                 1               2
298                 2           21                 1               1
299               137          114                 1               5
300                 0           12                 1               3
301                 8            6                 3               3
302                 2           13                 1               1
303                 3           12                 3               3
304                 1            0                 2               1
305                77           42                 2               9
306                 1            7                 4               4
307                71           17                 1               5
308                 0            3                 3               2
309                 1            6                 2               2
310                94          219                 3               9
311                 7            3                 2               2
312                 3           13                 1               2
313                13           13                 2               1
314               114           45                 0               6
315                 0           12                 1               1
316                67            2                 5               6
317                 0           12                 2               1
318                42           14                 2               6
319                 0           13                 1               3
320                38          133                 1               5
321                13           16                 6               7
322                98           14                 4               9
323                 8           26                 1               5
324                 1           21                 2               2
325                 0            4                 2               2
326                 0            3                 1               1
327                32           16                 2               6
328                 0            6                 2               2
329                 2            3                 1               2
330                42          231                 1               5
331                42           21                10               7
332                 0          110                 2               5
333                34           17                 1               5
334                28          183                 1              11
335                14          205                 6               6
336                74           74                 1               6
337                 4           27                 2               3
338                12           36                 3              10
339                 8          177                 3              11
340                46           15                 1               7
341                32          192                 5              11
342                43           29                 4               9
343                 0            3                 2               2
344                 0            0                 1               1
345               102           12                 1               4
346                65           76                 1               3
347                65           76                 1               3
348                 5            3                 1               1
349                 8          246                 1               2
350                 2            3                 1               1
351                26           47                 2               7
352                 9           45                 2               4
353                12          127                 1               7
354                23           50                 2               6
355                25          122                 1               7
356                22           43                 1               5
357                 0           22                 1               3
358                 3           32                 4               3
359                18            6                 4               4
360                 3            1                 3               2
361                13           13                 1               3
362                 4           24                 1               7
363               141           28                 1               5
364                24           38                 1              11
365                38            0                 1               6
366                60           30                 1               8
367               110            6                 1               3
368                 3           96                 1               3
369               152           35                 1               2
370                29           49                 2               3
371                25           77                 1               6
372                 4           16                 1               2
373                 3            2                 1               3
374                 3            2                 1               3
375                 0           12                 4               5
376                 0           72                 5               6
377                 0            1                 1               1
378               138           80                 1               5
379                 0            3                 3               2
380                 0            1                 1               0
381                 0           18                 5               6
382                 0            9                 2               3
383                25           12                 1               4
384                 0            2                 2               1
385                 3          144                 2               5
386                 3            8                 1               1
387                27           44                 1               8
388                 7           12                 2               3
389                 7           12                 2               3
390                 3           18                 4               3
391                33          172                 1               5
392                40           40                 1               7
393                28           21                12               7
394                16           33                 2              10
395                 9           31                 4               5
396                12           28                 2               4
397                12           28                 2               4
398                17          120                 1               4
399                 0            1                 2               1
400                 0            1                 2               1
401                 7           11                 1               8
402                 0            6                 1               1
403                 0           41                 1               8
404                69           76                 3               5
405                17          141                 1               6
406                17          141                 1               6
407                38          248                 3               6
408               112           28                 1               8
409                16           82                 2               8
410                24           82                 5               5
411                24           82                 5               5
412                70          196                 1               4
413                44            0                 1               4
414                 9           44                10               7
415                47            9                 3               9
416                19           30                 4               5
417                 3            4                15               0
418                 4          139                 6               7
419                 1           12                 2               1
420                 0            9                 1               4
421                 0            9                 1               4
422                 9           38                 2               7
423                 0            2                 1               2
424                 1            4                 3               2
425                28           42                 3               4
426                 0           24                 3               5
427                 4           12                 3               2
428                 1            4                 2               3
429                 1            4                 2               3
430                 0            1                 1               1
431                 0           28                 8              10
432                 0            2                 1               1
433                 3           12                 1               2
434               115           38                 0               4
435               115           38                 0               4
436                 0           11                 2               8
437                15            6                 1               4
438                15            6                 1               4
439                 0           46                 1              10
440                 3            3                 1               1
441                23           93                 1               3
442                 0           15                 3               6
443                 1           12                 4               3
444                 6           24                 4               4
445                29           77                 3               3
446                59           35                 2               5
447                59           35                 2               5
448                76          190                 6               5
449                68           45                 1               7
450                68           45                 1               7
451                 2           11                 2               1
452                85           15                 1               4
453                 1            0                 2               2
454                 0           14                 1               1
455                 0           27                 3               7
456                 1            7                 2               1
457                 1            7                 2               1
458                14            5                 3               4
459                14            5                 3               4
460                 0            2                 1               1
461                 0            0                 1               0
462                28          153                 1               3
463                 0           66                 2               4
464                21           75                 1               4
465                21           75                 1               4
466                 5           29                 7               4
467                16          134                 6               7
468                 2           47                 3               5
469                47           37                 3               8
470                47           37                 3               8
471                 0          174                 6              10
472                 0          174                 6              10
473                 0            2                 1               1
474                 8            5                 2               3
475               126           75                 1               6
476                 2            6                 2               2
477                 2           18                 1               3
478                 0            6                 1               1
479                 0            6                 1               1
480                 0            1                 1               0
481                 7           28                 2               9
482                 1           14                 2               3
483                82           33                 0               4
484                40           26                 1               5
485                 1            1                 2               2
486                58            0                 1               8
487                 0            3                 2               2
488                 0          152                 5               3
489                 0           20                 1               6
490                 4           44                 5               4
491                 0            3                 1               1
492                 9          170                 7              10
493                 9          170                 7              10
494                 5          182                 5               8
495                61           78                 1              10
496               163           20                 0               5
497                24           12                 4               7
498                64           23                 2               8
499                 3            7                 6               4
500                 1            0                 1               2
501                21           42                 1               8
502                15           20                 4               2
503                91           68                 1               3
504                21           10                 2               2
505                19           66                11               6
506                 3           24                 2               3
507                14          169                 4               8
508               151          108                 1               4
509                10          106                 5               5
510                10          106                 5               5
511                 0           16                 3               3
512                11           72                 2               6
513                24           97                 2               7
514                 0           60                 3               8
515                14           56                 1               7
516                14           56                 1               7
517                16           16                 1               3
518                 1           30                 1               2
519               137           45                 1               3
520               137           45                 1               3
521                 0           24                 1               3
522                17           38                 2               3
523                38          114                 1               8
524                21           27                 1               6
525                 0            0                 1               5
526                 1           27                 2               2
527                10           20                 1               5
528                44           44                 1               6
529                 0            4                 1               1
530                47           26                 2               6
531                 0           24                 3               6
532                 0           92                 3               2
533               133          233                 1               4
534                 3           20                 4               9
535                45          205                 2               3
536                54           31                 1               3
537                34           57                 2               2
538                95           79                 0               6
539                11           48                 2               2
540                 0           12                 1               1
541                 6           21                 1               2
542                 3            5                 2               1
543                 4            5                 1               2
544                 3           45                 4               3
545                31          146                 2               7
546               120          134                 2               6
547                38           38                 1               8
548                 0           15                 2               1
549                32           40                 5              10
550                 2            5                 1               1
551               116           89                 1               7
552                18          198                 6               6
553                20           91                 4               7
554                 9            4                 3               7
555               125           17                 7              11
556                 2          176                 4               7
557                 0            0                 1               0
558                 3           16                 1               1
559                18           21                 1               4
560                67           14                 1               4
561                22           15                 1               3
562                22           34                 1              10
563                76           21                 2               6
564               144           96                 1               3
565               144           96                 1               3
566               122           30                 1               7
567                57           31                 3               7
568                10           15                 2               3
569                41          196                 4               2
570                91           91                 5               9
571                 3           15                 3               4
572                97           32                 1               2
573                97           32                 1               2
574                37           86                 4              10
575                20          110                 1               5
576                56           42                 4               9
577                 8          196                 2               9
578                27           24                 1               7
579                10          108                 2              10
580                 0           63                 2              11
581                 0            3                 2               3
582                 5            9                 1               2
583                 5            9                 1               2
584                17          171                 2               7
585                81          183                 1               5
586               106           44                 1               3
587                12          242                 3               5
588                32           47                 2               3
589                 2            5                 4               4
590                 0           72                 2               3
591                11           37                 5               3
592                11           37                 5               3
593                88           58                 1               8
594                 1           25                 2               2
595                14            5                 4               4
596                11           50                 8               6
597               185          111                 1               5
598               130           54                 1               3
599               120           40                 1               5
600                15           39                 9               5
601                15           39                 9               5
602                 2           20                 4               3
603                 1           36                 2               3
604                 1           36                 2               3
605                 1           36                 2               3
606                38           15                 3               5
607                 4           29                 2               1
608                 3           34                 4               7
609               178          158                 1              10
610                 3           50                 2               4
611                20          101                 1               4
612                 0            1                 2               1
613                15           42                 1               4
614                 0            1                 1               1
615                 4           27                 2               3
616                 1            2                 0               0
617                 5           10                 1               1
618                 0           27                 6               8
619                 8          124                 1               7
620                 1            5                 1               1
621                 1            5                 1               1
622                 0            3                 2               2
623                18           47                 2               3
624                73          146                 2               3
625                48           41                 1               2
626                23           28                 0               3
627                20            9                 1               2
628                74          111                 1               5
629                35           11                 1               5
630                 0           25                 1               5
631                61           45                 1               8
632               138          118                 1               4
633                61           11                 2               5
634                61           11                 2               5
635                 1           23                 2               4
636                10           43                 3               3
637               101          232                 4              11
638                23           66                 5               6
639                10          227                 2               7
640                53          107                 2               7
641                 6           92                 4               6
642                21          203                 1               2
643                19           53                 2               4
644                 3            3                 3               2
645                43           16                 2               8
646                43           16                 2               8
647                 0            6                 1               0
648                 2            9                 4               3
649                71           81                 1               4
650                32           48                 1               7
651                 1            6                 2               1
652               137          114                 1               7
653                 9           12                 1               4
654                 9           19                 3               8
655                 3            7                 3               2
656                 3            7                 3               2
657                14           47                 4               6
658               106          141                 4               4
659                 2           18                 1               1
660                 0           35                 5               8
661                 4           17                 2               2
662                 1            4                 2               2
663                 0            5                 2               2
664                 2           50                 4               3
665                16          142                 1               5
666                 4           12                 3               2
667                 4           12                 3               2
668                 3           11                 1               1
669                60           50                 1               9
670                 9          117                 2               7
671                 9          117                 2               7
672                 0          200                 2               7
673                49           27                 4               7
674                 5           27                 5              10
675                18           18                 1               7
676                 7           13                 3               2
677                10           34                 6               4
678                26           38                 1               3
679                15           25                 4               3
680               107          107                 1               3
681                 0           34                 6               6
682               143          143                 0               5
683                 4           95                 6               7
684                24           84                 1               6
685                 0           46                 4              10
686                30           53                 2               8
687                66           99                 1               5
688                 0            2                 1               1
689                 0            1                 2               1
690                37           18                 1               5
691               112           41                 6               3
692                13           39                 2               5
693                 0           45                 1               1
694                 0            6                 2               2
695               105          134                 2               5
696                 1            1                 1               2
697                 0           27                 5               5
698                64          224                 1               4
699                82           71                 1               9
700                82           71                 1               9
701                 3            5                 1               1
702               111           15                 1               7
703                21          207                 0               9
704                26          138                 3               3
705                41           49                 3               3
706                13           36                 3               7
707               108           28                 1               8
708                 2           20                 2               1
709                 2           20                 2               1
710                 2           20                 2               1
711                 2           20                 2               1
712                54           32                 1               1
713                 8           35                 5               5
714                15           11                 5               6
715                 0            7                 1               1
716                 2           12                 4               3
717                10          154                 7              11
718                26          117                 1               3
719                12           88                 3               6
720                 0            8                 0               1
721                 0            0                 1               1
722                 0          216                 1               3
723                 1            2                 2               2
724                 2            5                 4               3
725                12           25                 4               9
726                28          152                 7              11
727                19           19                 2               4
728                11           51                 2               3
729                 0           41                 3               6
730                 1            6                 2               1
731               101           59                 2               6
732                30            0                 3               4
733               138           30                 4               9
734               179           89                 3               8
735               118           26                 1               5
736                 9           12                 4               5
737                 7           10                 3               2
738                 7           23                 4               7
739                 0            1                 1               1
740                 3          102                 2               4
741               133           63                 1               7
742               133           63                 1               7
743                46          139                 1               4
744                 0           38                 1               6
745                11           92                 5               9
746                13           70                 2               7
747                66           43                 1               3
748                 0           18                 3               2
749                 7           34                 3               4
750                 1            4                 1               0
751                 0            8                 2               2
752                 0           91                 5               4
753                 0           34                 4               7
754                38           38                 9               5
755                14           14                 6               8
756                 0          192                 2               7
757                 0          192                 2               7
758                40           26                 1               3
759                 3            5                 1               1
760                 0            6                 1               1
761                35           43                 2               7
762                58           43                 1               3
763                60           24                 1               3
764                 6            7                 1               2
765                 0            9                 3               2
766                 6            3                 1               1
767                 0           80                 2               5
768                 0           80                 2               5
769                75          117                 4               8
770                23           29                 2               6
771                51           86                 1               7
772                 1           21                 3               3
773               105           51                 0               5
774                13           17                 3               4
775                 5            3                 2               1
776                26            8                 4               7
777               152           76                 1               6
778               152           76                 1               6
779                 8           39                 4               4
780                58          151                 1               3
781                26           13                 1               3
782                93           54                 2               6
783                12           73                 5              10
784                 0          119                 7               7
785                 4           17                 2               2
786                 6          132                10               9
787                38           48                 1               4
788                50           50                 3               7
789               103           33                 1               6
790                 0            5                 2               1
791                21           12                 1               6
792                27           53                 1               6
793                 5           14                 2               3
794                33          112                 1               7
795                24           24                 3               4
796                 1            8                 1               1
797                16           10                 3               7
798                 5           41                 5              11
799                44           14                 1               6
800                84          108                 1               9
801                 4          191                 5               8
802                55           32                 1               4
803                24           97                 2               8
804                 0            9                 2               1
805                29           14                 1               5
806                13           52                 3               5
807                 0            5                 2               2
808                 1            0                 2               2
809                55          130                 1               5
810                30           30                 2               7
811                30           30                 2               7
812                 7           23                 2               4
813                 0            4                 1               1
814               161           94                 2               5
815                 1            5                 1               1
816                 4           11                 1               3
817                 4           11                 1               3
818                 1           31                 4               3
819                 0            0                 1               1
820                 2           15                 4               3
821                 0          223                 1               5
822                 0          223                 1               5
823                 0           28                 1               9
824                21           49                 3               5
825               147           63                 1               6
826                 1            3                 4               4
827               194           64                 1               7
828                 0          137                 7               4
829                44           58                 2               2
830                30           41                 1               2
831                 3           19                 3               3
832                 1           10                 2               2
833                 0          100                 3               7
834                46           27                 1               3
835                71           35                 3              11
836                10           48                 4               8
837                 2           42                 6               4
838                76           61                 1               3
839                54           38                 1               2
840                12          101                 4               4
841                12          101                 4               4
842                18           54                 1               3
843                 0            4                 2               3
844                50            0                 1               4
845                15           37                 2               4
846                83           29                 2               8
847                76          124                 1               3
848                35           79                 1               6
849                35           79                 1               6
850                 6           64                 1               2
851                91          182                 1               9
852                 0            6                 1               1
853                 0            6                 1               1
854                 1           20                 2               4
855               118          247                 2               9
856                 0           24                 3              10
857                 6           82                 2               6
858                24           58                 8               9
859                 1            6                 1               0
860                 1            6                 1               0
861                 1           39                 4               3
862                14           14                 4               7
863                 7           25                 3               3
864                 0          142                 4              11
865                56           37                 6               3
866                31           31                 3               4
867                61           20                 1               5
868                72           48                 6              10
869                84          241                 1               3
870                84          241                 1               3
871                10           15                 7               3
872               147           15                 4               8
873                 1           11                 1               1
874                66           58                 2               3
875                29           48                 0               9
876               192          108                 1               3
877                34            0                 1               3
878                33           33                 3               8
879                61           27                 1               5
880               192           89                 4               6
881                 9           12                 3               3
882                 2           40                 2               3
883                 1            0                 1               1
884                 2           16                 3               2
885                 2           16                 3               2
886                 0          163                 3               3
887                 0          163                 3               3
888                 4            7                 4               2
889                 0            2                 2               4
890                23           17                 7               7
891                17           58                 1               5
892                 0            5                 5               3
893               109           92                 9               5
894                43           64                 6               8
895                 0           57                 4               5
896                 0            7                 1               1
897                 0            7                 1               1
898                27           54                 4               9
899                27           54                 4               9
900                 5           49                 5               5
901                89           89                 1               9
902                89           89                 1               9
903                22           22                 3              11
904                32           43                 2              11
905                10           21                 3               8
906                10           21                 3               8
907               163           31                 1               3
908                53           35                 2               6
909                 6           20                 2               1
910                91           64                 2               4
911                 3            3                 2               2
912               102           88                 1               5
913                 0            0                 1               0
914                 1            4                 1               1
915                 2           10                 2               4
916                45          126                 1               4
917                21           78                 5               7
918                 0            6                 1               1
919                 0            6                 1               1
920                 0           27                 8               6
921                26           18                 4               3
922                26           59                 6               5
923                 0           66                 4               7
924                 0            1                 2               1
925                 0            1                 2               1
926                 0            1                 2               1
927                 0            4                 5               3
928                 1           29                 4               3
929                 4           39                 3               8
930                 1            7                 1               3
931                58            6                 2               5
932                10           20                 2               6
933                 4            2                 1               1
934                 3           18                 1               3
935                 0            3                 3               4
936                54            6                 2               2
937                 2           39                 5               5
938                13           21                 6               4
939                 2           23                 3               2
940                38          100                 2               6
941               123          141                 5               6
942               150           26                 4               4
943                 1           49                 1               4
944                 6           15                 6               4
945                97           21                 1               6
946               194           34                 2               7
947                 0            7                 1               1
948                 0            4                 2               2
949                 3            6                 4               6
950                 0            2                 1               1
951                23          154                 2               8
952                23          154                 2               8
953                30           41                 2               5
954                 0           23                 5               5
955                 6          120                 2               7
956                48           30                 4               6
957                86          144                 8               6
958                61           53                 1               3
959                61           53                 1               3
960               153           34                 1              10
961                 0           70                 8               9
962                12           27                 7               6
963                15            3                 1               2
964                13            4                 3               3
965                68          103                 1               4
966                32           75                 8               9
967                 0            9                 7               8
968                23            5                 2               2
969                 1            5                 2               1
970                17           35                 1               4
971               165          203                 1               3
972                 0           26                 3               6
973                19           38                 2               4
974                19           38                 2               4
975                 0           58                 4               6
976                 0            4                 1               1
977               172            9                 1               7
978                22           13                 4               3
979               116          149                 8               8
980                 2           10                 4               3
981                 7            5                 6               4
982                55          166                 1               4
983                43           10                 1               4
984                 5           14                 3               6
985                 5           12                 1               3
986                66           33                 1               7
987                29           11                 4               4
988                 2           13                 2               3
989                 5           38                 1               3
990                 7           15                 1               2
991                 1            7                 5               5
992                49           42                 2               7
993                49           42                 2               7
994                41           69                 5               8
995                 6           36                 5              11
996                 0           89                 3               5
997                40          241                 1               4
998                16           33                 1               4
999                 0            7                 1               2
1000              125           57                 0               4
1001              125           57                 0               4
1002                7           57                 1               9
1003                7           57                 1               9
1004                0           10                 1               1
1005                2           10                 1               1
1006                2           10                 1               1
1007               11           30                 3               2
1008                1           30                 1               2
1009               54          130                 1               4
1010               54          130                 1               4
1011               75           32                 1               9
1012                6           10                 1               1
1013                1           18                 1               3
1014               10            0                 1               2
1015               53           53                 1               2
1016               35          107                 1               6
1017               35          107                 1               6
1018              151           97                 1               4
1019               20          125                 3               2
1020                2            3                 3               3
1021               91           15                 1               6
1022                1            3                 2               2
1023               24           41                 7               6
1024               11           33                 5              10
1025              176           58                 0               7
1026                2           56                 6               5
1027               51           34                 1               4
1028                2            2                 1               1
1029                0           19                 3               8
1030               29           29                 1               1
1031                1            3                 1               2
1032                1            5                 1               3
1033                0            7                 1               0
1034                1           26                 2               2
1035                0           24                 3               9
1036              120          190                 1               3
1037                6           27                 5               5
1038                0           88                 6               8
1039                0           88                 6               8
1040               58          176                11               8
1041               26           54                 1               6
1042                0           20                 2               5
1043               12           12                 5               7
1044                0            8                 7               8
1045                0            8                 7               8
1046                9           38                 1               4
1047               80           80                 1               8
1048               80           80                 1               8
1049               43           11                 1               4
1050                1            4                 2               4
1051                3            7                 1               1
1052               48          133                 3               4
1053               14          112                 1               5
1054                0           19                 2               6
1055               30           10                 1               3
1056               30           45                 1               4
1057               30           45                 1               4
1058                0            0                 2               2
1059               11           11                 7               3
1060               30           27                 1               4
1061               30           27                 1               4
1062              108           54                 2               4
1063               31          190                 1               8
1064               22           89                 1               2
1065               22           89                 1               2
1066               12           20                 3               4
1067               43           43                 2               4
1068               12           60                 4               3
1069               98           65                 4               6
1070               92          162                 2               7
1071                1            9                 1               1
1072              107           67                 1               5
1073               71           26                 1              11
1074                8           23                 1               2
1075               15           50                 6               7
1076               15           50                 6               7
1077                0           26                 1               5
1078               10           25                 5               3
1079               46           38                 1               5
1080              185          185                 2               6
1081                0          205                 1               8
1082                0            2                 2               1
1083               35          162                 3               4
1084              187           93                 1               4
1085               24          109                 7               4
1086               24          109                 7               4
1087               31          191                 1               4
1088               31          191                 1               4
1089               31          191                 1               4
1090               21           86                 3               2
1091               45          118                 2               6
1092               10          204                 2               8
1093                0           12                 5              11
1094               70           70                 4               9
1095                0           76                 2               8
1096                8            4                 3               3
1097                5           12                 3               1
1098                1            7                 2               1
1099                0            1                 2               1
1100               15           30                 7               9
1101              153          173                 1               2
1102               43           73                 2               6
1103               49           49                 1               6
1104               78           34                 2               2
1105              115           19                 1               8
1106               61          245                 1               4
1107               23           23                 1               5
1108               88           88                 3               8
1109               13           13                 1               4
1110                7            7                 2               7
1111               86           93                 2               8
1112                1           13                 2               2
1113                0           27                 2               3
1114                0           27                 2               3
1115               24          106                 3               7
1116               20           30                 2               9
1117              132          111                 2               9
1118              112           28                 4               5
1119                0           10                 3               3
1120               12          108                 1               4
1121               45           26                 1               7
1122                6           13                 2               2
1123                1           24                 1               2
1124               23           92                 1               4
1125                3           26                 7               6
1126                3           26                 7               6
1127              191          122                 1               3
1128               80           34                 1               7
1129               22            7                 1               6
1130                5            8                 3               2
1131               17           17                 1               6
1132               89           17                 1               4
1133               94           53                 1               3
1134                4            7                 3               4
1135                7           63                 3               7
1136                0           36                 1               4
1137                0          185                 2               4
1138                0           43                 8               7
1139                3           11                 5               7
1140                0           47                 3               8
1141               66           38                 2               5
1142               13           93                 2               6
1143                0            1                 1               1
1144                0           16                 3               2
1145                0           54                 5              10
1146               57           33                 1               5
1147               57           33                 1               5
1148                0           10                 1               2
1149               17          106                 2               7
1150              174          195                 2               7
1151                9          125                 7               4
1152              103           57                 1               4
1153               17           49                 1               4
1154               44           28                 3               3
1155               93           80                 3               8
1156              107          161                 4               8
1157               26          174                 2               9
1158                2            5                 1               1
1159               95           38                 1               6
1160                0            2                 3               3
1161                0            2                 3               3
1162               76           48                 1               6
1163              148           33                 1               7
1164                3           51                 3               7
1165                6           52                 4               6
1166                4           52                 9               6
1167               45          172                 0               5
1168               45          172                 0               5
1169               36           55                 3               5
1170                0            5                 2               2
1171               14           47                 3               2
1172               35           35                 2               5
1173                0            0                 3              11
1174               40           53                 1               4
1175               13           40                 3               3
1176               28            0                 3               6
1177               28            0                 3               6
1178                0            2                 2               1
1179                0           43                 3               8
1180                1            0                 1               1
1181                0           30                 5               6
1182               87           54                 3              11
1183               87           54                 3              11
1184                0            2                 1               3
1185                4          106                 2               6
1186                9           24                 3               6
1187              102           73                 1               6
1188                4           24                 1               1
1189                0           19                 3               2
1190                9           38                 2               2
1191                9           38                 2               2
1192               80           11                 5               9
1193               80           11                 5               9
1194               80           11                 5               9
1195                4            4                 3               3
1196                0            2                 2               2
1197                2           24                 3               4
1198                0            6                 2               2
1199               29           44                 1               4
1200               91           57                 1               3
1201               10            0                 1               3
1202                7           56                 5               4
1203                9           98                 7               6
1204                4           73                 4               8
1205               42           29                 1               4
1206                7          131                 1               9
1207                7          131                 1               9
1208                7          131                 1               9
1209               38            0                 1               5
1210                4          126                 9               8
1211              160          147                 1               3
1212                0            2                 5               3
1213               13           75                 5               4
1214                0            3                 4               3
1215               20            8                 1               2
1216                0            4                 1               1
1217                0            4                 1               1
1218                8           26                 1               4
1219                1            8                 1               2
1220                0            2                 1               1
1221               88           53                 1               5
1222               54           54                 1               4
1223                0            8                 1               5
1224                0            3                 2               1
1225               72           48                 4               6
1226               72           48                 4               6
1227                3            3                 1               1
1228                0           13                 6               5
1229               37          121                 1               4
1230                1            5                 1               1
1231                9           38                 2               3
1232                0            3                 1               1
1233                0           34                 3               4
1234                0           34                 3               4
1235                0          224                 1               5
1236              123          114                 2               4
1237               64           14                 2               5
1238               27          142                 2               6
1239               91           81                 1               5
1240               91           81                 1               5
1241                6            3                 1               1
1242                0            0                 1               1
1243                2           15                 1               1
1244                0           21                 6               7
1245                0           21                 6               7
1246                7           10                 2               4
1247              196           53                 1               5
1248               87           54                 1               3
1249               25           64                 3               6
1250               78           84                 3               9
1251              143           33                 1               5
1252               38          153                 2               4
1253               18           18                 1               2
1254                0            2                 2               1
1255              141          224                 1               4
1256                0           10                 2               2
1257               83           35                 1               5
1258               92          129                 1               3
1259               13           73                 5               4
1260               12          182                 1               2
1261                7           26                 1               2
1262                0           70                 4               2
1263                8           65                 7               6
1264               12           76                 1               2
1265               56           12                 2               7
1266                0            2                 2               1
1267              115           66                 1               5
1268                0            2                 2               1
1269               70           29                 1               6
1270               92          117                 1               4
1271                6           20                 1               1
1272              107           46                 1               3
1273                7           36                 1               3
1274               11           47                 3               7
1275                7            1                 1               1
1276              107           59                 3               7
1277               40           81                 1               6
1278                1           24                 4               4
1279                0           91                 4               5
1280              169           70                 1               2
1281                0           11                 1               4
1282               72          125                 2               7
1283                1            1                 1               1
1284               39          187                 6               6
1285               39          187                 6               6
1286                0           26                 1               3
1287                0           26                 1               3
1288                0           42                 3               6
1289                1            4                 1               1
1290               60           50                 1               3
1291               27           71                 6               4
1292                1           67                 5               3
1293               12           63                 1               4
1294               20           33                 2               3
1295              136          170                 2               8
1296                6           99                 7               7
1297                6           99                 7               7
1298               72          168                 0               6
1299                0            5                 4               8
1300                5           49                 3               5
1301                2           38                 6               5
1302              133          145                 1               5
1303              133          145                 1               5
1304               24          218                 2               5
1305               35           70                 4               5
1306               44           29                 1               4
1307                0          195                 5              10
1308               14          168                 3               3
1309               12           12                 4              10
1310              139          153                 1               5
1311                0           15                 4               6
1312                0           15                 4               6
1313               14           52                 2               1
1314                6           64                 6               7
1315               33           16                 2               4
1316                1           69                 4               3
1317                0           10                 8               5
1318                7           85                 1               5
1319               21            6                 7               4
1320                5            0                 1               1
1321                1            9                 1               1
1322                1            6                 1               3
1323                1            7                 3               1
1324              105          126                 1               7
1325               15          215                 5               2
1326               12           29                 5               4
1327                8           40                 2               3
1328                0            0                 1               2
1329               48           85                 1               8
1330               10           20                 1               2
1331               10           20                 1               2
1332               14           14                 2               3
1333               14           14                 2               3
1334               24           33                 5               4
1335               25           22                 1               7
1336               17           46                 4               4
1337                1            8                 1               1
1338               51          122                 6               4
1339               39           41                 1               3
1340                7           12                 2               2
1341               10           20                 2               9
1342               30          174                 1               2
1343               62           17                 1               4
1344               31           35                 1               4
1345               12           12                 4               6
1346               35           80                 1               3
1347                4           25                 3               2
1348                0            4                 2               2
1349               12           10                 1               3
1350              161           30                 0               5
1351                0            3                 2               1
1352               54          163                 1               9
1353                6           11                 1               2
1354               35           62                 3               9
1355                8           88                 5               8
1356               20           20                 0               4
1357               50           40                 1               3
1358               26           35                 8               6
1359               69           69                 6               5
1360                0           27                 5               2
1361                0            2                 1               1
1362                0           75                 5               7
1363              150          128                13               2
1364               51           17                 1               3
1365               11           23                 4               7
1366               18           54                 1               6
1367                0           12                 1               3
1368                7           41                 1               4
1369                4           34                 2               6
1370               85           47                 2               4
1371               36           67                 1               4
1372               13           20                 1               3
1373               49           99                 1               5
1374               40           40                 1               4
1375               74           55                 1              10
1376               72           72                 1               3
1377                0           16                 1               6
1378               40          126                 1               5
1379               42          147                 1               4
1380                1           20                 2               2
1381               58           29                 1               2
1382               49           41                 3               6
1383               24           62                 4               6
1384               33           66                 1               2
1385               28           44                 1               6
1386               20           51                 2               4
1387               12           12                 1               6
1388               15           66                 1               5
1389                8           14                 3               3
1390                8           14                 3               3
1391               19           39                 1               7
1392                2           30                 5               6
1393                0            9                 2               2
1394               47           11                 2               4
1395                5           14                 3               6
1396                5           14                 3               6
1397                1            4                 2               2
1398               10           28                 4               3
1399                8          108                 1               5
1400               12           12                 2               5
1401              103          120                 5               9
1402               12           77                 2               9
1403               86           37                 1               3
1404                6           97                13               8
1405              118           88                 1               4
1406                0            9                 1               8
1407              100           16                 1               5
1408               43           91                 1               2
1409                3            2                 2               2
1410                8            4                 3               4
1411                5           20                 1               3
1412               28           28                 1               3
1413              134           38                 0               6
1414               16           74                 1               6
1415                1            2                 2               1
1416                3            6                 1               0
1417                0            3                 4               2
1418               12            5                 1               2
1419                9           18                 3               3
1420                9           18                 3               3
1421                7           45                 1              11
1422                0           18                 2               2
1423               70           98                 1               3
1424               58           29                 3               2
1425               95           95                15               9
1426               59           65                 2               8
1427                6            2                 1               1
1428                1            1                 3               3
1429               24           65                 2               6
1430                1            3                 1               1
1431                0           48                 1               2
1432                1            4                 1               2
1433               40           12                 3               3
1434               36           29                 1               5
1435               40           84                 1               3
1436               40           84                 1               3
1437                0          129                 1              11
1438                0            5                 1               1
1439                0           21                 0               7
1440              122          174                 6              11
1441                2           14                 4               3
1442                0          130                 4               2
1443               30           10                 2               3
1444               42           30                 5               4
1445                1            2                 2               3
1446                1            2                 2               3
1447              129           55                 1               5
1448                9           33                 1               1
1449                0            0                 1               1
1450               42            5                 1               4
1451               32           15                 1               5
1452               93            0                 1               4
1453              161           27                 0               4
1454              161           27                 0               4
1455                2            8                 3               2
1456                0           11                 1               2
1457                0            1                 1               0
1458              126           60                 3               7
1459               81           40                 2               6
1460               19           59                 1               5
1461               23           41                 6               8
1462                0           43                 1               7
1463                0           43                 1               7
1464               50          159                 4               4
1465               50          159                 4               4
1466               96           32                 1               5
1467               96           32                 1               5
1468               47           95                 4               5
1469               19           89                 6               8
1470                0           30                 2               7
1471                0            7                 1               2
1472                0           10                 3               2
1473                1            4                 2               1
1474               25           43                 3               4
1475                9           14                 2               3
1476               75           54                 1               3
1477              194           21                 1               7
1478                0           16                 2               1
1479               33           16                 1               2
1480              166          249                 1               5
1481               89          111                 1               9
1482              143           82                 1               6
1483               16            8                 1               7
1484               10            3                 2               2
1485                2            9                 2               3
1486                7           78                 3               5
1487                9           57                 2               6
1488                0            3                 1               2
1489                8           24                 3               2
1490                3            9                 1               2
1491                8            7                 4               2
1492               17           36                 2              11
1493               57           61                 4               4
1494               42          210                 1               5
1495                0           15                 2              11
1496               54           81                 0               9
1497               40           42                 4               4
1498                0           18                 6               3
1499                0           31                 3               2
1500               41           66                 6               4
1501               34          116                 8               4
1502               45          180                 5               8
1503                5            7                 1               4
1504                0           11                 1               2
1505                1           79                 6               5
1506                0            3                 1               1
1507                1            1                 0               0
1508               97           52                 1               7
1509               27           16                 4               4
1510               48           22                 3               3
1511               48           16                 1               8
1512                1           11                 1               1
1513                2            6                 4               2
1514               19           76                 4               6
1515               51           10                 3               7
1516                2            9                 1               1
1517                2            9                 1               1
1518                0            1                 1               0
1519               34           86                 1               5
1520                0          108                 7              11
1521                2           20                 2               6
1522               14           24                 1               7
1523                0          242                 2               8
1524               14           42                 4               7
1525                2           19                 7               4
1526              134          115                 1              11
1527                8            8                 7               8
1528              149           33                 1              11
1529                4            8                 1               2
1530                4            8                 1               2
1531                0           11                 2               1
1532              112           30                 1               3
1533                0            3                 1               2
1534               10          145                 1               6
1535              173           51                 1               4
1536                2            7                 2               3
1537                0            4                 1               0
1538                0           23                 2               9
1539               11            9                 2               2
1540                0          178                 1               7
1541               11          114                 2               3
1542                0            4                 2               9
1543                5            3                 2               2
1544                0            8                 2               2
1545                7            0                 1               1
1546               38            0                 1               2
1547               31           40                 1               6
1548                2            1                 1               2
1549                3           28                 3               2
1550               25           46                 2               4
1551                8           19                 5               2
1552                8          100                 4               4
1553               56           56                 1               8
1554                3            2                 1               1
1555                3            2                 1               1
1556               35           17                 1               4
1557              174           41                 1               4
1558               22          125                 2               5
1559               11            5                 4               7
1560               21           56                 3               9
1561               21           99                 3               5
1562               21           99                 3               5
1563                0           14                 1               1
1564               22           22                 1               6
1565                1            4                 1               1
1566                6           33                 4               3
1567              147           42                 1               6
1568               38          134                 1               6
1569                6           41                 2               3
1570                6           41                 2               3
1571               17            2                 5               2
1572                4           34                 2               1
1573               54           54                 1               2
1574               67            8                 3               6
1575              122           41                 1               5
1576                7           77                 5              10
1577                5           13                 1               2
1578               11          182                 2               8
1579               11          182                 2               8
1580              108           27                 0               7
1581              188          232                 2               9
1582               13            7                 4               4
1583               33          200                 1               4
1584               33          200                 1               4
1585                0            1                 1               1
1586                0           13                 6               8
1587               45           11                 1               2
1588               37           18                 1               5
1589               39           33                 1               6
1590               69           37                 1               7
1591                0           26                 1               9
1592                1            1                 0               0
1593                9           30                 2               1
1594                2            4                 6               4
1595                4           36                 2               3
1596               35          107                 2              11
1597               92           15                 1               4
1598               92           15                 1               4
1599                0           16                 1               3
1600              182            0                 1               4
1601                5            5                 3               7
1602              107          107                 2               9
1603                9           28                 1               3
1604                5           15                 2               2
1605                1           76                 4               3
1606               22            7                 2               6
1607               57           85                 1               4
1608                2           10                 2               1
1609                1            3                 1               1
1610                9           24                 1               4
1611                9           24                 1               4
1612                0            0                 1               1
1613                6           27                 2               6
1614               24           39                 2               2
1615                0           36                 4               3
1616                0           36                 4               3
1617                0           36                 4               3
1618               21          229                 4               5
1619               95          153                 1               4
1620                4           18                 2               1
1621                6           15                 2               3
1622              156           37                 1               4
1623               98          151                 1               6
1624               98          151                 1               6
1625               32           54                 1               2
1626               19           23                 2               4
1627               14           83                 5               5
1628               59          131                 3               5
1629                6           26                 2               3
1630               17           53                 8              11
1631               17          133                 7               3
1632                6           29                 3              10
1633               28          172                 2               3
1634               14           56                 1               6
1635                5           12                 4               6
1636               37           37                 1              10
1637                1           31                 3               4
1638              163           61                 1               4
1639                6           15                 1               5
1640                2           46                 2               4
1641               48            6                 1               2
1642               17           24                 5               6
1643                0           12                 1               4
1644                0           12                 1               4
1645               19           12                 3               5
1646                6           30                 2               9
1647                6           19                 5               9
1648              114          135                13               6
1649               78           54                 2               5
1650                0            5                 1               1
1651              151           57                 6              11
1652               35            0                 1               4
1653                1            4                 1               1
1654                3            0                 1               2
1655               24           36                 2               8
1656               56           84                 1               6
1657                7            1                 2               2
1658               10           90                 4               3
1659                1            5                 2               1
1660                1            5                 3               2
1661               25          100                 1               3
1662               46           46                 3               5
1663                0           42                 4               5
1664               13           21                 2               3
1665               10           32                 3               7
1666               30           84                 2               6
1667               79           19                 1               5
1668                0            2                 2               2
1669               63           79                 1               4
1670               14           35                 3               8
1671                0            0                 1               2
1672                0            4                 1               1
1673                0           10                 1               3
1674               11           80                 3               1
1675                0            1                 1               1
1676               28          155                 1              11
1677                0           59                 3               3
1678                0           25                 1               1
1679               29           73                 7               2
1680               46          153                 3               9
1681               38          172                 1               4
1682               38          172                 1               4
1683               78            6                 3               5
1684                3           42                 7               5
1685               98          119                 2               9
1686                8           12                 2               2
1687               12           24                 1               2
1688              192          241                 1               4
1689               66           35                 2               3
1690                1            5                 1               1
1691               26           17                 2              11
1692                0           19                 2               9
1693                6           29                 1               2
1694               15           61                 1               2
1695               15           61                 1               2
1696               14           34                 3               6
1697              189          126                 1               4
1698               29           14                 1               4
1699               16          176                 2              11
1700                0            4                 2               1
1701               17          227                 1               2
1702               17          227                 1               2
1703                0            8                 2               2
1704                8           14                 1               2
1705                5           10                 2               5
1706                4            4                 2               3
1707              195           71                 2               7
1708                7           10                 4               5
1709                3           43                 5               7
1710               15           32                 1               2
1711                6           90                 2               7
1712               12           12                 1               1
1713                5           13                 1               2
1714                0           92                 1               3
1715               42          149                 1               5
1716              129           30                 6              11
1717              151          107                 2               4
1718              137          107                 3              10
1719               35           26                 1               5
1720                9          199                 7               9
1721                0            5                 3               2
1722                0            5                 3               2
1723                5           35                 4               5
1724                5           35                 4               5
1725                8           58                 3               7
1726                1           18                 1               1
1727                8           17                 1               3
1728               12          108                 1               4
1729               56          175                 1               3
1730                8            4                 3               2
1731               10            6                 3               6
1732               17           69                 2               4
1733                0           10                 1               8
1734               19           22                 2               3
1735               56          154                 1               3
1736                0            0                 2               2
1737              107           93                 2               8
1738              107           93                 2               8
1739              160           17                 1               4
1740               12           12                 4               5
1741                0           47                 4              10
1742                0           92                 4               6
1743               74           18                 1               5
1744               50          133                 3               5
1745                1           16                 2               1
1746               11          241                 1               3
1747                7           11                 1               4
1748                6           10                 1               4
1749               27           15                 5               5
1750                5            4                 1               2
1751              127          165                 1               3
1752                3            6                 1               2
1753                0            3                 2               1
1754                0            3                 2               1
1755               28           56                 0               4
1756                1            1                 2               1
1757              145           72                 1               5
1758               61           61                 4              10
1759                6           41                 2               2
1760                5          145                 1               6
1761                1            8                 3               3
1762                1           32                 7               4
1763                1           32                 7               4
1764               41           83                 4               5
1765               14          175                 1               2
1766               33            8                 4               6
1767                0           19                 1               1
1768              143           33                 1               4
1769                0            0                 1               0
1770               19           54                 6               7
1771               80           93                 1               9
1772               92          149                 3               7
1773               26          123                 4               6
1774               20           22                 1               6
1775               63          210                 0               6
1776                0            7                 1               1
1777                7           30                 3               9
1778              118           38                 1               4
1779              118           38                 1               4
1780                0            1                 1               0
1781               15           31                 1               4
1782                8           17                 2               4
1783               26           35                 1               1
1784               26           35                 1               1
1785               14           28                 2               3
1786               13           13                 4               8
1787               66            0                 1               6
1788               66            0                 1               6
1789                0          191                 3               2
1790                3           20                 2               5
1791                0            6                 1               3
1792              146          139                 3               5
1793               38           70                 2               6
1794              102           40                 1               5
1795              102           40                 1               5
1796              112           37                 3              10
1797                0           15                 1               1
1798               44           17                 2               6
1799                8           29                 2               5
1800                3           32                 2               4
1801              169           61                 2              10
1802                2            7                 1               1
1803                0            2                 2               2
1804                0           10                 1               2
1805                3           50                 2               5
1806              105           57                 2               7
1807                1           31                 3               4
1808                0           15                 3               3
1809                5           12                 1               2
1810               59           27                 2              11
1811               59           27                 2              11
1812              124           38                 2               6
1813               24           12                 4               3
1814               14           35                 3              10
1815                2            1                15               0
1816               12            7                 1               3
1817              163           20                 1               6
1818               30           76                 1               5
1819               30           76                 1               5
1820                5           29                 5              11
1821                6           26                 6               6
1822                0            7                 2               2
1823               34           51                 1               6
1824              113          102                 1               8
1825                3            7                 1               1
1826               46           30                 1               9
1827                0            4                 6               4
1828                0            4                 6               4
1829              102          102                10               4
1830               31          187                 1               7
1831                5           15                 4               6
1832               38          183                 2               7
1833                0            4                 1               2
1834                0            4                 1               2
1835               14           43                 1               2
1836               35           61                 3               5
1837                1            4                 1               1
1838                0            4                 2               1
1839                0            4                 2               1
1840                4           25                 1               2
1841               26           34                 3               9
1842               48           78                 2               5
1843                8           16                 1               1
1844                5           14                 2               6
1845              165           63                 1               5
1846                0          144                 1               8
     NumCatalogPurchases NumStorePurchases NumWebVisitsMonth Response Complain
1                      4                 6                 1        1        0
2                      3                 7                 5        1        0
3                      2                 5                 2        0        0
4                      0                 2                 7        0        0
5                      7                 5                 2        1        0
6                     10                 7                 6        1        0
7                      1                 3                 5        0        0
8                      2                 9                 4        0        0
9                      2                 9                 4        0        0
10                     6                10                 1        0        0
11                     1                 6                 4        0        0
12                     6                 6                 1        1        0
13                     1                 5                 4        0        0
14                     1                 5                 4        1        0
15                     0                 3                 4        0        0
16                     0                 3                 8        0        0
17                     0                 2                 7        0        0
18                     2                 5                 7        0        0
19                     1                 8                 5        0        0
20                     1                 3                 4        0        0
21                     1                 8                 7        0        0
22                     8                 6                 6        0        0
23                     1                 4                 7        0        0
24                     2                 8                 8        0        0
25                     2                 8                 8        0        0
26                     0                 3                 5        0        0
27                     4                 6                 2        0        0
28                     1                 5                 6        0        0
29                     8                 9                 2        0        0
30                     0                 2                 6        0        0
31                     1                 7                 8        1        0
32                     3                 4                 1        1        0
33                     3                13                 1        0        0
34                     0                 3                 4        0        0
35                     4                 9                 4        1        0
36                     5                12                 3        0        0
37                     9                12                 6        0        0
38                     2                 5                 5        1        0
39                     0                 4                 8        0        0
40                     5                 4                 3        1        0
41                     0                 3                 8        0        0
42                     4                 5                 4        0        0
43                     2                 8                 5        1        0
44                     2                 4                 8        0        0
45                     8                 6                 3        0        0
46                     0                 2                 8        0        0
47                     6                 6                 1        1        0
48                     1                 2                 7        1        0
49                     0                 3                 7        0        0
50                     2                 4                 5        0        0
51                     8                13                 0        0        0
52                     2                 8                 7        1        0
53                     0                 3                 5        0        0
54                     0                 4                 7        0        0
55                     1                 8                 7        1        0
56                     1                 2                 6        1        0
57                     3                12                 5        0        0
58                     6                 7                 1        0        0
59                     0                 3                 8        1        0
60                     0                 3                 8        0        0
61                     6                 7                 2        1        0
62                     3                 4                 7        0        0
63                     2                 6                 5        0        0
64                     5                13                 6        0        0
65                     4                 9                 5        0        0
66                     1                 2                 9        1        0
67                     4                 8                 8        1        0
68                     9                13                 3        0        0
69                     4                 7                 2        0        0
70                     4                 7                 2        0        0
71                     1                 6                 7        1        0
72                     3                11                 3        0        0
73                     0                 2                 7        0        0
74                     0                 3                 7        0        0
75                     3                 5                 4        1        0
76                     1                 6                 2        0        0
77                     7                12                 3        0        0
78                     6                 4                 2        0        0
79                     2                12                 2        0        0
80                     1                 4                 4        0        0
81                     1                 4                 4        0        0
82                     2                 2                 7        1        0
83                     6                 5                 4        0        0
84                     2                 9                 4        1        0
85                     2                11                 6        0        0
86                     8                 7                 2        1        0
87                     1                 6                 8        1        0
88                     1                 6                 8        0        0
89                     1                 6                 8        1        0
90                     4                10                 8        0        0
91                     4                10                 8        1        0
92                     4                 7                 6        1        0
93                     2                 5                 5        0        0
94                     6                 8                 2        1        0
95                     1                 7                 7        0        0
96                     1                 3                 6        0        0
97                     1                 3                 7        0        0
98                     1                 3                 6        1        0
99                     0                 2                 6        0        0
100                    2                11                 5        0        0
101                    5                 7                 7        1        0
102                    5                 7                 7        0        0
103                    8                13                 1        1        0
104                    5                 9                 3        0        0
105                    2                10                 4        0        0
106                    4                 7                 4        0        0
107                    0                 4                 5        0        0
108                    0                 4                 5        0        0
109                    1                 6                 6        0        0
110                    1                 5                 7        0        0
111                    1                 4                 7        0        0
112                    2                 8                 8        0        0
113                    5                 9                 7        0        0
114                    4                 8                 2        0        0
115                    4                 8                 2        0        0
116                    2                12                 7        0        0
117                    3                 6                 4        0        0
118                    0                 4                 7        0        0
119                    6                 4                 3        1        0
120                    0                 3                 6        0        0
121                    9                10                 2        0        0
122                    9                13                 2        1        0
123                    3                12                 6        0        0
124                    0                 3                 7        0        0
125                    5                 7                 8        1        0
126                    5                 7                 8        1        0
127                    9                 7                 2        0        0
128                    4                10                 1        1        0
129                    0                 2                 7        0        0
130                    9                 5                 3        0        0
131                    1                 4                 7        0        0
132                    0                 4                 7        0        0
133                    0                 4                 7        0        0
134                    0                 3                 7        0        0
135                    0                 3                 7        0        0
136                    4                12                 3        0        0
137                    5                13                 4        1        0
138                    2                 7                 4        0        0
139                    3                 8                 1        0        0
140                    5                 9                 6        1        0
141                    3                 6                 6        0        0
142                    6                12                 5        0        0
143                    5                12                 6        0        0
144                    2                 9                 2        0        0
145                    0                 4                 3        0        0
146                   10                 8                 1        1        0
147                    6                 8                 1        0        0
148                    6                10                 5        0        0
149                    4                 3                 5        0        0
150                    8                 6                 6        0        0
151                    1                 6                 8        1        0
152                    1                 6                 8        1        0
153                   10                 6                 5        1        0
154                    0                 2                 7        0        0
155                    1                 4                 7        0        0
156                    5                10                 3        0        0
157                    5                 8                 3        1        0
158                    0                 2                 8        0        0
159                    9                 9                 2        1        0
160                    8                13                 2        0        0
161                    0                 3                 7        0        0
162                    4                 9                 6        0        0
163                    9                 4                 5        1        0
164                    2                10                 3        0        0
165                    3                 6                 6        1        0
166                    3                 8                 5        0        0
167                    2                10                 3        0        0
168                    9                11                 5        0        0
169                    7                10                 4        0        0
170                    3                 5                 5        0        0
171                    4                13                 5        0        0
172                    2                 5                 8        1        0
173                    2                 5                 8        1        0
174                    1                 5                 9        1        0
175                    1                 6                 6        1        0
176                    6                 7                 2        0        0
177                    1                 3                 8        1        0
178                    0                 0                 1        0        0
179                    2                 7                 3        0        0
180                    2                 2                 6        1        0
181                    0                 2                 7        0        0
182                    0                 3                 4        0        0
183                    3                 7                 5        0        0
184                    0                 3                 3        0        0
185                    1                 8                 5        0        0
186                   10                 5                 1        0        0
187                    1                 6                 4        0        0
188                    2                 7                 3        0        0
189                    6                 6                 3        1        0
190                    6                 6                 3        1        0
191                    1                 2                 9        1        0
192                    4                10                 2        0        0
193                    3                 7                 8        1        0
194                    3                13                 2        0        0
195                    1                 3                 8        0        0
196                    2                 4                 8        1        0
197                    1                 8                 8        1        0
198                    6                 7                 4        0        0
199                    1                 5                 8        0        0
200                    0                 2                 7        0        0
201                    1                 3                 7        0        0
202                    0                 4                 5        0        0
203                    2                 9                 4        0        0
204                    4                 7                 2        1        0
205                    1                 2                 8        1        0
206                    4                 5                 5        0        0
207                    1                 4                 6        0        0
208                    1                 8                 6        0        0
209                    3                13                 5        0        0
210                    3                13                 5        0        0
211                    4                 4                 6        1        0
212                    1                 6                 5        0        0
213                    4                 6                 4        1        0
214                    1                 2                 7        1        0
215                    1                 2                 7        1        0
216                    4                 6                 4        1        0
217                    6                 7                 4        1        0
218                    6                 7                 4        1        0
219                    7                11                 5        0        0
220                    5                 7                 4        1        0
221                    1                 4                 6        0        0
222                    3                 6                 7        1        0
223                    3                 4                 7        1        0
224                    0                 2                 6        0        0
225                    1                 3                 5        0        0
226                    1                 3                 5        0        0
227                    2                 9                 7        1        0
228                    1                 4                 7        1        0
229                    0                 3                 7        0        0
230                    2                 7                 8        0        0
231                    2                 5                 7        0        0
232                    4                 9                 4        0        0
233                    2                10                 8        0        0
234                    1                 6                 4        0        0
235                    2                 8                 6        0        0
236                    1                 4                 7        0        0
237                    1                 3                 6        0        0
238                    1                 3                 6        0        0
239                    1                 4                 8        0        0
240                    2                 4                 7        0        0
241                    5                12                 6        0        0
242                   10                 5                 1        0        0
243                    0                 4                 6        0        0
244                    0                 4                 6        0        0
245                    4                 7                 3        0        0
246                    9                12                 1        0        0
247                    2                12                 5        0        0
248                    3                 4                 4        1        0
249                   11                11                 4        0        0
250                    6                 4                 2        1        0
251                    9                13                 1        0        0
252                    4                 7                 6        0        0
253                    6                11                 1        1        0
254                    6                11                 1        1        0
255                    3                13                 4        0        0
256                    1                 2                 7        1        0
257                    2                 4                 4        0        0
258                    7                 7                 3        1        0
259                    0                 3                 6        1        0
260                    6                 4                 3        1        0
261                    6                 5                 2        1        0
262                    0                 3                 5        0        0
263                    1                 3                 6        0        0
264                    1                 3                 5        1        0
265                    3                12                 4        0        0
266                    3                12                 4        0        0
267                    1                 6                 4        0        0
268                    6                 7                 2        0        0
269                    2                 9                 4        0        0
270                    4                10                 3        0        0
271                    2                 8                 3        0        0
272                    1                 3                 3        0        0
273                    3                 6                 1        0        0
274                    1                 3                 9        1        0
275                   28                 0                 1        0        0
276                    9                12                 3        0        0
277                    2                 3                 7        0        0
278                    0                 3                 7        0        0
279                    0                 3                 7        0        0
280                    6                 5                 2        1        0
281                    0                 3                 8        0        0
282                    0                 3                 8        0        0
283                    0                 2                 8        0        0
284                    3                 7                 7        1        0
285                    6                 8                 2        1        0
286                    0                 3                 7        0        0
287                    0                 3                 7        0        0
288                    4                12                 2        0        0
289                    1                 7                 6        0        0
290                    6                 4                 1        1        0
291                    1                 6                 6        0        0
292                    7                10                 2        0        0
293                    5                10                 6        0        0
294                    1                 5                 8        0        0
295                    2                 7                 8        0        0
296                   10                 9                 2        0        0
297                    1                 2                 9        1        0
298                    0                 3                 8        0        0
299                    9                11                 2        1        0
300                    0                 3                 8        0        0
301                    0                 4                 5        0        1
302                    0                 3                 5        0        0
303                    0                 4                 4        0        0
304                    1                 4                 4        0        0
305                    2                 9                 5        0        0
306                    1                 4                 7        0        0
307                    4                 8                 3        1        0
308                    1                 3                 5        0        0
309                    1                 4                 7        0        0
310                    1                 8                 9        1        0
311                    0                 4                 6        0        0
312                    1                 2                 8        1        0
313                    3                 6                 1        0        0
314                    7                12                 2        1        0
315                    1                 3                 6        0        0
316                    1                 5                 7        0        0
317                    1                 4                 3        0        0
318                    4                10                 6        0        0
319                    1                 2                 7        0        0
320                    8                 6                 3        1        0
321                    2                 4                 9        1        0
322                    5                 7                 5        0        0
323                    3                 5                 3        0        0
324                    0                 3                 8        0        0
325                    0                 3                 5        0        0
326                    0                 3                 7        0        0
327                    2                 9                 5        0        0
328                    1                 3                 5        0        0
329                    0                 4                 5        0        0
330                   11                 6                 3        1        0
331                    4                 9                 5        1        0
332                    3                 3                 6        0        0
333                    6                 5                 2        1        0
334                    6                 8                 4        0        0
335                    3                13                 7        0        0
336                    3                13                 3        0        0
337                    1                 3                 7        0        0
338                    3                 5                 5        1        0
339                    4                 8                 8        0        0
340                    2                12                 4        0        0
341                    4                 9                 8        1        0
342                    3                 4                 7        0        0
343                    0                 3                 5        0        0
344                    0                 3                 4        0        0
345                    6                 9                 1        0        0
346                   10                13                 1        0        0
347                   10                13                 1        1        0
348                    0                 3                 8        0        0
349                   10                10                 1        0        0
350                    0                 2                 8        1        0
351                    1                 7                 8        0        0
352                    1                 7                 5        0        0
353                    5                 7                 6        1        0
354                    3                 5                 7        0        0
355                    6                 8                 3        1        0
356                    4                 4                 2        0        0
357                    4                10                 1        0        0
358                    1                 4                 8        0        0
359                    2                12                 3        0        0
360                    0                 4                 3        0        0
361                    2                 5                 1        0        0
362                    1                 8                 5        0        0
363                   11                 5                 3        0        0
364                   10                10                 5        1        0
365                    3                10                 3        0        0
366                    3                 4                 4        1        0
367                    3                13                 2        0        0
368                    3                 6                 3        0        0
369                    8                13                 1        0        0
370                    3                10                 3        0        0
371                    3                 9                 4        1        0
372                    0                 3                 7        0        0
373                    0                 2                 9        1        0
374                    0                 2                 9        0        0
375                    1                 5                 8        0        0
376                    4                 6                 7        0        0
377                    0                 2                 7        0        0
378                    3                 8                 2        1        0
379                    0                 4                 5        0        0
380                    0                 3                 3        0        0
381                    1                 5                 8        1        0
382                    1                 8                 4        0        0
383                    5                10                 2        0        0
384                    0                 3                 8        0        0
385                    4                 4                 5        0        0
386                    0                 3                 7        0        0
387                    5                11                 8        1        0
388                    0                 4                 7        0        0
389                    0                 4                 7        0        0
390                    1                 4                 6        1        0
391                    6                 5                 2        0        0
392                    4                10                 6        1        0
393                    4                 9                 7        0        0
394                    6                 9                 6        0        0
395                    1                 4                 8        0        0
396                    1                 6                 7        0        0
397                    1                 6                 7        0        0
398                    8                 4                 8        0        0
399                    0                 4                 4        0        0
400                    0                 4                 4        0        0
401                    2                 4                 7        0        0
402                    0                 2                 6        0        0
403                    3                11                 3        0        0
404                    3                13                 4        0        0
405                    4                13                 2        0        0
406                    4                13                 2        0        0
407                    3                 5                 3        0        0
408                    8                 5                 3        1        0
409                    2                 7                 7        0        0
410                    5                12                 5        0        0
411                    5                12                 5        0        0
412                    5                12                 3        0        0
413                    5                13                 3        0        0
414                    1                 8                 7        0        0
415                    5                10                 7        0        0
416                    1                 4                 8        1        0
417                   28                 1                 0        0        0
418                    1                 8                 7        0        0
419                    1                 2                 7        1        0
420                    4                 8                 2        0        0
421                    4                 8                 2        0        0
422                    3                 4                 4        0        0
423                    0                 3                 3        0        0
424                    1                 4                 3        0        0
425                    3                 4                 5        0        0
426                    1                 6                 7        0        0
427                    0                 4                 7        0        0
428                    1                 4                 8        0        0
429                    1                 4                 8        0        0
430                    0                 3                 5        0        0
431                    4                 6                 8        0        0
432                    0                 2                 4        0        0
433                    1                 6                 4        0        0
434                    6                 9                 1        0        0
435                    6                 9                 1        0        0
436                    3                 6                 4        0        0
437                    1                 5                 4        0        0
438                    1                 5                 4        0        0
439                    4                13                 6        1        0
440                    0                 3                 6        0        0
441                    6                12                 1        0        0
442                    1                 7                 6        0        0
443                    1                 3                 6        0        0
444                    4                10                 3        0        0
445                    3                12                 2        0        0
446                    2                11                 5        1        0
447                    2                11                 5        1        0
448                    6                 8                 3        0        0
449                    6                12                 3        1        0
450                    6                12                 3        1        0
451                    0                 3                 7        0        0
452                    7                10                 1        0        0
453                    0                 3                 7        0        0
454                    1                 2                 4        0        0
455                    6                 6                 4        0        0
456                    1                 2                 8        0        0
457                    1                 2                 8        1        0
458                    1                 4                 7        0        0
459                    1                 4                 7        0        0
460                    0                 2                 8        0        0
461                    0                 3                 5        0        0
462                    5                 3                 6        1        0
463                    1                 5                 7        0        0
464                    5                 7                 2        0        0
465                    5                 7                 2        0        0
466                    6                 8                 3        0        1
467                    4                 6                 6        0        0
468                    1                 4                 7        0        0
469                    9                 7                 7        0        0
470                    9                 7                 7        0        0
471                    5                10                 8        1        0
472                    5                10                 8        0        0
473                    0                 2                 8        0        0
474                    0                 4                 7        0        0
475                    5                 8                 9        1        0
476                    0                 4                 5        0        0
477                    0                 4                 7        0        0
478                    0                 3                 7        0        0
479                    0                 3                 7        0        0
480                    0                 3                 5        0        0
481                    3                 8                 6        0        0
482                    1                 3                 6        0        0
483                    6                 5                 1        0        0
484                   10                 5                 1        1        0
485                    0                 3                 7        0        0
486                    4                10                 6        0        0
487                    0                 3                 7        0        0
488                    4                 8                 8        0        0
489                    6                13                 4        0        0
490                    1                 5                 6        0        0
491                    0                 2                 7        0        0
492                    2                12                 7        0        0
493                    2                12                 7        0        0
494                    5                 4                 8        1        0
495                    3                10                 6        0        0
496                   11                 5                 2        1        0
497                    8                13                 6        0        0
498                    2                 8                 4        0        0
499                    2                 8                 5        0        0
500                    1                 3                 3        0        0
501                    2                10                 4        0        0
502                    1                 4                 6        1        0
503                    4                 8                 1        1        0
504                    1                 4                 3        0        0
505                    3                 5                 4        0        0
506                    0                 3                 8        0        0
507                    2                10                 7        0        0
508                    7                12                 2        0        0
509                    1                 5                 6        0        0
510                    1                 5                 6        0        0
511                    0                 4                 8        0        0
512                    2                 2                 9        1        0
513                    5                 6                 4        0        0
514                    1                 8                 6        0        0
515                    5                 8                 4        0        0
516                    5                 8                 4        0        0
517                    4                 7                 1        1        0
518                    1                 3                 7        1        0
519                    4                10                 1        0        0
520                    4                10                 1        0        0
521                    0                 4                 7        0        0
522                    3                 7                 2        0        0
523                    3                13                 4        0        0
524                    7                 4                 3        0        0
525                    7                 4                 3        0        0
526                    1                 3                 6        0        0
527                    1                 5                 5        0        0
528                    7                11                 2        0        0
529                    0                 3                 7        0        0
530                    3                 5                 4        0        0
531                    4                 8                 5        1        0
532                    2                11                 8        0        0
533                    3                 8                 3        0        0
534                    0                 4                10        0        0
535                    6                 8                 3        0        0
536                    4                 9                 1        0        0
537                    5                10                 6        0        0
538                    5                13                 2        0        0
539                    1                 5                 2        0        0
540                    0                 3                 4        0        0
541                    0                 3                 8        0        0
542                    0                 4                 5        0        0
543                    0                 3                 7        0        0
544                    4                 6                 3        0        0
545                    1                 7                 5        0        0
546                    9                 5                 2        0        0
547                    4                 7                 4        1        0
548                    1                 2                 4        0        0
549                    5                 4                 9        0        0
550                    0                 3                 4        0        0
551                    3                13                 4        0        0
552                    8                 4                 7        1        0
553                    1                 5                 7        0        0
554                    1                 8                 7        0        0
555                   11                 5                 7        1        0
556                    2                 3                 9        1        1
557                    0                 3                 3        0        0
558                    0                 3                 5        0        0
559                    1                 7                 2        0        0
560                    2                10                 2        0        0
561                    3                 5                 1        0        0
562                    7                10                 4        0        0
563                    8                12                 3        0        0
564                    4                10                 1        0        0
565                    4                10                 1        1        0
566                    4                 4                 4        0        0
567                    1                 7                 5        0        0
568                    1                 6                 6        0        0
569                   11                 5                 2        0        0
570                    3                 7                 7        0        0
571                    2                 8                 4        0        0
572                    8                 6                 1        0        0
573                    8                 6                 1        0        0
574                    3                13                 7        0        0
575                    1                 4                 7        0        0
576                    4                 8                 5        0        0
577                    2                12                 7        0        0
578                    3                 7                 3        1        0
579                    4                12                 6        0        0
580                    2                10                 7        0        0
581                    0                 3                 8        0        0
582                    0                 3                 6        0        0
583                    0                 3                 6        0        0
584                    6                 5                 5        0        0
585                   10                 6                 2        1        0
586                    8                12                 1        0        0
587                    2                11                 8        0        0
588                    2                 7                 3        0        0
589                    2                 5                 5        0        0
590                    2                 3                 7        0        0
591                    4                 3                 6        0        0
592                    4                 3                 6        0        0
593                    7                 7                 4        1        0
594                    1                 2                 8        0        0
595                    1                 7                 5        0        0
596                    1                 7                 8        0        0
597                    6                 7                 2        0        0
598                    5                 8                 1        1        0
599                    5                10                 3        1        0
600                    1                 8                 7        1        0
601                    1                 8                 7        1        0
602                    1                 3                 7        0        0
603                    0                 4                 8        0        0
604                    0                 4                 8        0        0
605                    0                 4                 8        0        0
606                    3                13                 3        0        0
607                    1                 2                 4        0        0
608                    1                 5                 9        0        0
609                    2                 8                 5        0        0
610                    3                 6                 3        0        0
611                    7                10                 1        1        0
612                    0                 3                 6        0        0
613                    1                 7                 2        0        0
614                    0                 2                 6        0        0
615                    1                 3                 6        1        0
616                    0                 1                 1        0        0
617                    0                 3                 4        0        0
618                    1                 7                 8        0        0
619                    3                13                 6        0        0
620                    0                 2                 9        0        0
621                    0                 2                 9        0        0
622                    1                 4                 5        0        0
623                    2                 9                 8        0        0
624                    4                 5                 7        1        0
625                    9                13                 5        1        0
626                    5                13                 0        0        0
627                    1                 4                 3        0        0
628                    6                 7                 2        1        0
629                    2                11                 3        0        0
630                    1                 5                 7        0        0
631                    1                 5                 8        0        0
632                    7                 9                 1        0        0
633                    2                 7                 5        0        0
634                    2                 7                 5        0        0
635                    0                 4                 8        0        0
636                    1                 3                 9        1        0
637                    6                 8                 7        0        0
638                    3                 5                 8        0        0
639                    3                 3                 7        0        0
640                    8                 5                 5        0        0
641                    2                 5                 8        0        0
642                    7                 9                 4        0        0
643                    4                 8                 5        0        0
644                    0                 4                 4        0        0
645                    1                 8                 6        0        0
646                    1                 8                 6        0        0
647                    1                 2                 3        0        0
648                    1                 3                 5        0        0
649                    4                 7                 1        0        0
650                    5                12                 3        0        0
651                    0                 3                 5        0        0
652                    9                 9                 3        1        0
653                    1                 7                 7        0        0
654                    2                 6                 7        0        1
655                    0                 3                 7        0        0
656                    0                 3                 7        0        0
657                    3                13                 9        0        0
658                    3                 6                 3        0        0
659                    1                 3                 2        0        0
660                    3                12                 5        0        0
661                    0                 3                 6        0        0
662                    0                 3                 6        0        0
663                    0                 3                 7        0        0
664                    1                 8                 4        0        0
665                    7                10                 3        0        0
666                    1                 4                 6        0        0
667                    1                 4                 6        0        0
668                    0                 2                 7        0        0
669                    7                 9                 5        0        0
670                    1                 8                 5        0        0
671                    1                 8                 5        0        0
672                    6                11                 5        0        0
673                    3                 7                 6        0        0
674                    1                 6                 9        0        0
675                    6                 5                 5        1        0
676                    0                 4                 8        0        0
677                    2                 9                 9        1        0
678                   11                 5                 1        1        0
679                    1                 4                 7        0        0
680                    5                12                 1        0        0
681                    1                 4                 8        0        0
682                    7                 9                 1        0        0
683                    2                 6                 7        0        0
684                    7                 9                 2        1        0
685                    4                 7                 8        1        0
686                    2                11                 5        0        0
687                    6                 4                 3        1        0
688                    0                 3                 8        0        0
689                    0                 3                 6        0        0
690                   10                13                 3        1        0
691                    2                10                 9        0        0
692                   10                 5                 8        1        0
693                    3                 5                 1        0        0
694                    0                 3                 6        0        0
695                    7                12                 1        0        0
696                    0                 3                 7        0        0
697                    1                 7                 5        0        0
698                    6                 4                 1        0        0
699                    3                13                 4        0        0
700                    3                13                 4        0        0
701                    0                 3                 6        0        0
702                    5                12                 2        1        0
703                    8                13                 3        1        0
704                    7                10                 3        1        0
705                    3                 6                 8        0        0
706                    1                 3                 9        1        0
707                    7                11                 6        0        0
708                    1                 2                 5        1        0
709                    1                 2                 5        0        0
710                    1                 2                 5        0        0
711                    1                 2                 5        1        0
712                    8                 7                 0        0        0
713                    6                12                 2        0        0
714                    2                 6                 7        0        0
715                    0                 2                 7        0        0
716                    3                 5                 4        0        0
717                    2                12                 6        0        0
718                    5                 3                 4        0        0
719                    1                 5                 6        0        0
720                    0                 1                 1        0        0
721                    0                 3                 4        0        0
722                    6                 6                 1        1        0
723                    0                 3                 7        0        0
724                    0                 4                 7        0        0
725                    4                 6                 6        0        0
726                    5                 8                 7        0        0
727                    1                 4                 7        0        0
728                    3                 8                 2        0        0
729                    2                10                 4        0        0
730                    1                 2                 5        0        0
731                    4                 8                 4        0        0
732                    6                 5                 3        1        0
733                    5                 7                 5        0        0
734                    5                10                 5        0        0
735                    2                10                 4        0        0
736                    1                 6                 6        0        0
737                    0                 4                 7        0        0
738                    1                 6                 8        0        0
739                    0                 2                 8        0        0
740                    5                 3                 6        0        0
741                    7                10                 3        0        0
742                    7                10                 3        1        0
743                    5                12                 3        0        0
744                    4                 9                 7        1        0
745                    6                12                 6        0        0
746                    3                 5                 8        0        0
747                    2                 6                 2        0        0
748                    1                 3                 5        0        0
749                    1                 4                 7        0        0
750                    0                 3                 4        0        0
751                    0                 4                 5        0        0
752                    2                 8                 5        0        0
753                    1                 7                 8        1        0
754                    2                12                 8        0        0
755                    4                 8                 8        0        0
756                    4                 3                 6        1        0
757                    4                 3                 6        0        0
758                    5                12                 1        0        0
759                    1                 3                 2        0        0
760                    0                 3                 4        0        0
761                    5                 8                 4        0        0
762                   11                 8                 1        1        0
763                   10                 5                 2        0        0
764                    1                 3                 4        0        0
765                    0                 3                 8        0        0
766                    0                 3                 8        0        0
767                    3                 6                 6        1        0
768                    3                 6                 6        1        0
769                    3                11                 5        0        0
770                    1                 5                 7        0        0
771                    4                 5                 9        1        0
772                    1                 4                 7        1        0
773                    8                 9                 4        1        0
774                    2                 9                 3        0        0
775                    0                 3                 7        0        0
776                    3                13                 5        0        0
777                    6                 7                 3        0        0
778                    6                 7                 3        0        0
779                    4                 5                 2        0        0
780                    8                11                 1        0        0
781                    6                11                 1        0        0
782                    4                11                 4        0        0
783                    3                 5                 7        0        0
784                    3                 4                 8        0        0
785                    1                 2                 7        1        1
786                    4                 6                 8        1        0
787                    2                 5                 8        0        0
788                    6                12                 4        0        0
789                    7                13                 1        0        0
790                    0                 3                 4        0        0
791                    4                 9                 2        0        0
792                    2                 9                 2        0        0
793                    2                 4                 4        0        0
794                    6                11                 4        1        0
795                    1                 3                 8        0        0
796                    0                 3                 6        0        0
797                    3                 7                 5        0        0
798                    1                 6                 8        0        0
799                    6                10                 3        0        0
800                    3                 6                 5        1        0
801                    1                 7                 8        0        0
802                    6                 8                 2        0        0
803                    1                 7                 7        0        0
804                    1                 2                 5        0        0
805                    5                12                 2        0        0
806                    1                 4                 8        0        0
807                    0                 3                 6        0        0
808                    1                 4                 5        0        0
809                    6                 7                 2        1        0
810                    3                13                 8        0        0
811                    3                13                 8        0        0
812                    2                 8                 4        0        0
813                    0                 2                 6        0        0
814                    9                 6                 2        0        0
815                    0                 3                 7        0        0
816                    0                 3                 8        0        0
817                    0                 3                 8        0        0
818                    2                 2                 9        1        0
819                    0                 3                 6        0        0
820                    0                 4                 4        0        0
821                    7                12                 2        0        0
822                    7                12                 2        0        0
823                    2                 9                 6        0        0
824                    4                 8                 4        0        0
825                    7                 9                 2        0        0
826                    1                 4                 8        0        0
827                    7                 9                 4        1        0
828                    4                 8                 8        1        0
829                    5                 5                 6        1        0
830                    2                 5                 2        0        0
831                    1                 2                 6        0        0
832                    0                 3                 7        0        1
833                    2                 9                 7        0        0
834                    3                 7                 2        0        0
835                    5                11                 8        0        0
836                    1                 8                 8        0        0
837                    1                 5                 7        0        0
838                    6                 4                 2        0        0
839                    3                 6                 1        0        0
840                    3                12                 8        0        0
841                    3                12                 8        0        0
842                    4                 6                 1        0        0
843                    0                 3                 8        0        0
844                    8                13                 2        1        0
845                    0                 3                 7        0        0
846                    4                 6                 6        0        0
847                    4                 7                 1        0        0
848                    6                11                 3        0        0
849                    6                11                 3        0        0
850                    2                 2                 5        0        0
851                    7                 9                 5        1        0
852                    1                 3                 4        0        0
853                    1                 3                 4        0        0
854                    1                 4                 6        0        0
855                    3                 4                 5        0        0
856                    2                10                 5        0        0
857                    1                 5                 7        0        0
858                    2                 5                 8        0        0
859                    0                 3                 6        0        0
860                    0                 3                 6        0        0
861                    1                 4                 8        0        0
862                   10                 5                 5        0        0
863                    2                 4                 5        0        0
864                    6                 5                 8        0        0
865                    8                 4                 4        1        0
866                    3                 8                 4        0        0
867                    4                12                 2        0        0
868                    2                 6                 9        0        0
869                    7                 8                 1        0        0
870                    7                 8                 1        0        0
871                    1                 6                 5        0        0
872                    2                11                 6        0        0
873                    0                 3                 6        0        0
874                    3                 8                 2        0        0
875                    7                11                 3        1        0
876                    7                 8                 1        0        0
877                    4                 7                 1        0        0
878                    5                 9                 6        0        0
879                    7                 9                 2        0        0
880                   10                13                 4        0        0
881                    0                 4                 7        0        0
882                    2                 5                 4        0        0
883                    1                 3                 3        0        0
884                    1                 4                 4        0        0
885                    1                 4                 4        0        0
886                    5                 6                 2        0        0
887                    5                 6                 2        0        0
888                    1                 5                 6        0        0
889                    1                 5                 7        0        0
890                    2                 9                 6        0        0
891                    1                 6                 5        0        0
892                    1                 4                 7        0        0
893                    2                10                 6        0        0
894                    2                 7                 7        0        0
895                    2                 5                 6        0        0
896                    0                 2                 8        1        0
897                    0                 2                 8        0        0
898                    2                12                 5        0        0
899                    2                12                 5        0        0
900                    2                 4                 9        0        0
901                    7                13                 4        0        0
902                    7                13                 4        0        0
903                    5                11                 5        0        1
904                    4                11                 6        0        0
905                    3                 5                 6        0        0
906                    3                 5                 6        1        0
907                    6                12                 6        1        0
908                    3                 4                 2        0        0
909                    1                 4                 3        0        0
910                    2                11                 2        0        0
911                    0                 4                 5        0        0
912                   10                 7                 3        0        0
913                    0                 3                 4        0        0
914                    0                 2                 8        0        1
915                    2                 5                 7        1        0
916                    8                 5                 3        0        0
917                    2                11                 5        0        0
918                    0                 3                 5        0        0
919                    0                 3                 5        0        0
920                    3                 5                 7        0        0
921                    1                 5                 4        0        0
922                    2                12                 5        0        0
923                    5                10                 5        0        0
924                    0                 3                 8        0        0
925                    0                 3                 8        0        0
926                    0                 3                 9        0        0
927                    1                 4                 9        0        0
928                    0                 4                 9        0        0
929                    1                 7                 5        0        0
930                    1                 4                 4        0        0
931                    4                10                 4        0        0
932                    8                11                 2        0        0
933                    0                 3                 7        0        0
934                    0                 3                 8        0        0
935                    2                 8                 6        0        0
936                    1                 7                 2        0        0
937                    2                 4                 8        0        0
938                    2                 5                 6        0        0
939                    1                 4                 6        0        0
940                    6                 9                 3        0        0
941                    5                12                 3        0        0
942                    3                 6                 4        0        0
943                    0                 3                 8        1        0
944                    1                 5                 8        0        0
945                    4                 6                 5        0        0
946                    3                 6                 4        0        0
947                    1                 3                 5        0        0
948                    0                 4                 6        0        0
949                    1                 6                 7        0        0
950                    0                 3                 6        0        0
951                    9                 4                 6        0        0
952                    9                 4                 6        0        0
953                    2                 4                 5        0        0
954                    1                 5                 8        0        0
955                    4                 7                 5        0        0
956                    5                13                 4        0        0
957                    3                 5                 6        0        0
958                    4                 6                 1        0        0
959                    4                 6                 1        0        0
960                    2                11                 8        0        0
961                    1                 7                 8        0        0
962                    1                 4                 9        0        0
963                    0                 4                 5        0        0
964                    0                 3                 8        0        0
965                    2                10                 2        0        0
966                    1                 7                 9        0        0
967                    2                 6                 7        0        0
968                    1                 8                 2        0        0
969                    0                 4                 4        0        0
970                    3                 6                 1        0        0
971                    7                 9                 1        0        0
972                    3                 5                 6        0        0
973                    6                 4                 5        0        0
974                    6                 4                 5        0        0
975                    1                 7                 6        0        0
976                    0                 2                 6        0        0
977                    3                 4                 4        0        0
978                    1                 4                 7        1        0
979                    9                 8                 6        0        0
980                    1                 3                 5        0        0
981                    2                 5                 6        0        0
982                    4                10                 2        0        0
983                    7                 5                 1        0        0
984                    1                 5                 6        0        0
985                    0                 3                 7        0        0
986                    5                13                 3        0        0
987                    2                12                 4        0        0
988                    0                 4                 7        0        0
989                    1                 2                 8        0        0
990                    0                 3                 6        0        0
991                    0                 4                 8        0        0
992                   10                 5                 6        1        0
993                   10                 5                 6        1        0
994                    4                 9                 7        1        0
995                    1                 6                 9        1        0
996                    2                 4                 8        1        0
997                    9                 7                 1        1        0
998                    3                 5                 1        0        0
999                    0                 4                 3        0        0
1000                   6                 7                 1        0        0
1001                   6                 7                 1        0        0
1002                   2                 9                 5        0        0
1003                   2                 9                 5        0        0
1004                   1                 2                 5        0        0
1005                   0                 3                 6        0        0
1006                   0                 3                 6        0        0
1007                   0                 4                 4        0        0
1008                   0                 4                 6        0        0
1009                   4                 8                 2        0        0
1010                   4                 8                 2        0        0
1011                   3                 4                 4        0        0
1012                   0                 3                 8        0        0
1013                   1                 4                 5        0        0
1014                   0                 3                 6        0        0
1015                   7                 7                 0        0        0
1016                   8                 6                 3        0        0
1017                   8                 6                 3        0        0
1018                   4                 8                 2        0        0
1019                   3                 8                 3        0        0
1020                   0                 3                 8        0        0
1021                   5                12                 3        0        0
1022                   0                 3                 7        0        0
1023                   2                 5                 8        1        0
1024                   7                10                 6        0        0
1025                   9                10                 4        1        0
1026                   2                 5                 5        0        0
1027                   6                 6                 2        1        0
1028                   0                 3                 6        0        0
1029                   3                13                 6        0        0
1030                   2                 2                 4        0        0
1031                   0                 3                 7        0        0
1032                   0                 4                 7        0        0
1033                   1                 2                 4        0        0
1034                   2                 2                 7        0        0
1035                   5                 4                 7        1        0
1036                  10                13                 1        1        0
1037                   3                 5                 7        0        0
1038                   2                 6                 7        0        0
1039                   2                 6                 7        0        0
1040                   5                 9                 6        1        0
1041                   4                10                 2        0        0
1042                   2                 4                 7        0        0
1043                   6                 5                 6        1        0
1044                   2                 5                 7        0        0
1045                   2                 5                 7        0        0
1046                   2                 3                 7        0        0
1047                   6                 6                 3        0        0
1048                   6                 6                 3        0        0
1049                   2                 8                 3        0        0
1050                   0                 4                 7        0        0
1051                   0                 3                 5        0        0
1052                   4                 9                 3        0        0
1053                  11                 5                 2        1        0
1054                   2                 6                 6        0        0
1055                   5                 7                 1        0        0
1056                   9                10                 2        0        0
1057                   9                10                 2        0        0
1058                   0                 3                 8        0        0
1059                   1                 6                 6        0        0
1060                   2                 8                 4        0        0
1061                   2                 8                 4        0        0
1062                   6                 8                 3        0        0
1063                   4                 7                 3        0        0
1064                   5                 3                 3        0        0
1065                   5                 3                 3        0        0
1066                   1                 6                 6        0        0
1067                   4                 5                 2        0        0
1068                   4                11                 8        0        0
1069                   4                12                 6        0        0
1070                   4                10                 5        1        0
1071                   0                 2                 8        1        0
1072                  10                12                 6        1        1
1073                   8                 8                 5        0        0
1074                   1                 3                 6        0        0
1075                   1                 6                 8        1        0
1076                   1                 6                 8        1        0
1077                   9                 6                 2        0        0
1078                   1                 4                 6        0        0
1079                   3                13                 3        0        0
1080                   2                12                 3        0        0
1081                   5                 6                 3        0        0
1082                   0                 3                 4        0        0
1083                   4                12                 2        0        0
1084                   9                13                 1        0        0
1085                   2                10                 3        0        0
1086                   2                10                 3        0        0
1087                   4                11                 1        0        0
1088                   4                11                 1        0        0
1089                   4                11                 1        0        0
1090                   2                12                 5        0        0
1091                   2                11                 5        0        0
1092                   5                13                 4        0        0
1093                   3                 5                 6        0        0
1094                   6                 6                 6        0        0
1095                   5                11                 5        0        0
1096                   0                 4                 8        0        0
1097                   1                 4                 4        0        0
1098                   0                 3                 7        0        0
1099                   0                 3                 7        0        0
1100                   4                 8                 6        0        0
1101                   9                 4                 1        0        0
1102                   2                 8                 2        0        0
1103                   7                12                 3        0        0
1104                   4                10                 1        0        1
1105                   6                 5                 3        1        0
1106                  10                 7                 1        1        0
1107                   4                 7                 2        1        0
1108                  10                 4                 7        1        0
1109                   4                 7                 3        0        0
1110                   4                 9                 6        0        0
1111                   2                10                 5        0        0
1112                   0                 3                 8        0        0
1113                   0                 3                 7        0        0
1114                   0                 3                 7        0        0
1115                   5                11                 5        0        0
1116                   3                13                 6        0        0
1117                   5                11                 5        0        0
1118                   5                11                 3        0        0
1119                   4                 9                 8        0        0
1120                   4                10                 1        0        0
1121                  10                 6                 2        0        0
1122                   0                 3                 7        0        0
1123                   1                 2                 7        0        0
1124                   4                 9                 1        0        0
1125                   3                 5                 7        0        0
1126                   3                 5                 7        0        0
1127                   7                11                 1        0        0
1128                   8                12                 4        0        0
1129                   3                12                 4        0        0
1130                   1                 3                 8        0        0
1131                  11                10                 2        1        0
1132                   3                10                 2        1        0
1133                  10                 7                 2        1        0
1134                   0                 4                 9        0        0
1135                   5                 8                 5        0        0
1136                   4                10                 8        0        0
1137                   4                10                 6        1        0
1138                   2                 6                 8        0        0
1139                   2                 5                 6        0        0
1140                   2                 4                 7        0        0
1141                   5                 4                 3        0        0
1142                   1                 4                 7        0        0
1143                   0                 2                 8        0        0
1144                   2                 2                 8        0        0
1145                   3                 8                 7        0        0
1146                  10                 4                 6        1        0
1147                  10                 4                 6        1        0
1148                   0                 4                 6        0        0
1149                   6                10                 5        0        0
1150                   6                13                 4        0        0
1151                   3                 5                 5        0        0
1152                   3                10                 2        0        0
1153                   6                 7                 2        0        0
1154                   2                 6                 5        0        0
1155                   4                 8                 5        0        0
1156                   9                13                 5        0        0
1157                   5                 6                 6        1        0
1158                   0                 3                 7        0        0
1159                   6                 7                 2        0        0
1160                   0                 3                 7        0        0
1161                   0                 3                 7        0        0
1162                   5                12                 2        0        0
1163                  11                10                 4        1        0
1164                   1                 5                 8        0        0
1165                   2                 5                 8        0        0
1166                   2                 7                 6        0        0
1167                   8                 5                 2        1        0
1168                   8                 5                 2        1        0
1169                   0                 3                 9        0        0
1170                   0                 3                 8        0        0
1171                   1                 4                 6        0        0
1172                   8                10                 5        0        0
1173                   2                 8                 8        1        0
1174                   6                10                 2        0        0
1175                   6                11                 8        0        0
1176                   7                11                 3        0        0
1177                   7                11                 3        0        0
1178                   0                 4                 5        0        0
1179                   2                 6                 7        0        0
1180                   1                 5                 2        0        0
1181                   2                 5                 6        0        0
1182                   6                 9                 6        0        0
1183                   6                 9                 6        0        0
1184                   2                 6                 4        0        0
1185                   6                 3                 6        0        0
1186                   2                 8                 5        0        0
1187                   5                11                 3        0        0
1188                   1                 2                 7        0        0
1189                   3                 9                 8        0        0
1190                   4                 8                 8        0        0
1191                   4                 8                 8        0        0
1192                   6                12                 6        0        0
1193                   6                12                 6        0        0
1194                   6                12                 6        0        0
1195                   0                 3                 9        0        0
1196                   0                 3                 6        0        0
1197                   1                 5                 5        0        0
1198                   1                 3                 6        0        0
1199                   2                 6                 3        1        0
1200                   4                10                 1        0        0
1201                   4                 9                 1        0        0
1202                   1                 8                 4        0        0
1203                   6                 4                 6        0        0
1204                   5                 3                 7        0        0
1205                  10                11                 2        0        0
1206                   3                 9                 6        0        0
1207                   3                 9                 6        0        0
1208                   3                 9                 6        0        0
1209                   6                 8                 3        1        0
1210                   1                 6                 9        0        0
1211                   2                 5                 1        0        0
1212                   1                 6                 6        0        0
1213                   1                 5                 6        0        0
1214                   0                 3                 8        0        0
1215                   1                 4                 3        0        0
1216                   0                 2                 6        0        0
1217                   0                 2                 6        0        0
1218                   3                 6                 2        0        0
1219                   0                 3                 5        0        0
1220                   0                 2                 7        0        0
1221                   4                 4                 2        0        0
1222                   7                 5                 1        0        0
1223                   3                 5                 2        0        1
1224                   0                 3                 6        0        0
1225                   2                10                 4        0        0
1226                   2                10                 4        0        0
1227                   0                 2                 8        0        0
1228                   1                 5                 7        0        0
1229                   9                13                 2        0        0
1230                   0                 3                 5        0        0
1231                   2                 5                 4        0        0
1232                   0                 2                 7        0        0
1233                   2                11                 8        0        0
1234                   2                11                 8        0        0
1235                  11                 5                 3        1        0
1236                   7                13                 2        0        0
1237                   2                 9                 6        1        0
1238                   2                 9                 4        0        0
1239                   4                 6                 2        0        0
1240                   4                 6                 2        0        0
1241                   0                 3                 6        0        0
1242                   0                 2                 8        0        0
1243                   0                 3                 4        0        0
1244                   1                 7                 7        0        0
1245                   1                 7                 7        0        0
1246                   1                 6                 5        0        0
1247                   6                 6                 2        0        0
1248                   4                 9                 1        0        0
1249                   2                11                 5        0        0
1250                   2                 8                 7        0        1
1251                   8                 4                 6        1        0
1252                   3                12                 8        0        0
1253                   4                12                 1        0        0
1254                   0                 3                 3        0        0
1255                   6                12                 1        0        0
1256                   0                 3                 7        0        0
1257                   5                 5                 2        1        0
1258                   2                13                 1        0        0
1259                   2                 5                 7        0        0
1260                  10                 6                 1        0        0
1261                   0                 4                 6        1        0
1262                   2                 9                 7        0        0
1263                   3                 6                 7        0        0
1264                   3                 4                 6        0        0
1265                   1                 7                 7        0        0
1266                   0                 4                 5        0        0
1267                  10                 7                 1        0        0
1268                   0                 3                 4        0        0
1269                   2                10                 4        0        0
1270                   3                 5                 2        0        0
1271                   1                 2                 4        0        0
1272                   6                 4                 1        1        0
1273                   2                 4                 3        0        0
1274                   1                 4                 9        0        0
1275                   1                 4                 1        0        0
1276                   2                 8                 4        0        0
1277                   3                 6                 4        0        0
1278                   1                 3                 8        0        0
1279                   5                 3                 8        0        0
1280                   3                 6                 7        0        0
1281                   1                 5                 6        0        0
1282                   2                10                 6        0        0
1283                   0                 2                 6        0        0
1284                   1                 5                 8        1        0
1285                   1                 5                 8        0        0
1286                   5                12                 2        0        0
1287                   5                12                 2        0        0
1288                   3                 8                 5        0        0
1289                   0                 3                 7        0        0
1290                   4                 8                 1        0        0
1291                   1                 8                 6        0        0
1292                   3                 3                 6        0        0
1293                   5                10                 3        0        0
1294                   1                 2                 8        0        0
1295                   5                 4                 4        0        0
1296                   1                 5                 8        0        0
1297                   1                 5                 8        0        0
1298                   8                13                 2        1        0
1299                   2                 7                 8        0        0
1300                   2                10                 5        0        0
1301                   1                 4                 8        0        0
1302                   6                 7                 2        0        0
1303                   6                 7                 2        0        0
1304                   5                 6                 3        0        0
1305                   3                12                 4        0        0
1306                   5                13                 1        0        0
1307                   6                 7                 7        0        0
1308                   3                 5                 6        0        0
1309                   8                10                 6        0        0
1310                   7                 9                 7        1        0
1311                   1                 5                 7        0        0
1312                   1                 5                 7        0        0
1313                   1                 5                 3        0        0
1314                   1                 5                 8        0        0
1315                   7                 4                 7        0        0
1316                   2                 2                 7        1        0
1317                   1                 5                 8        0        0
1318                   3                12                 2        0        0
1319                   1                 7                 4        0        0
1320                   0                 3                 2        0        0
1321                   1                 4                 2        0        0
1322                   0                 3                 7        0        0
1323                   1                 4                 2        0        0
1324                   5                10                 4        0        0
1325                   5                 6                 5        1        0
1326                   1                 4                 7        0        0
1327                   0                 4                 6        0        0
1328                   0                 2                 8        0        0
1329                   4                 6                 5        0        0
1330                   1                 4                 7        0        0
1331                   1                 4                 7        0        0
1332                   5                 8                 3        0        0
1333                   5                 8                 3        0        0
1334                   7                11                 3        0        0
1335                   5                12                 3        1        0
1336                   1                 5                 6        1        0
1337                   0                 3                 5        0        0
1338                   4                 7                 9        0        0
1339                   3                 8                 1        0        0
1340                   0                 3                 7        0        0
1341                   4                12                 8        0        0
1342                   4                 9                 1        0        0
1343                   3                 6                 1        0        0
1344                   4                 6                 3        0        0
1345                   3                10                 4        0        0
1346                   5                 5                 1        0        0
1347                   1                 4                 5        0        0
1348                   1                 5                 4        0        0
1349                   0                 4                 6        0        0
1350                   5                12                 1        0        0
1351                   0                 3                 7        0        0
1352                  11                11                 5        0        0
1353                   1                 7                 2        0        0
1354                   2                12                 6        0        0
1355                   4                11                 6        0        0
1356                   2                 5                 1        0        0
1357                   5                13                 6        0        0
1358                   4                13                 6        0        0
1359                   7                 9                 4        0        0
1360                   1                 4                 5        0        0
1361                   0                 2                 7        0        0
1362                   4                 6                 6        0        0
1363                   2                12                 8        0        0
1364                   5                 8                 2        0        0
1365                   2                 5                 7        1        0
1366                   6                 6                 2        0        0
1367                   5                10                 1        0        0
1368                   1                 6                 5        0        0
1369                   2                 8                 6        0        0
1370                   7                13                 2        0        0
1371                   1                 6                 3        0        0
1372                   1                 7                 2        0        0
1373                   3                 4                 2        0        0
1374                   5                 6                 2        0        0
1375                   2                 6                 3        1        0
1376                  10                 4                 2        1        0
1377                   9                 9                 3        0        0
1378                   7                10                 2        0        0
1379                   2                 6                 2        1        0
1380                   0                 3                 9        0        0
1381                   8                12                 1        0        0
1382                   3                13                 5        1        0
1383                   1                 6                 7        0        0
1384                   4                 9                 6        0        0
1385                   5                 4                 4        1        0
1386                   2                 4                 5        0        0
1387                   2                 4                 6        0        0
1388                   1                 8                 2        0        0
1389                   1                 3                 7        0        0
1390                   1                 3                 7        0        0
1391                   5                 8                 4        1        0
1392                   1                 4                 8        0        0
1393                   0                 3                 4        0        0
1394                   4                10                 2        0        0
1395                   1                 5                 7        0        0
1396                   1                 5                 7        0        0
1397                   0                 3                 7        0        0
1398                   1                 4                 6        0        0
1399                   6                11                 2        0        0
1400                   4                 9                 3        0        0
1401                   1                 5                 9        0        0
1402                   4                 6                 5        0        0
1403                   5                 8                 3        0        0
1404                   2                 9                 8        0        0
1405                  11                 7                 2        0        0
1406                   1                 7                 7        0        0
1407                   5                 5                 5        0        0
1408                   2                12                 1        0        0
1409                   0                 3                 6        0        0
1410                   1                 5                 7        0        0
1411                   1                 2                 7        0        0
1412                  10                 8                 1        0        0
1413                   6                 7                 2        0        0
1414                   1                 6                 7        0        0
1415                   0                 3                 8        0        0
1416                   0                 3                 8        0        0
1417                   1                 3                 7        0        0
1418                   2                 5                 2        0        0
1419                   1                 5                 3        0        0
1420                   1                 5                 3        0        0
1421                   2                 8                 6        0        0
1422                   0                 4                 7        0        0
1423                   2                 6                 1        1        0
1424                   8                12                 8        1        0
1425                   6                 9                 7        0        0
1426                   3                 7                 7        0        0
1427                   0                 3                 8        0        0
1428                   1                 3                 7        0        0
1429                   4                12                 4        0        0
1430                   0                 2                 6        0        0
1431                   2                 2                 4        0        0
1432                   0                 3                 7        0        0
1433                   1                 7                 4        0        0
1434                  10                 8                 3        0        0
1435                   7                11                 1        0        0
1436                   7                11                 1        0        0
1437                   3                12                 7        1        0
1438                   0                 2                 7        0        0
1439                  10                 5                 2        0        0
1440                   5                 9                 6        0        0
1441                   1                 3                 7        0        0
1442                   6                 3                 8        0        0
1443                   0                 3                 7        0        1
1444                   6                11                 8        0        0
1445                   0                 3                 8        0        0
1446                   0                 3                 8        0        0
1447                   6                 7                 1        0        0
1448                   1                 4                 3        0        0
1449                   0                 2                 5        0        0
1450                   1                 6                 4        0        0
1451                   3                 6                 1        0        0
1452                   5                11                 2        0        0
1453                   7                 6                 1        1        0
1454                   7                 6                 1        1        0
1455                   1                 3                 5        0        0
1456                   0                 3                 7        0        0
1457                   0                 3                 5        0        0
1458                   4                 7                 5        0        0
1459                   3                 6                 5        0        0
1460                   9                 6                 3        0        0
1461                   2                 8                 8        0        0
1462                   5                10                 4        0        0
1463                   5                10                 4        0        0
1464                   5                13                 2        0        0
1465                   5                13                 2        0        0
1466                   7                 6                 3        0        0
1467                   7                 6                 3        0        0
1468                   3                 6                 8        0        0
1469                   1                 5                 8        0        0
1470                   5                13                 5        0        0
1471                   2                 5                 2        0        0
1472                   1                 3                 5        0        0
1473                   0                 3                 3        0        0
1474                   1                 4                 6        0        0
1475                   1                 5                 5        0        0
1476                   4                 9                 1        0        0
1477                   7                 9                 2        1        0
1478                   1                 2                 8        0        0
1479                   2                11                 1        0        0
1480                   6                 4                 3        0        0
1481                  10                 5                 4        1        0
1482                   3                 6                 3        1        0
1483                   3                12                 3        0        0
1484                   1                 3                 4        0        0
1485                   0                 3                 6        0        0
1486                   3                12                 3        0        0
1487                   8                10                 4        0        0
1488                   0                 3                 5        0        0
1489                   1                 3                 6        0        0
1490                   0                 3                 7        0        0
1491                   1                 3                 6        0        0
1492                   8                 4                 6        1        0
1493                   3                 8                 5        0        0
1494                   7                10                 2        1        0
1495                   3                 7                 8        0        0
1496                   9                 4                 5        1        0
1497                   2                 9                 8        0        0
1498                   1                 5                 8        0        0
1499                  10                12                 7        0        0
1500                   1                 6                 7        0        0
1501                   3                 6                 7        0        0
1502                   4                11                 6        0        0
1503                   1                 4                 5        0        0
1504                   1                 4                 3        0        0
1505                   1                 3                 8        1        0
1506                   0                 3                 7        0        0
1507                   0                 0                 0        0        0
1508                   2                10                 5        0        0
1509                   4                 9                 4        0        0
1510                   2                10                 4        0        0
1511                  10                 6                 3        0        0
1512                   0                 3                 7        0        0
1513                   1                 4                 5        0        0
1514                  11                 7                 5        0        0
1515                   8                10                 5        0        0
1516                   0                 2                 7        0        0
1517                   0                 2                 7        0        0
1518                   0                 3                 5        0        0
1519                   6                 5                 3        0        0
1520                   3                 4                 7        1        0
1521                   2                 4                 7        0        0
1522                   2                 7                 7        0        0
1523                  10                 5                 6        0        0
1524                   4                10                 4        1        0
1525                   2                 4                 8        1        0
1526                   5                13                 7        0        0
1527                   6                 9                 6        1        0
1528                   4                10                 5        0        0
1529                   1                 3                 6        0        0
1530                   1                 3                 6        0        0
1531                   1                 2                 7        0        0
1532                   4                 8                 2        0        0
1533                   0                 3                 7        0        0
1534                   2                 3                 8        0        0
1535                   6                 6                 2        0        0
1536                   0                 3                 6        0        0
1537                   1                 2                 5        0        0
1538                   3                 5                 5        1        0
1539                   0                 3                 7        0        0
1540                   8                 9                 5        0        0
1541                   4                10                 3        0        0
1542                   2                 5                 7        1        0
1543                   0                 3                 6        0        0
1544                   0                 3                 6        0        0
1545                   1                 3                 2        0        0
1546                   8                 9                 1        0        0
1547                   9                 5                 3        0        0
1548                   0                 4                 5        0        0
1549                   0                 4                 6        0        0
1550                   2                 5                 3        0        0
1551                   1                 5                 5        0        0
1552                   3                 8                 4        0        0
1553                   9                 4                 4        0        0
1554                   0                 3                 7        0        0
1555                   0                 3                 7        0        0
1556                   9                 4                 6        0        0
1557                   3                 5                 2        0        0
1558                   4                 8                 3        0        0
1559                   2                 9                 6        0        0
1560                   2                 9                 6        0        0
1561                   3                12                 5        0        0
1562                   3                12                 5        0        0
1563                   1                 2                 6        0        0
1564                   4                 7                 3        0        0
1565                   0                 2                 7        0        0
1566                   1                 3                 5        0        0
1567                   5                11                 2        0        0
1568                   5                13                 3        0        0
1569                   1                 6                 5        0        0
1570                   1                 6                 5        0        0
1571                   1                 5                 6        0        0
1572                   2                 2                 4        0        0
1573                   8                 6                 1        0        0
1574                   3                13                 4        0        0
1575                   7                 9                 4        0        0
1576                   3                 8                 8        0        0
1577                   0                 4                 6        0        0
1578                   2                 4                 8        0        0
1579                   2                 4                 8        0        0
1580                   9                 6                 4        1        0
1581                   5                 9                 7        0        0
1582                   1                 6                 5        0        0
1583                   5                 4                 2        0        0
1584                   5                 4                 2        0        0
1585                   0                 2                 6        0        0
1586                   2                 9                 5        0        0
1587                   5                10                 1        0        0
1588                   8                 5                 2        0        0
1589                   3                10                 3        0        0
1590                   8                11                 3        0        0
1591                   4                 6                 7        0        0
1592                   0                 0                 0        0        0
1593                   1                 3                 5        0        0
1594                   2                 4                 7        0        0
1595                   1                 4                 5        0        0
1596                   8                 8                 6        0        0
1597                   6                13                 2        0        0
1598                   6                13                 2        0        0
1599                   2                 2                 5        0        0
1600                   4                10                 1        0        0
1601                   2                 8                 6        0        0
1602                   6                 8                 5        0        0
1603                   4                 7                 2        0        0
1604                   0                 4                 6        0        0
1605                   2                 3                 6        0        0
1606                   3                12                 4        0        0
1607                   4                 6                 2        0        0
1608                   0                 4                 4        0        0
1609                   0                 3                 5        0        0
1610                   1                 4                 6        0        0
1611                   1                 4                 6        0        0
1612                   0                 2                 7        0        0
1613                   3                 4                 6        0        0
1614                   1                 3                 6        0        0
1615                   2                 2                 8        0        0
1616                   2                 2                 8        0        0
1617                   2                 2                 8        1        0
1618                   2                12                 5        0        0
1619                   7                 8                 1        0        0
1620                   1                 3                 3        0        0
1621                   1                 4                 6        0        0
1622                   5                 7                 1        0        0
1623                   4                13                 4        0        0
1624                   4                13                 4        0        0
1625                   8                 6                 1        0        0
1626                   2                 8                 3        0        0
1627                   2                 9                 6        0        0
1628                   2                11                 4        0        0
1629                   3                13                 2        0        0
1630                   1                 6                 8        0        0
1631                   2                 8                 8        0        0
1632                   4                 5                 8        0        0
1633                   4                 7                 1        0        0
1634                   7                 8                 3        0        0
1635                   1                 4                 9        0        0
1636                   5                13                 6        0        0
1637                   0                 4                 8        1        0
1638                   7                10                 2        0        0
1639                   1                 6                 6        0        0
1640                   2                 5                 5        0        0
1641                   2                 8                 1        0        0
1642                   2                 5                 7        0        0
1643                   6                 9                 1        1        0
1644                   6                 9                 1        1        0
1645                   3                11                 5        0        0
1646                   3                 6                 8        0        0
1647                   2                 8                 7        0        0
1648                   2                12                 5        0        0
1649                   5                11                 2        0        0
1650                   0                 2                 6        0        0
1651                   8                 5                 8        0        0
1652                   5                 8                 1        0        0
1653                   0                 2                 6        0        0
1654                   1                 3                 4        0        0
1655                   4                 6                 3        0        0
1656                  10                 5                 2        0        0
1657                   0                 4                 6        0        0
1658                   2                 8                 4        0        0
1659                   0                 3                 7        0        0
1660                   1                 4                 7        0        0
1661                   9                13                 1        0        0
1662                   5                13                 8        0        0
1663                   1                 3                 9        0        0
1664                   1                 4                 7        0        0
1665                   8                11                 5        0        0
1666                   7                 9                 3        0        0
1667                   3                12                 2        1        0
1668                   0                 3                 7        0        0
1669                   6                 4                 1        0        0
1670                   2                10                 5        0        0
1671                  11                 4                 1        0        0
1672                   0                 2                 6        0        0
1673                   1                 7                 3        0        0
1674                   4                 4                 3        0        0
1675                   0                 3                 5        0        0
1676                   1                 8                 7        0        0
1677                   2                 4                 6        0        0
1678                   1                 2                 7        0        0
1679                   5                 5                 5        0        0
1680                  10                 4                 6        1        0
1681                  10                 5                 3        0        0
1682                  10                 5                 3        0        0
1683                   1                 7                 7        0        0
1684                   1                 6                 8        0        0
1685                   7                10                 7        1        0
1686                   1                 4                 5        0        0
1687                   3                13                 6        0        0
1688                   8                 5                 1        0        0
1689                   2                 9                 3        0        0
1690                   0                 2                 7        0        0
1691                   2                10                 7        0        0
1692                   1                 4                 8        0        0
1693                   0                 4                 4        0        0
1694                   1                 4                 4        0        0
1695                   1                 4                 4        0        0
1696                   2                 8                 5        0        0
1697                   7                11                 2        0        0
1698                   8                10                 2        0        0
1699                   4                 9                 5        0        0
1700                   0                 3                 7        0        0
1701                  11                 5                 1        0        0
1702                  11                 5                 1        0        0
1703                   0                 3                 5        0        0
1704                   0                 3                 4        0        0
1705                   0                 4                 8        0        0
1706                   2                10                 3        0        0
1707                   3                 5                 4        0        0
1708                   1                 5                 8        0        0
1709                   1                 6                 7        0        0
1710                   1                 2                 7        0        0
1711                   2                10                 6        0        0
1712                   0                 3                 7        0        0
1713                   0                 2                10        0        0
1714                  11                 9                 1        0        0
1715                   4                 8                 4        0        0
1716                   2                 8                 9        0        0
1717                   5                 4                 2        0        0
1718                   4                 9                 7        0        0
1719                   8                12                 3        0        0
1720                   6                 9                 8        0        0
1721                   0                 3                 8        0        1
1722                   0                 3                 8        0        1
1723                   1                 5                 6        0        0
1724                   1                 5                 6        0        0
1725                   3                12                 7        0        0
1726                   1                 4                 3        0        0
1727                   7                13                 2        0        1
1728                   5                 9                 2        0        0
1729                  10                11                 1        0        0
1730                   2                 6                 5        0        0
1731                   2                 5                 7        0        0
1732                   2                 7                 3        0        0
1733                   3                 6                 7        0        0
1734                   0                 3                 8        0        0
1735                  10                 8                 2        0        0
1736                   0                 3                 4        0        0
1737                   4                 8                 4        0        0
1738                   4                 8                 4        0        0
1739                   4                 9                 2        0        0
1740                   4                10                 4        0        0
1741                   7                 5                 8        0        0
1742                   2                 7                 5        0        0
1743                   9                 4                 3        0        0
1744                   5                 5                 8        1        0
1745                   1                 3                 3        0        0
1746                   4                10                 0        0        0
1747                   4                 6                 2        0        0
1748                   0                 4                 5        0        0
1749                   3                 6                 5        0        0
1750                   0                 3                 5        0        0
1751                   7                 9                 1        0        0
1752                   1                 4                 3        0        0
1753                   0                 3                 8        0        0
1754                   0                 3                 8        0        0
1755                   3                 7                 3        1        0
1756                   0                 3                 8        0        0
1757                   5                 8                 3        0        0
1758                   3                12                 6        0        0
1759                   2                 3                 7        0        0
1760                   4                 7                 6        0        0
1761                   0                 3                 9        0        0
1762                   1                 4                 8        0        0
1763                   1                 4                 8        0        0
1764                   5                 8                 5        0        0
1765                   4                 6                 5        0        0
1766                   7                 9                 4        0        0
1767                   1                 2                 7        0        0
1768                   8                 5                 2        0        0
1769                   0                 3                 4        0        0
1770                   2                 5                 8        0        0
1771                   6                 5                 5        0        0
1772                   3                10                 5        0        0
1773                   3                 8                 5        0        0
1774                   7                11                 3        1        0
1775                   7                 9                 3        0        0
1776                   0                 2                 7        0        0
1777                   2                10                 7        0        0
1778                   5                11                 3        0        0
1779                   5                11                 3        0        0
1780                   0                 3                 2        0        0
1781                   6                 4                 2        0        0
1782                   1                 5                 5        0        0
1783                   1                 4                 2        0        0
1784                   1                 4                 2        0        0
1785                   0                 4                 5        0        0
1786                   1                 6                 6        0        0
1787                   9                10                 2        0        0
1788                   9                10                 2        0        0
1789                   4                 5                 7        0        0
1790                   1                 7                 7        0        0
1791                   1                 4                 5        0        0
1792                   2                 6                 5        1        0
1793                   5                10                 3        0        0
1794                   6                10                 2        1        0
1795                   6                10                 2        1        0
1796                   4                 7                 6        0        0
1797                   0                 3                 4        0        0
1798                   3                 4                 4        0        0
1799                   1                 6                 6        0        0
1800                   1                 3                 6        0        0
1801                   6                 7                 4        0        0
1802                   0                 3                 8        0        0
1803                   0                 3                 8        0        0
1804                   0                 2                 9        0        0
1805                   2                 6                 5        0        0
1806                   6                11                 4        0        0
1807                   2                 3                 7        0        0
1808                   4                 7                 5        0        0
1809                   0                 3                 7        0        0
1810                  10                11                 6        1        0
1811                  10                11                 6        1        0
1812                   4                 4                 3        0        0
1813                   2                 7                 3        0        0
1814                   3                 7                 6        0        0
1815                  22                 0                 0        0        0
1816                   3                 5                 3        0        0
1817                   5                10                 3        0        0
1818                   6                12                 2        0        0
1819                   6                12                 2        0        0
1820                   1                 6                 9        0        0
1821                   2                11                 5        0        0
1822                   1                 3                 8        0        0
1823                   2                 8                 2        1        0
1824                   7                12                 3        0        0
1825                   0                 4                 5        0        0
1826                   4                10                 6        0        0
1827                   5                 7                 6        1        0
1828                   5                 7                 6        0        0
1829                   6                 9                 7        0        0
1830                   7                12                 3        0        0
1831                   1                 4                 8        0        0
1832                   7                10                 3        0        0
1833                   0                 3                 6        0        0
1834                   0                 3                 6        0        0
1835                   3                 5                 1        0        0
1836                   3                 5                 4        0        0
1837                   0                 3                 5        0        0
1838                   1                 3                 5        0        0
1839                   1                 3                 5        0        0
1840                   1                 2                 5        0        1
1841                   3                 5                 4        0        0
1842                   2                11                 4        0        0
1843                   0                 3                 8        0        0
1844                   1                 5                 8        0        0
1845                   4                10                 3        0        0
1846                   5                 4                 7        1        0
> 
> cat("\nТолько следующие столбцы: Id, Year_Birth, Education, Marital_Status, Income, Response:")

Только следующие столбцы: Id, Year_Birth, Education, Marital_Status, Income, Response:
> df <- select(df, Id, Year_Birth, Education, Marital_Status, Income, Response)
> print(df)
        Id Year_Birth  Education Marital_Status Income Response
1     1826       1970 Graduation       Divorced  84835        1
2        1       1961 Graduation         Single  57091        1
3    10476       1958 Graduation        Married  67267        0
4     1386       1967 Graduation       Together  32474        0
5     7348       1958        PhD         Single  71691        1
6     4073       1954   2n Cycle        Married  63564        1
7     1991       1967 Graduation       Together  44931        0
8     4047       1954        PhD        Married  65324        0
9     9477       1954        PhD        Married  65324        0
10    2079       1947   2n Cycle        Married  81044        0
11    5642       1979     Master       Together  62499        0
12   10530       1959        PhD          Widow  67786        1
13     837       1977 Graduation        Married  54809        0
14   10521       1977 Graduation        Married  54809        1
15   10175       1958        PhD       Divorced  32173        0
16    1473       1960   2n Cycle         Single  47823        0
17    2795       1958     Master         Single  30523        0
18    2285       1954     Master       Together  36634        0
19     115       1966     Master         Single  43456        0
20   10470       1979     Master        Married  40662        0
21    4065       1976        PhD        Married  49544        0
22   10968       1969 Graduation         Single  57731        0
23    5985       1965     Master         Single  33168        0
24    5430       1956 Graduation       Together  54450        0
25    8432       1956 Graduation       Together  54450        0
26     453       1956        PhD          Widow  35340        0
27    9687       1975 Graduation         Single  73170        0
28    8890       1971        PhD       Divorced  65808        0
29    9264       1986 Graduation        Married  79529        0
30    5824       1972        PhD       Together  34578        0
31    5794       1974        PhD        Married  46374        1
32    7962       1987        PhD         Single  95169        1
33    2681       1984   2n Cycle        Married  65370        0
34   10141       1960     Master       Divorced  39228        0
35    3725       1961        PhD         Single  84865        1
36    3767       1968 Graduation        Married  61314        0
37    7030       1955        PhD        Married  66465        0
38    1524       1983   2n Cycle         Single  81698        1
39    3657       1986 Graduation         Single  39146        0
40    9595       1961 Graduation       Together  64260        1
41    3158       1973 Graduation        Married  32300        0
42    5114       1965     Master        Married  74806        0
43     340       1970 Graduation       Divorced  72967        1
44    8805       1960 Graduation         Single  48904        0
45    1402       1954     Master        Married  66991        0
46    7264       1978   2n Cycle         Single  52195        0
47    1619       1956 Graduation        Married  90369        1
48    1857       1952 Graduation         Single  47139        1
49    4877       1973     Master        Married  38576        0
50    3066       1975        PhD       Together  61905        0
51   10286       1962 Graduation        Married  83715        0
52    1992       1964 Graduation        Married  60597        1
53   10623       1961     Master       Together  48330        0
54    4867       1968        PhD         Single  38236        0
55    4865       1974     Master       Divorced  53367        1
56    6287       1986 Graduation       Together  34728        1
57    4405       1956     Master        Married  63915        0
58    5332       1960   2n Cycle        Married  82504        0
59    1519       1972        PhD         Single  38578        1
60    9080       1972        PhD         Single  38578        0
61    1772       1975        PhD        Married  79174        1
62    5341       1962   2n Cycle       Divorced  81975        0
63    5510       1977     Master        Married  43263        0
64    7022       1971 Graduation        Married  76445        0
65    9999       1965 Graduation       Together  75276        0
66   10352       1963 Graduation          Widow  34213        1
67    7919       1976        PhD       Together  72335        1
68    4114       1964     Master        Married  79143        0
69    9888       1969 Graduation       Together  68695        0
70    4399       1969 Graduation       Together  68695        0
71    4452       1957 Graduation         Single  50388        1
72    4785       1970        PhD       Together  77622        0
73    8461       1962 Graduation       Divorced  46102        0
74    3878       1980   2n Cycle         Single  31859        0
75     158       1945        PhD       Together  71604        1
76    9970       1977 Graduation       Together  55375        0
77    4002       1960        PhD        Married  77037        0
78    7279       1969        PhD       Together  69476        0
79   10582       1979 Graduation        Married  72063        0
80    4470       1962     Master        Married  58646        0
81    6183       1962     Master        Married  58646        0
82    6379       1949     Master          Widow  47570        1
83    8601       1980 Graduation        Married  80011        0
84    4827       1956        PhD         Single  54998        1
85    6715       1948        PhD         Single  60200        0
86   10676       1982 Graduation        Married  63211        1
87    1041       1973        PhD         Single  48432        1
88     492       1973        PhD           YOLO  48432        0
89   11133       1973        PhD           YOLO  48432        1
90    4491       1949     Master        Married  62845        0
91     873       1949     Master        Married  62845        1
92    1631       1965        PhD       Together  65220        1
93    8278       1990        PhD        Married  74214        0
94    6815       1980   2n Cycle        Married  96547        1
95     254       1955 Graduation       Together  53863        0
96    1349       1970 Graduation        Married  50447        0
97    2534       1953 Graduation        Married  37716        0
98    2130       1982 Graduation       Together  45203        1
99    2296       1975     Master        Married  37368        0
100   3799       1955 Graduation        Married  67225        0
101  11084       1976     Master       Together  65104        1
102   5172       1976     Master       Together  65104        0
103   9504       1949     Master        Married  81698        1
104    850       1968 Graduation         Single  70566        0
105   4477       1958 Graduation       Together  69096        0
106   1945       1962 Graduation        Married  71434        0
107   7685       1978 Graduation        Married  33039        0
108   6310       1978 Graduation        Married  33039        0
109  10832       1958 Graduation       Together  46610        0
110   3025       1958 Graduation         Single  49967        0
111   2404       1976 Graduation        Married  53359        0
112   8581       1971     Master        Married  49505        0
113   8755       1946     Master        Married  68657        0
114  10177       1954 Graduation       Divorced  72071        0
115   2429       1954 Graduation       Divorced  72071        0
116   8920       1967     Master         Single  59235        0
117   7233       1972 Graduation        Married  69209        0
118   6678       1989 Graduation       Together  31928        0
119    830       1987        PhD         Single  74004        1
120   6365       1987   2n Cycle        Married  30390        0
121   1031       1989   2n Cycle        Married  85710        0
122  10089       1974 Graduation       Divorced 102692        1
123   9256       1971 Graduation         Single  58350        0
124  10356       1957        PhD       Divorced  41437        0
125   9323       1949     Master       Together  49912        1
126   1146       1949     Master       Together  49912        1
127   6343       1959 Graduation        Married  79823        0
128   8545       1954 Graduation       Divorced  85683        1
129   8275       1965        PhD       Divorced  47025        0
130  10673       1976        PhD        Married  68397        0
131   8799       1984        PhD        Married  38175        0
132     67       1972     Master         Single  46423        0
133   9923       1972     Master         Single  46423        0
134   2814       1976     Master       Together  30560        0
135   2711       1976     Master       Together  30560        0
136   4320       1979 Graduation         Single  60152        0
137  10814       1947 Graduation       Together  70321        1
138    944       1962 Graduation        Married  56181        0
139   6184       1969        PhD        Married  68462        0
140   3498       1976        PhD        Married  55424        1
141   2870       1973 Graduation        Married  49094        0
142   7342       1961   2n Cycle          Widow  59184        0
143   1911       1987 Graduation       Together  67430        0
144  10862       1960     Master        Married  30522        0
145   2546       1977   2n Cycle         Single  31878        0
146   3005       1992 Graduation         Single  83528        1
147   8318       1979 Graduation       Together  90300        0
148   2930       1978     Master         Single  68092        0
149   8216       1972     Master        Married  53761        0
150   1212       1973 Graduation        Married  52845        0
151  10905       1955 Graduation       Together  42586        1
152   8910       1955 Graduation       Together  42586        1
153   7872       1975        PhD        Married  86836        1
154   4290       1972 Graduation        Married  30467        0
155   7408       1952        PhD        Married  54549        0
156   8235       1956     Master       Together  69245        0
157  10949       1963        PhD       Divorced  72968        1
158   7284       1953 Graduation        Married  48686        0
159   9529       1990 Graduation        Married  73687        1
160   9930       1944        PhD         Single  82716        0
161  10270       1981   2n Cycle        Married  35523        0
162    760       1975        PhD       Divorced  60554        0
163   5519       1956 Graduation       Together  64090        1
164    232       1965 Graduation         Single  61559        0
165   3009       1962        PhD          Widow  71670        1
166   6518       1951        PhD          Widow  67680        0
167  10669       1981 Graduation        Married  54386        0
168   5682       1953        PhD         Single  64108        0
169   1570       1951        PhD       Together  69702        0
170   1497       1952 Graduation         Single  47958        0
171   9723       1960 Graduation        Married  67716        0
172   7261       1971 Graduation       Together  34600        1
173   2452       1971 Graduation       Together  34600        1
174   5621       1969 Graduation        Married  48752        1
175   7373       1952        PhD       Divorced  46610        1
176   5331       1977 Graduation        Married  74985        0
177    263       1945        PhD         Single  45576        1
178   4619       1945        PhD         Single 113734        0
179    940       1987 Graduation         Single  57100        0
180   6019       1971        PhD        Married  37126        1
181   1463       1958 Graduation         Single  45160        0
182   6424       1977 Graduation       Together  33178        0
183   8233       1950     Master          Widow  64866        0
184   1515       1975     Master       Together  34176        0
185  10855       1968     Master         Single  50014        0
186  10909       1948 Graduation        Married  92344        0
187   3376       1970     Master       Divorced  55282        0
188  10232       1963        PhD       Divorced  48799        0
189   5547       1982        PhD        Married  84169        1
190   8362       1982        PhD        Married  84169        1
191   3524       1971     Master         Single  39763        1
192  10095       1975        PhD       Divorced  74165        0
193   8897       1965 Graduation         Single  42720        1
194    466       1944 Graduation        Married  65275        0
195  11025       1961 Graduation        Married  36443        0
196   2387       1952     Master       Together  43776        1
197   1618       1965 Graduation       Together  56046        1
198     25       1958 Graduation        Married  65148        0
199   3277       1955 Graduation       Divorced  49431        0
200   8566       1961        PhD       Together  32583        0
201   8159       1968 Graduation        Married  51287        0
202   7628       1973   2n Cycle        Married  43050        0
203   9597       1969 Graduation        Married  73448        0
204  10150       1961 Graduation         Single  86429        1
205   3885       1983        PhD        Married  33569        1
206   8026       1952 Graduation        Married  62998        0
207   5429       1948        PhD        Married  45579        0
208    977       1957 Graduation       Together  47320        0
209   2793       1976        PhD       Divorced  70179        0
210   1071       1976        PhD       Divorced  70179        0
211   2632       1954 Graduation        Married  50501        1
212   6404       1969 Graduation       Together  58917        0
213  10240       1949 Graduation       Together  69372        1
214   2521       1971     Master        Married  35178        1
215   4301       1971     Master        Married  35178        1
216   7381       1968 Graduation       Divorced  75693        1
217   2407       1982 Graduation        Married  69109        1
218   9064       1982 Graduation        Married  69109        1
219   5067       1994 Graduation       Together  80134        0
220  10281       1970 Graduation       Divorced  64713        1
221  11191       1986 Graduation       Divorced  41411        0
222   2552       1955        PhD         Single  55521        1
223   6720       1968     Master       Together  43795        1
224   1183       1949     Master        Married  36408        0
225   4186       1950 Graduation       Together  34026        0
226   1419       1950 Graduation       Together  34026        0
227    967       1976 Graduation        Married  46049        1
228   1048       1972     Master        Married  35641        1
229   9262       1984   2n Cycle       Together  32414        0
230   3427       1955        PhD        Married  59821        0
231   5892       1980 Graduation        Married  34968        0
232   8911       1967        PhD        Married  56320        0
233   6606       1969     Master        Married  70091        0
234   2677       1956 Graduation       Together  46097        0
235    252       1963        PhD       Divorced  41003        0
236   9860       1959 Graduation       Together  44911        0
237   1388       1975 Graduation         Single  33249        0
238    979       1975 Graduation         Single  33249        0
239   7494       1950        PhD       Divorced  42873        0
240  10490       1969        PhD        Married  51039        0
241   3403       1958        PhD       Together  78952        0
242   4828       1954 Graduation       Divorced  79865        0
243     92       1988 Graduation          Alone  34176        0
244   3312       1988 Graduation         Single  34176        0
245  11176       1970        PhD       Together  65968        0
246   1446       1956     Master         Single  86424        0
247   9699       1966 Graduation       Divorced  67272        0
248   9790       1957 Graduation         Single  78499        1
249   2324       1972 Graduation       Together  77044        0
250   5080       1993 Graduation         Single  70515        1
251   7849       1970        PhD        Married  80336        0
252   7793       1976 Graduation       Together  62061        0
253   6853       1982     Master         Single  75777        1
254   7366       1982     Master         Single  75777        1
255   9780       1971     Master       Together  71499        0
256   7573       1978        PhD         Single  31626        1
257   1379       1992     Master       Together  42670        0
258   8923       1973 Graduation         Single  83917        1
259   3547       1969     Master       Together  41021        1
260   8707       1956 Graduation        Married  79456        1
261   1891       1980     Master       Divorced  78789        1
262   6271       1952        PhD        Married  50870        0
263   9635       1983     Master        Married  35876        0
264   6205       1967     Master         Single  32557        1
265  10681       1970   2n Cycle        Married  62466        0
266   5156       1970   2n Cycle        Married  62466        0
267   3050       1966 Graduation        Married  54198        0
268   8164       1978        PhD        Married  82170        0
269   5626       1964        PhD         Single  61798        0
270   6406       1988     Master        Married  78285        0
271   7002       1955 Graduation         Single  62535        0
272   6116       1968   2n Cycle        Married  48985        0
273    291       1970 Graduation        Married  72940        0
274   8779       1985   2n Cycle        Married  36145        1
275   4931       1977 Graduation       Together 157146        0
276   1650       1960     Master        Married  81843        0
277   9701       1988 Graduation       Together  41883        0
278   6431       1964        PhD        Married  45759        0
279  10789       1964        PhD        Married  45759        0
280   5302       1986 Graduation       Together  78394        1
281   4459       1989 Graduation         Single  30279        0
282  10642       1989 Graduation         Single  30279        0
283   9213       1970 Graduation          Widow  31880        0
284   3678       1973 Graduation          Widow  60208        1
285   3698       1983 Graduation       Together  78687        1
286   5929       1973        PhD        Married  37401        0
287  10795       1973        PhD        Married  37401        0
288   4390       1954 Graduation       Together  75315        0
289   9362       1965 Graduation         Single  69263        0
290   1577       1946 Graduation        Married  78569        1
291   4609       1966        PhD        Married  57705        0
292   7143       1955   2n Cycle       Together  74805        0
293   1729       1961        PhD       Together  66426        0
294  10664       1949     Master          Widow  51529        0
295  10507       1977   2n Cycle       Divorced  59601        0
296   6982       1976 Graduation        Married  74068        0
297   7042       1983 Graduation        Married  36790        1
298   4099       1972 Graduation        Married  30675        0
299   5031       1974 Graduation       Together  83145        1
300   1970       1968     Master       Together  34053        0
301   5726       1983     Master         Single  31788        0
302   5231       1974   2n Cycle        Married  45894        0
303   1307       1978 Graduation       Divorced  41986        0
304  10609       1962        PhD        Married  42769        0
305   5782       1982   2n Cycle       Together  58582        0
306   7533       1964 Graduation        Married  49096        0
307   9493       1980        PhD         Single  76412        1
308   7393       1978 Graduation       Together  41580        0
309   4713       1979        PhD        Married  31605        0
310   3766       1959     Master          Widow  33051        1
311   8933       1983   2n Cycle        Married  32146        0
312   9289       1979 Graduation        Married  36781        1
313   2613       1960     Master        Married  54197        0
314  10133       1970 Graduation         Single  93790        1
315  10796       1984     Master        Married  30477        0
316   3388       1967 Graduation       Divorced  70844        0
317   6507       1980 Graduation         Single  30828        0
318   7446       1967     Master       Together  62513        0
319  10477       1973        PhD       Together  39435        0
320   6072       1970     Master         Single  75345        1
321    247       1971 Graduation        Married  36715        1
322   9463       1959 Graduation       Together  71706        0
323   1459       1966        PhD        Married  69063        0
324   9653       1975 Graduation        Married  35797        0
325  10785       1969 Graduation        Married  44078        0
326  10146       1972        PhD       Together  38887        0
327   4741       1974   2n Cycle        Married  65463        0
328   1880       1959        PhD       Together  53537        0
329   6471       1971     Master         Single  36230        0
330   5718       1950 Graduation        Married  80763        1
331   3478       1971        PhD        Married  60585        1
332   7848       1974 Graduation         Single  49166        0
333   7999       1955        PhD       Together  75261        1
334  11101       1991 Graduation       Together  89891        0
335   9212       1962     Master        Married  72828        0
336  10983       1952 Graduation       Together  75278        0
337   3629       1978 Graduation         Single  38557        0
338   4673       1963        PhD        Married  81300        1
339    796       1965   2n Cycle       Divorced  60161        0
340    618       1977        PhD        Married  69389        0
341    380       1954 Graduation       Divorced  64497        1
342   1092       1980 Graduation        Married  61014        0
343   8962       1975     Master        Married  44319        0
344   8207       1957   2n Cycle        Married  53233        0
345   6521       1954 Graduation       Together  77972        0
346    535       1987 Graduation       Divorced  81361        0
347   4608       1987 Graduation       Divorced  81361        1
348   1064       1971        PhD        Married  42403        0
349   7000       1972   2n Cycle         Single  65704        0
350   1581       1980 Graduation        Married  37406        1
351   7384       1951     Master       Together  39767        0
352  10552       1979   2n Cycle        Married  54210        0
353   6409       1967 Graduation       Divorced  57136        1
354   9507       1975 Graduation        Married  40794        0
355   9560       1965 Graduation       Together  83003        1
356  10991       1960     Master        Married  89058        0
357  11056       1974 Graduation        Married  72099        0
358   7414       1971 Graduation        Married  43824        0
359   3076       1975 Graduation       Together  66653        0
360   6355       1978 Graduation        Married  44359        0
361   7959       1961 Graduation        Married  79410        0
362   5512       1977     Master        Married  55842        0
363  10102       1966 Graduation          Widow  79946        0
364   9369       1979   2n Cycle         Single  88194        1
365   3711       1944     Master        Married  80184        0
366   6931       1967 Graduation       Divorced  76982        1
367   9596       1980        PhD         Single  65295        0
368   2727       1973 Graduation       Together  57100        0
369   3967       1971        PhD        Married  78931        0
370   2162       1976 Graduation        Married  56939        0
371   9242       1990 Graduation         Single  64509        1
372  10595       1990 Graduation        Married  30093        0
373   4855       1974        PhD       Together  30351        1
374   5049       1974        PhD       Together  30351        0
375   4967       1960        PhD       Together  38201        0
376   9215       1980        PhD        Married  43974        0
377   3525       1970 Graduation       Together  38200        0
378   3619       1960   2n Cycle       Divorced  87305        1
379   5313       1971     Master        Married  38196        0
380   7196       1950        PhD        Married  41145        0
381   1381       1982        PhD         Single  38513        1
382  10951       1968 Graduation        Married  45688        0
383   4322       1958        PhD       Together  77863        0
384   7444       1969     Master        Married  42169        0
385   2942       1964 Graduation         Single  45906        0
386   2874       1988   2n Cycle       Divorced  35388        0
387   3667       1969 Graduation        Married  80952        1
388   3697       1954 Graduation       Together  39898        0
389   9955       1954 Graduation       Together  39898        0
390   5320       1973     Master       Divorced  44051        1
391   6422       1954 Graduation        Married  86718        0
392   3690       1986     Master        Married  80141        1
393   2408       1976 Graduation        Married  58597        0
394   9260       1945        PhD        Married  70356        0
395   9648       1967 Graduation         Single  46904        0
396   4939       1946 Graduation       Together  37760        0
397   8652       1946 Graduation       Together  37760        0
398   4702       1964 Graduation         Single  61839        0
399   2811       1963        PhD         Single  48918        0
400   9150       1963        PhD         Single  48918        0
401  10127       1965 Graduation        Married  58692        0
402   5493       1976 Graduation        Married  39356        0
403   2666       1972     Master        Married  76234        0
404  10099       1984 Graduation        Married  55434        0
405  10562       1946     Master        Married  66835        0
406   7881       1946     Master        Married  66835        0
407   6721       1951 Graduation        Married  71965        0
408   5204       1971 Graduation       Together  74538        1
409   5209       1954 Graduation       Divorced  50002        0
410  10128       1958 Graduation       Together  53977        0
411   9284       1958 Graduation       Together  53977        0
412   8643       1971 Graduation       Together  69930        0
413   1685       1967        PhD       Together  62981        0
414   2877       1974     Master       Together  46014        0
415   6233       1976 Graduation        Married  65991        0
416    195       1972 Graduation         Single  38808        1
417   1501       1982        PhD        Married 160803        0
418  10846       1978     Master        Married  43783        0
419   8341       1969        PhD        Married  30396        1
420  10766       1964        PhD        Married  65526        0
421   9971       1964        PhD        Married  65526        0
422   1740       1944 Graduation        Married  55956        0
423   8737       1978 Graduation       Divorced  55563        0
424   6466       1965        PhD        Married  57236        0
425  10430       1973 Graduation       Divorced  89694        0
426   8773       1971     Master       Together  57420        0
427   2371       1972 Graduation        Married  33622        0
428   4088       1962        PhD       Together  31497        0
429   4971       1962        PhD       Together  31497        0
430  10560       1980        PhD         Single  36802        0
431   6892       1968 Graduation       Divorced  61671        0
432  11004       1893   2n Cycle         Single  60182        0
433   9485       1986        PhD        Married  45921        0
434   4248       1960     Master         Single  98777        0
435   7451       1960     Master         Single  98777        0
436   7861       1952     Master        Married  77027        0
437   5232       1965 Graduation        Married  69139        0
438   3011       1965 Graduation        Married  69139        0
439   5758       1982 Graduation        Married  65169        1
440   2173       1952 Graduation          Widow  40049        0
441  10711       1945 Graduation        Married  69755        0
442   2782       1961        PhD        Married  54456        0
443   9432       1977 Graduation       Together 666666        0
444   5872       1951 Graduation         Single  60689        0
445   1802       1971 Graduation        Married  64795        0
446   1162       1987        PhD         Single  42000        1
447  10643       1987        PhD         Single  42000        1
448  11112       1966 Graduation       Together  70713        0
449   2114       1946        PhD         Single  82800        1
450   4261       1946        PhD         Single  82800        1
451   2457       1975      Basic        Married  30801        0
452   2495       1974     Master        Married  83891        0
453   6983       1950     Master       Divorced  38054        0
454   7505       1957        PhD        Married  44155        0
455   4286       1970        PhD         Single  57642        0
456   7224       1977 Graduation        Married  31353        0
457   6215       1977 Graduation        Married  31353        1
458    968       1968     Master       Divorced  41335        0
459   4096       1968     Master       Divorced  41335        0
460   3153       1957        PhD         Single  40737        0
461   5329       1949        PhD       Divorced  35946        0
462   1175       1983     Master        Married  36262        1
463   1377       1954     Master          Widow  44551        0
464   4607       1959 Graduation       Together  71367        0
465   4944       1959 Graduation       Together  71367        0
466   9483       1959 Graduation       Together  57957        0
467   1378       1972   2n Cycle       Together  50334        0
468   5991       1949     Master        Married  48150        0
469   2807       1969 Graduation        Married  56796        0
470   1052       1969 Graduation        Married  56796        0
471   9760       1963        PhD          Widow  52278        1
472   7101       1963        PhD          Widow  52278        0
473   5907       1952     Master        Married  33444        0
474   8832       1976     Master       Together  37509        0
475   2535       1978     Master        Married  88097        1
476   1523       1973 Graduation        Married  59041        0
477   1839       1974 Graduation         Single  43322        0
478   9972       1955        PhD       Together  46015        0
479   2945       1955        PhD       Together  46015        0
480   9291       1959     Master        Married  34242        0
481   2829       1955 Graduation        Married  65210        0
482   8594       1958        PhD          Widow  50520        0
483   1592       1970 Graduation        Married  90765        0
484   4310       1944 Graduation        Married  80589        1
485   6950       1958     Master        Married  49572        0
486   8492       1978 Graduation       Together  75437        0
487   5684       1971     Master       Divorced  44635        0
488   5909       1964 Graduation        Married  58512        0
489   9855       1952        PhD         Single  62000        0
490    975       1956 Graduation         Single  54252        0
491   8754       1974        PhD       Together  45068        0
492   1456       1979 Graduation         Single  60474        0
493   2849       1979 Graduation         Single  60474        0
494   9984       1981   2n Cycle        Married  56337        1
495   5628       1982 Graduation       Together  61416        0
496   7627       1975     Master        Married  92163        1
497   1351       1956     Master       Together  58656        0
498  10196       1978 Graduation        Married  71427        0
499   1542       1975 Graduation         Single  56243        0
500   4220       1970        PhD        Married  59892        0
501   4141       1965 Graduation       Together  71613        0
502   1506       1975 Graduation         Single  42160        1
503   1361       1974     Master        Married  82584        1
504   9422       1989 Graduation        Married  38360        0
505   1081       1957        PhD        Married  75283        0
506   7458       1956     Master       Together  34941        0
507   1012       1952 Graduation         Single  61823        0
508   5453       1956     Master        Married  90226        0
509   6818       1974 Graduation        Married  44989        0
510   7807       1974 Graduation        Married  44989        0
511   7532       1980 Graduation        Married  43586        0
512   8346       1974 Graduation         Single  32233        1
513   5564       1969 Graduation       Together  62882        0
514   3267       1963     Master       Together  57288        0
515   3091       1981   2n Cycle       Together  75774        0
516    762       1981   2n Cycle       Together  75774        0
517   8029       1988     Master         Single  90247        1
518   4376       1960   2n Cycle         Single  32218        1
519  10981       1988 Graduation        Married  84219        0
520    486       1988 Graduation        Married  84219        0
521   1158       1966 Graduation       Divorced  48877        0
522   9119       1950 Graduation       Together  60905        0
523   6694       1964 Graduation        Married  75236        0
524  10573       1953 Graduation       Divorced  62551        0
525  10140       1983        PhD       Together  70123        0
526   2286       1962 Graduation         Single  50785        0
527   1029       1970        PhD       Together  64413        0
528   4207       1981        PhD        Married  87171        0
529  10277       1961 Graduation         Single  30081        0
530   6281       1966 Graduation       Divorced  55686        0
531   2574       1977        PhD        Married  61996        1
532    709       1952 Graduation       Divorced  51537        0
533   5955       1962 Graduation       Together  72025        0
534   8486       1971     Master       Together  30538        0
535  10343       1991   2n Cycle         Single  61618        0
536   6652       1965 Graduation        Married  77343        0
537   8746       1989 Graduation        Married  75433        0
538   4686       1962        PhD          Widow  82571        0
539   3551       1954     Master       Together  60033        0
540   4338       1983 Graduation         Single  39062        0
541   4444       1972 Graduation        Married  30023        0
542    498       1970 Graduation         Single  30015        0
543   8230       1980 Graduation        Married  33228        0
544   7352       1957 Graduation        Married  55267        0
545  10928       1958 Graduation       Together  66886        0
546  10736       1971 Graduation         Single  72258        0
547  10163       1984        PhD         Single  82733        1
548   6168       1963 Graduation       Divorced  45146        0
549   4656       1990   2n Cycle         Single  51250        0
550    626       1951 Graduation        Married  32871        0
551   3870       1978   2n Cycle       Together  63855        0
552   6299       1968        PhD       Divorced  42564        1
553   7798       1972   2n Cycle       Together  46344        0
554   9973       1963 Graduation        Married  50437        0
555   4299       1960 Graduation       Together  70971        1
556  10971       1977 Graduation         Single  37774        1
557   6679       1966 Graduation         Single  33279        0
558   5961       1978 Graduation        Married  42693        0
559   6255       1952     Master       Together  70545        0
560   8614       1957 Graduation          Widow  65486        0
561   7828       1981     Master       Together  77882        0
562   1277       1960 Graduation       Together  78468        0
563   3595       1963 Graduation       Together  77226        0
564   5735       1991     Master         Single  90638        0
565   5350       1991     Master         Single  90638        1
566   4137       1948 Graduation       Together  70666        0
567   6357       1959   2n Cycle       Divorced  59052        0
568   3578       1949 Graduation       Divorced  49160        0
569  10524       1963     Master       Divorced  49476        0
570   1518       1965     Master        Married  62694        0
571   2036       1973        PhD       Together  57906        0
572   9495       1982 Graduation       Together  71853        0
573   2631       1982 Graduation       Together  71853        0
574   6312       1959 Graduation        Married  65031        0
575    615       1960 Graduation       Together  30507        0
576   4406       1970 Graduation       Together  67419        0
577  10061       1950 Graduation        Married  59462        0
578  10619       1994 Graduation         Single  95529        1
579   4945       1953 Graduation          Widow  53653        0
580   7922       1951        PhD         Single  64950        0
581  10699       1985 Graduation        Married  44322        0
582   7516       1983 Graduation        Married  30096        0
583   3129       1983 Graduation        Married  30096        0
584   5121       1977 Graduation         Single  56628        0
585   2186       1977   2n Cycle       Together  82326        1
586  10548       1995 Graduation         Single  71163        0
587   6384       1978 Graduation       Divorced  71022        0
588   2625       1954   2n Cycle         Single  42607        0
589   1676       1975 Graduation        Married  43057        0
590   5534       1975     Master        Married  47808        0
591    271       1969 Graduation          Widow  40590        0
592   7699       1969 Graduation          Widow  40590        0
593   7832       1959     Master        Married  77520        1
594    938       1981 Graduation        Married  40211        0
595   7873       1973        PhD       Together  63516        0
596   9967       1974 Graduation       Divorced  53034        0
597   8314       1982 Graduation        Married  79908        0
598   3762       1986        PhD         Single  69867        1
599  10383       1966 Graduation       Divorced  70287        1
600   6798       1966 Graduation         Single  37070        1
601   4168       1966 Graduation         Single  37070        1
602   6690       1966     Master        Married  38179        0
603  10602       1983 Graduation        Married  39922        0
604   3220       1983 Graduation        Married  39922        0
605   5424       1983 Graduation        Married  39922        0
606   7488       1963     Master         Single  64191        0
607   5289       1975   2n Cycle         Single  41658        0
608    347       1976 Graduation       Divorced  40780        0
609   5236       1979 Graduation       Together  77568        0
610   9478       1985 Graduation         Single  66503        0
611    477       1986 Graduation        Married  83512        1
612   7411       1964        PhD        Married  31686        0
613   3107       1976 Graduation       Together  71322        0
614   3790       1956 Graduation       Together  34633        0
615    749       1981 Graduation       Together  42162        1
616   1503       1976        PhD       Together 162397        0
617   8650       1978 Graduation          Widow  54162        0
618    607       1955   2n Cycle       Divorced  41769        0
619   1008       1981        PhD       Together  44953        0
620   9396       1978        PhD        Married  37717        0
621    933       1978        PhD        Married  37717        0
622   5710       1970 Graduation       Together  40548        0
623   2882       1975   2n Cycle       Divorced  67893        0
624   2379       1953 Graduation         Single  69267        1
625   3262       1958 Graduation         Single  68281        1
626   5832       1960   2n Cycle       Together  92556        0
627   5025       1979 Graduation         Single  48526        0
628    569       1991 Graduation         Single  90273        1
629   9449       1958        PhD         Single  79761        0
630   8104       1951        PhD        Married  53312        0
631     75       1982   2n Cycle       Together  41039        0
632   6421       1961 Graduation       Together  88347        0
633   3037       1983        PhD        Married  50150        0
634   4698       1983        PhD        Married  50150        0
635   6177       1985        PhD        Married  33454        0
636   3517       1952 Graduation         Single  40887        1
637   3491       1975 Graduation       Together  55914        0
638   7610       1983 Graduation       Together  37292        0
639   4377       1971 Graduation        Married  52914        0
640   5544       1970 Graduation         Single  67384        0
641   6497       1960 Graduation        Married  51651        0
642   4543       1980 Graduation        Married  82497        0
643   5117       1963   2n Cycle        Married  32632        0
644   1448       1963     Master        Married  33562        0
645   6887       1967 Graduation         Single  79146        0
646   7500       1967 Graduation         Single  79146        0
647   2724       1981     Master         Single  36143        0
648   1100       1960     Master       Together  41275        0
649   7725       1965   2n Cycle        Married  76800        0
650   2612       1987 Graduation        Married  75794        0
651    113       1951 Graduation        Married  30833        0
652   4216       1981 Graduation         Single  91065        1
653    199       1962     Master         Single  45183        0
654    359       1950 Graduation       Together  48070        0
655   8842       1971 Graduation          Widow  30372        0
656   2154       1971 Graduation          Widow  30372        0
657   6050       1975   2n Cycle        Married  57036        0
658   9204       1970 Graduation          Widow  66731        0
659   4472       1970        PhD       Divorced  35682        0
660   3924       1965        PhD       Divorced  57912        0
661   5654       1972 Graduation        Married  36026        0
662   9216       1971 Graduation        Married  35788        0
663   8086       1959 Graduation        Married  42243        0
664   9097       1956 Graduation       Divorced  46086        0
665   7631       1978     Master       Together  61346        0
666   7275       1971     Master         Single  33316        0
667   8334       1971     Master         Single  33316        0
668   2281       1970 Graduation         Single  33697        0
669   2797       1977 Graduation        Married  72117        0
670   3934       1966 Graduation        Married  61286        0
671   2493       1966 Graduation        Married  61286        0
672   3759       1958 Graduation       Together  65196        0
673    965       1971 Graduation       Divorced  55635        0
674   7378       1981     Master       Together  42021        0
675   1859       1972     Master        Married  75251        1
676   6263       1968 Graduation       Together  35322        0
677   2072       1969        PhD       Together  53374        1
678   8908       1959 Graduation        Married  87195        1
679    738       1981   2n Cycle         Single  42395        0
680  10129       1966 Graduation       Together  82427        0
681    807       1969     Master       Together  44602        0
682   3334       1951 Graduation        Married  94642        0
683   4426       1975 Graduation         Single  55801        0
684  10489       1973 Graduation        Married  92955        1
685   2570       1968 Graduation       Together  56534        1
686   3834       1962 Graduation         Single  69627        0
687    590       1970     Master       Divorced  78579        1
688   4791       1980 Graduation       Together  44964        0
689   5304       1974        PhD         Single  30899        0
690   2426       1964        PhD       Divorced  78825        1
691   8041       1971        PhD          Widow  47111        0
692   3584       1955        PhD         Single  49667        1
693   7718       1947     Master       Together  66000        0
694   8605       1964        PhD       Together  46910        0
695   9206       1968 Graduation       Together  77382        0
696   6885       1977 Graduation       Divorced  32952        0
697    907       1975 Graduation        Married  46149        0
698   1150       1899        PhD       Together  83532        0
699   3867       1947        PhD       Together  73059        0
700   3859       1947        PhD       Together  73059        0
701   3265       1959 Graduation        Married  35701        0
702   4418       1983     Master         Single  89616        1
703   4611       1970 Graduation       Together 105471        1
704   4530       1948     Master          Widow  78427        1
705   9949       1976 Graduation        Married  59809        0
706    942       1982 Graduation         Single  39660        1
707   6181       1950   2n Cycle       Together  52203        0
708   7660       1973        PhD          Alone  35860        1
709   2055       1973        PhD       Divorced  35860        0
710   5107       1973        PhD       Divorced  35860        0
711   1626       1973        PhD       Divorced  35860        1
712   6428       1950        PhD          Widow  76842        0
713   4339       1970        PhD        Married  67353        0
714   8527       1965     Master       Together  65735        0
715   1968       1971 Graduation          Widow  45684        0
716  11075       1978 Graduation        Married  51267        0
717   6658       1972 Graduation       Together  59868        0
718   4552       1991 Graduation        Married  51373        0
719  10377       1958     Master       Together  46692        0
720   5336       1971     Master       Together 157733        0
721  10350       1950        PhD        Married  54432        0
722  11071       1984 Graduation         Single  79607        1
723  11100       1972 Graduation       Divorced  51813        0
724   1734       1968        PhD       Together  40706        0
725   2131       1959        PhD       Divorced  62859        0
726   6439       1958 Graduation        Married  61074        0
727  10591       1969 Graduation          Widow  43638        0
728   9797       1956 Graduation        Married  58116        0
729   9336       1969        PhD          Widow  62187        0
730   2174       1954 Graduation         Single  46344        0
731   3197       1980 Graduation        Married  77353        0
732   9185       1966        PhD         Single  69759        1
733  10858       1975 Graduation       Together  76532        0
734   8925       1965     Master        Married  70053        0
735   2499       1958   2n Cycle         Single  75342        0
736    326       1973 Graduation        Married  51148        0
737  10967       1963 Graduation       Divorced  33378        0
738   5370       1973        PhD        Married  32644        0
739   2098       1969        PhD        Married  33581        0
740   5036       1984        PhD         Single  42710        0
741   4856       1957   2n Cycle        Married  82347        0
742   8722       1957   2n Cycle        Married  82347        1
743  10151       1960 Graduation       Divorced  62204        0
744  10473       1956        PhD          Widow  78028        1
745   7079       1962 Graduation       Divorced  63887        0
746   6875       1965        PhD       Together  32727        0
747   2471       1965 Graduation        Married  61482        0
748   6387       1976        PhD       Together  52190        0
749   5866       1974 Graduation       Together  48186        0
750   7901       1971     Master        Married  34109        0
751  10242       1966        PhD       Together  47472        0
752   4201       1962 Graduation         Single  57967        0
753   5092       1949        PhD          Widow  51569        1
754   6566       1954        PhD        Married  72550        0
755   6613       1970     Master        Married  44511        0
756   9094       1955   2n Cycle        Married  62972        1
757   9847       1955   2n Cycle        Married  62972        0
758  10767       1989        PhD       Together  77845        0
759   7943       1975        PhD        Married  36663        0
760   1055       1976     Master        Married  53204        0
761   8402       1953     Master        Married  67087        0
762   6246       1953 Graduation         Single  73892        1
763   4654       1992 Graduation       Together  75114        0
764   6103       1948 Graduation        Married  42192        0
765   8147       1960 Graduation        Married  31454        0
766  10219       1972 Graduation       Together  31590        0
767   2176       1972 Graduation        Married  80134        1
768   9121       1972 Graduation        Married  80134        1
769    178       1956 Graduation        Married  62503        0
770   2308       1954 Graduation        Married  46734        0
771   7431       1991        PhD         Single  68126        1
772   9405       1954        PhD        Married  52869        1
773   7503       1976 Graduation         Single  75825        1
774   8783       1950 Graduation        Married  57045        0
775   1403       1975   2n Cycle       Together  34984        0
776   3463       1975        PhD        Married  69283        0
777   7010       1965   2n Cycle        Married  70924        0
778   4767       1965   2n Cycle        Married  70924        0
779   1927       1973   2n Cycle       Together  69401        0
780    437       1976     Master       Divorced  75012        0
781   4331       1978     Master       Together  85738        0
782   4084       1975 Graduation       Together  60934        0
783   9750       1961        PhD       Divorced  64325        0
784  10581       1977 Graduation        Married  41124        0
785   3710       1984        PhD         Single  39684        1
786   5207       1963        PhD        Married  53378        1
787   9360       1982 Graduation        Married  37040        0
788   4679       1977     Master        Married  78710        0
789   1340       1986 Graduation        Married  92910        0
790  10839       1976 Graduation       Together  36283        0
791   5303       1974        PhD       Together  79632        0
792  10469       1981 Graduation       Together  88325        0
793   3602       1958     Master        Married  51412        0
794   4756       1952   2n Cycle       Divorced  63998        1
795   8181       1978   2n Cycle         Single  38593        0
796  10856       1980   2n Cycle         Single  45889        0
797   3321       1967        PhD       Together  56575        0
798    433       1958     Master          Alone  61331        0
799   6320       1976     Master         Single  70893        0
800   1867       1957 Graduation         Single  64849        1
801   4324       1989 Graduation        Married  42387        0
802   3661       1995   2n Cycle         Single  80617        0
803    521       1985 Graduation       Together  54006        0
804   7186       1966        PhD       Together  30843        0
805   4394       1965        PhD        Married  81051        0
806   1717       1988 Graduation         Single  39747        0
807   1016       1959        PhD         Single  34554        0
808   3783       1959        PhD        Married  52854        0
809   5848       1970 Graduation       Together  81205        1
810  10727       1970        PhD        Married  69084        0
811   5299       1970        PhD        Married  69084        0
812   6872       1974        PhD        Married  65352        0
813  10381       1979 Graduation         Single  47691        0
814   9145       1972 Graduation         Single  72504        0
815   5267       1970 Graduation       Divorced  33986        0
816   9738       1986     Master       Together  42386        0
817  10212       1986     Master       Together  42386        0
818  10010       1953        PhD       Divorced  36957        1
819   2694       1967 Graduation        Married  42664        0
820  10613       1958        PhD       Together  37334        0
821   4646       1951   2n Cycle        Married  78497        0
822   6935       1951   2n Cycle        Married  78497        0
823   5596       1956   2n Cycle       Together  58821        0
824   1044       1953 Graduation       Together  58398        0
825   9274       1961     Master        Married  80950        0
826   9076       1980        PhD        Married  30732        0
827   4947       1966   2n Cycle         Single  89572        1
828  10176       1968 Graduation         Single  57107        1
829   3507       1970 Graduation         Single  76467        1
830  10341       1948 Graduation       Together  51315        0
831   2639       1966 Graduation         Single  43602        0
832   6201       1978 Graduation         Single  38643        0
833   7397       1951 Graduation         Single  49090        0
834   2181       1970 Graduation        Married  70617        0
835   1204       1970        PhD        Married  67536        0
836   4690       1953 Graduation        Married  50725        0
837  10821       1978 Graduation        Married  57113        0
838   6543       1945     Master       Together  62847        0
839   7119       1982 Graduation         Single  68627        0
840   1245       1966 Graduation         Single  63810        0
841   2561       1966 Graduation         Single  63810        0
842   9624       1958        PhD       Together  65488        0
843  10509       1955     Master         Single  36927        0
844   7875       1949 Graduation        Married  72025        1
845   2815       1975 Graduation        Married  33183        0
846  10888       1961 Graduation         Single  45938        0
847   6637       1988 Graduation         Single  66951        0
848   5077       1979 Graduation       Together  77298        0
849   6173       1979 Graduation       Together  77298        0
850   3969       1974     Master       Together  43018        0
851   4580       1969 Graduation        Married  75759        1
852    663       1989        PhD         Single  33996        0
853   8299       1989        PhD         Single  33996        0
854   8945       1970 Graduation       Divorced  54137        0
855  10870       1967 Graduation        Married  61223        0
856   1184       1968        PhD       Divorced  69674        0
857   6141       1972     Master         Single  49494        0
858   8825       1962 Graduation       Together  51195        0
859   2217       1975   2n Cycle        Married  37284        0
860   4102       1975   2n Cycle        Married  37284        0
861   4653       1978 Graduation       Together  42011        0
862  10092       1954 Graduation       Divorced  70044        0
863   5788       1972 Graduation       Together  46053        0
864   6295       1977 Graduation        Married  54233        0
865   7453       1954 Graduation         Single  36130        1
866  10841       1975        PhD       Together  56559        0
867    821       1992     Master         Single  92859        0
868   3933       1980 Graduation       Together  44010        0
869   1225       1963 Graduation        Married  80124        0
870   7059       1963 Graduation        Married  80124        0
871   5633       1980 Graduation        Married  50183        0
872    843       1971 Graduation        Married  64722        0
873   6211       1976        PhD       Together  37395        0
874   6616       1975 Graduation       Together  59481        0
875   6248       1947     Master         Single  91712        1
876   7428       1975 Graduation       Together  80144        0
877   3075       1972        PhD        Married  59973        0
878   2937       1974        PhD         Single  68352        0
879    203       1975     Master         Single  81169        0
880   2021       1975 Graduation        Married  61456        0
881   7011       1973 Graduation        Married  33471        0
882   4184       1950        PhD       Together  52157        0
883   7679       1985        PhD         Single  30298        0
884   7485       1950        PhD          Widow  56551        0
885   7530       1950        PhD          Widow  56551        0
886   4369       1957     Master         Absurd  65487        0
887  10652       1957     Master       Together  65487        0
888    286       1952 Graduation         Single  44213        0
889   5922       1974        PhD        Married  40344        0
890   7250       1978 Graduation       Together  57867        0
891   9214       1991 Graduation        Married  42691        0
892    273       1970     Master        Married  36138        0
893    851       1972     Master        Married  57136        0
894   9729       1955 Graduation          Widow  58275        0
895   9665       1957        PhD       Divorced  54237        0
896   2620       1974        PhD        Married  34596        1
897   8254       1974        PhD        Married  34596        0
898   3852       1961     Master       Together  74881        0
899   1000       1961     Master       Together  74881        0
900   3099       1970 Graduation       Divorced  44267        0
901   6318       1988 Graduation        Married  68487        0
902   5396       1988 Graduation        Married  68487        0
903   7966       1959 Graduation         Single  80982        0
904    454       1980 Graduation       Together  69508        0
905    309       1961        PhD       Together  63342        0
906   3571       1961        PhD       Together  63342        1
907   8395       1961 Graduation         Single  82014        1
908   2591       1959 Graduation          Widow  76320        0
909   1640       1954 Graduation       Divorced  64587        0
910    810       1975 Graduation        Married  74190        0
911   9423       1979     Master        Married  32765        0
912   1215       1978 Graduation       Together  70440        0
913   9283       1978 Graduation         Single  60199        0
914   3120       1981 Graduation       Together  38547        0
915   8143       1985        PhD         Single  37929        1
916   7214       1957 Graduation        Married  62187        0
917   5543       1966 Graduation       Together  57811        0
918   9347       1956     Master       Together  50943        0
919  10160       1956     Master       Together  50943        0
920   1406       1975 Graduation         Single  53201        0
921   7019       1963 Graduation       Together  54414        0
922   8939       1959 Graduation       Divorced  61250        0
923   1272       1965     Master         Single  55250        0
924   3007       1966 Graduation       Together  37758        0
925   5513       1966 Graduation       Together  37758        0
926    679       1957        PhD        Married  37633        0
927   8876       1963        PhD       Together  33629        0
928  10827       1967        PhD        Married  36947        0
929   7300       1952 Graduation       Divorced  69142        0
930   4268       1959 Graduation        Married  53154        0
931   4603       1960        PhD        Married  65695        0
932   8659       1952        PhD       Together  69805        0
933  10708       1978   2n Cycle         Single  36975        0
934  10380       1972     Master        Married  37787        0
935   7037       1974        PhD        Married  37087        0
936  11096       1952   2n Cycle       Together  57247        0
937   6374       1954        PhD        Married  36930        0
938   5552       1963     Master       Divorced  48721        0
939   2245       1969     Master        Married  43641        0
940   6200       1951 Graduation        Married  75903        0
941   9904       1956 Graduation        Married  71391        0
942  10882       1976 Graduation        Married  53858        0
943   5636       1963 Graduation         Single  30983        1
944   8692       1952 Graduation       Together  43462        0
945   8091       1956 Graduation        Married  63943        0
946   8370       1976   2n Cycle       Together  75484        0
947   4550       1966     Master       Together  33564        0
948   3381       1953     Master        Married  54348        0
949  10556       1959 Graduation        Married  54984        0
950   9467       1984 Graduation         Single  34738        0
951   2891       1963 Graduation       Divorced  68118        0
952   5011       1963 Graduation       Divorced  68118        0
953  11039       1975 Graduation        Married  51948        0
954   5290       1964        PhD        Married  41551        0
955   4128       1962        PhD       Together  56067        0
956   8534       1952 Graduation        Married  67433        0
957   8957       1952   2n Cycle         Single  64831        0
958   9308       1954 Graduation        Married  62820        0
959    544       1954 Graduation        Married  62820        0
960   5989       1959   2n Cycle       Divorced  78353        0
961    635       1966     Master        Married  57183        0
962   1710       1978 Graduation         Single  30168        0
963    523       1989 Graduation        Married  37155        0
964   9736       1980 Graduation        Married  41850        0
965   1544       1967     Master       Divorced  81380        0
966   6575       1981 Graduation       Together  56386        0
967   4769       1977     Master       Together  57954        0
968   7540       1952 Graduation        Married  50300        0
969   5247       1955        PhD        Married  38725        0
970  10972       1949 Graduation          Widow  72298        0
971   1399       1958 Graduation        Married  72905        0
972   2698       1976 Graduation         Single  47025        0
973   4107       1948        PhD       Together  46681        0
974  10906       1948        PhD       Together  46681        0
975   8786       1956     Master        Married  62058        0
976   6119       1963        PhD         Single  36736        0
977   1077       1974 Graduation       Together  56715        0
978   4764       1952     Master       Together  40442        1
979   2223       1965   2n Cycle       Divorced  64176        0
980   5827       1958 Graduation       Divorced  35246        0
981   4954       1956 Graduation        Married  48195        0
982   3139       1982   2n Cycle         Single  74116        0
983   9952       1947     Master       Together  78093        0
984   8180       1952     Master       Divorced  59354        0
985   3276       1976   2n Cycle       Together  36301        0
986   4994       1943     Master         Single  77598        0
987   3598       1972 Graduation        Married  62710        0
988    945       1965 Graduation       Together  36317        0
989   5048       1971        PhD         Single  42767        0
990   6214       1982     Master        Married  43815        0
991   6230       1971 Graduation       Divorced  44421        0
992   2968       1943        PhD       Divorced  48948        1
993   8800       1943        PhD       Divorced  48948        1
994   1907       1950     Master       Divorced  63120        1
995  10478       1950        PhD        Married  55517        1
996   4188       1957 Graduation         Single  36864        1
997   2225       1977 Graduation       Divorced  82582        1
998   4790       1958 Graduation       Divorced  79803        0
999   1131       1967        PhD         Single  52569        0
1000   202       1948        PhD          Widow  82032        0
1001  9589       1948        PhD          Widow  82032        0
1002  3900       1972 Graduation        Married  65685        0
1003  9958       1972 Graduation        Married  65685        0
1004  8955       1957        PhD       Together  40451        0
1005 10033       1973   2n Cycle       Divorced  31163        0
1006  5751       1973   2n Cycle       Divorced  31163        0
1007  3308       1952 Graduation        Married  35704        0
1008  8008       1983 Graduation       Together  36075        0
1009  1232       1982        PhD       Together  70038        0
1010  2345       1982        PhD       Together  70038        0
1011  1628       1971 Graduation       Together  71796        0
1012  5081       1967   2n Cycle       Together  47821        0
1013   839       1975        PhD        Married  45503        0
1014  5154       1972     Master       Divorced  37760        0
1015  8584       1952        PhD       Together  85431        0
1016  6583       1955   2n Cycle        Married  72635        0
1017  3433       1955   2n Cycle        Married  72635        0
1018 10486       1948 Graduation        Married  77142        0
1019  8687       1978 Graduation       Together  53172        0
1020  7842       1968 Graduation         Single  36065        0
1021  3749       1973 Graduation       Together  73926        0
1022  1331       1977 Graduation         Single  35790        0
1023  5995       1962 Graduation       Divorced  39552        1
1024  8985       1964   2n Cycle       Together  68316        0
1025  2798       1977        PhD       Together 102160        1
1026  7108       1965     Master          Widow  51390        0
1027  2781       1981 Graduation         Single  72066        1
1028   194       1965 Graduation        Married  48006        0
1029 10833       1975 Graduation        Married  65106        0
1030  2315       1960 Graduation       Divorced  58401        0
1031 10738       1951     Master         Single  49389        0
1032  8286       1965        PhD       Together  51717        0
1033  2166       1960   2n Cycle          Widow  46779        0
1034  9739       1963 Graduation         Single  34377        0
1035  1829       1961        PhD       Divorced  54959        1
1036  6260       1955     Master       Together  82384        1
1037 10448       1956 Graduation         Single  46998        0
1038  1343       1968 Graduation       Together  58554        0
1039  4749       1968 Graduation       Together  58554        0
1040   531       1954        PhD       Divorced  57333        1
1041  6905       1994 Graduation       Together  80685        0
1042  1045       1965 Graduation       Together  52117        0
1043  4012       1972        PhD       Together  62220        1
1044  5529       1946        PhD       Together  64014        0
1045  4001       1946        PhD       Together  64014        0
1046 10420       1955     Master       Divorced  46390        0
1047  7723       1979 Graduation       Together  75507        0
1048  2963       1979 Graduation       Together  75507        0
1049 10634       1951     Master        Married  59412        0
1050  5180       1968        PhD       Divorced  50616        0
1051  6866       1969     Master       Together  35924        0
1052  1328       1982   2n Cycle        Married  57937        0
1053  1139       1984        PhD        Married  73356        1
1054  5177       1974     Master        Married  58494        0
1055  2075       1969 Graduation        Married  72460        0
1056  3428       1991        PhD       Together  68682        0
1057  4500       1991        PhD       Together  68682        0
1058  7369       1981     Master        Married  36959        0
1059  4381       1971        PhD        Married  46463        0
1060  9964       1979 Graduation         Single  61825        0
1061  1630       1979 Graduation         Single  61825        0
1062  7822       1976 Graduation       Together  54058        0
1063 10156       1975 Graduation         Single  84196        0
1064  3033       1963     Master       Together  38620        0
1065  4119       1963     Master       Together  38620        0
1066   332       1957 Graduation        Married  47743        0
1067   737       1949        PhD        Married  80360        0
1068 10319       1971 Graduation        Married  66303        0
1069  2683       1969 Graduation        Married  52413        0
1070  3445       1956 Graduation         Single  60714        1
1071 10913       1984     Master         Single  31385        1
1072  4427       1995   2n Cycle         Single  83257        1
1073  8717       1975        PhD        Married  80427        0
1074  2066       1949 Graduation       Together  38823        0
1075  3340       1977 Graduation        Married  42014        1
1076  8685       1977 Graduation        Married  42014        1
1077  4149       1948        PhD       Together  76140        0
1078  8726       1964   2n Cycle       Divorced  41713        0
1079  2295       1954        PhD        Married  62670        0
1080  3283       1972   2n Cycle        Married  70932        0
1081  1915       1951        PhD        Married  78939        0
1082   800       1960 Graduation       Together  44512        0
1083  9166       1968 Graduation        Married  63967        0
1084  5147       1948 Graduation         Single  90842        0
1085  9381       1978 Graduation        Married  66373        0
1086  9384       1978 Graduation        Married  66373        0
1087  3560       1952 Graduation       Together  83844        0
1088   241       1952 Graduation       Together  83844        0
1089  7521       1952 Graduation       Together  83844        0
1090  9799       1968        PhD       Divorced  83664        0
1091   448       1978        PhD         Single  54880        0
1092  4837       1965        PhD        Married  71322        0
1093  9365       1976        PhD         Single  60000        0
1094  8932       1969     Master       Together  65176        0
1095  7055       1952        PhD       Together  61010        0
1096  3537       1981 Graduation       Together  31089        0
1097  4988       1948        PhD        Married  34469        0
1098  5610       1965 Graduation       Together  33456        0
1099  3526       1968        PhD        Married  38443        0
1100  5136       1973 Graduation         Single  65333        0
1101  1411       1952 Graduation       Divorced  82623        0
1102   701       1971 Graduation        Married  73691        0
1103  6203       1947 Graduation       Together  74485        0
1104  7192       1955 Graduation       Together  65748        0
1105  9220       1971 Graduation         Single  91700        1
1106  7734       1993 Graduation         Absurd  79244        1
1107 10446       1957        PhD        Married  82017        1
1108  5524       1957 Graduation         Single  58138        1
1109  3830       1953     Master        Married  59354        0
1110  5186       1955        PhD        Married  58482        0
1111  7165       1972 Graduation       Together  64474        0
1112 10236       1975     Master         Single  31160        0
1113  2392       1972 Graduation        Married  40321        0
1114  1920       1972 Graduation        Married  40321        0
1115  3673       1971 Graduation         Single  55239        0
1116  1453       1943        PhD          Widow  57513        0
1117  4518       1979 Graduation       Together  85693        0
1118  8969       1977 Graduation        Married  71855        0
1119  1079       1971        PhD        Married  71969        0
1120  3434       1951 Graduation         Single  80872        0
1121  5721       1956        PhD        Married  84117        0
1122  8418       1958   2n Cycle         Single  38741        0
1123  5300       1973     Master        Married  38961        0
1124 10424       1968 Graduation         Single  75922        0
1125 11171       1965     Master        Married  56962        0
1126  1600       1965     Master        Married  56962        0
1127  7851       1949 Graduation          Widow  70165        0
1128 10701       1973 Graduation        Married  65308        0
1129  6912       1967        PhD        Married  63246        0
1130  5967       1952 Graduation       Together  33402        0
1131  2109       1990 Graduation         Single  96843        1
1132  6292       1986        PhD        Married  82333        1
1133  8537       1949 Graduation          Widow  72643        1
1134  9576       1982        PhD       Together  32313        0
1135  5935       1956     Master         Single  55284        0
1136  3202       1987        PhD        Married  51563        0
1137  1103       1976     Master        Married  81929        1
1138   610       1953        PhD       Together  53593        0
1139  4480       1973     Master        Married  60432        0
1140 10660       1957     Master        Married  66726        0
1141  9353       1959 Graduation         Single  62450        0
1142  4120       1975   2n Cycle         Single  49514        0
1143  2836       1972        PhD        Married  43269        0
1144  9579       1959        PhD        Married  33762        0
1145  5841       1966 Graduation       Together  60894        0
1146  3174       1959 Graduation       Together  87771        1
1147  5536       1959 Graduation       Together  87771        1
1148  2061       1955 Graduation        Married  50737        0
1149   640       1951 Graduation        Married  57304        0
1150  3828       1951 Graduation        Married  71107        0
1151  4093       1975     Master       Together  53253        0
1152  8624       1958 Graduation        Married  81320        0
1153  2802       1992   2n Cycle        Married  87000        0
1154   368       1974 Graduation        Married  40049        0
1155  3599       1970 Graduation        Married  63684        0
1156  3389       1970 Graduation        Married  69016        0
1157  7118       1957 Graduation        Married  73803        1
1158  4937       1973   2n Cycle        Married  46094        0
1159  1127       1973        PhD        Married  85844        0
1160   833       1955     Master        Married  38452        0
1161  3565       1955     Master        Married  38452        0
1162  6086       1955 Graduation        Married  80395        0
1163  1763       1988 Graduation       Together  87679        1
1164  4697       1949     Master       Divorced  35416        0
1165   182       1946        PhD       Together  44124        0
1166  1165       1958        PhD         Single  50729        0
1167  5386       1953 Graduation       Together  94384        1
1168  6024       1953 Graduation       Together  94384        1
1169  2678       1990 Graduation         Single  34412        0
1170  5790       1985 Graduation        Married  31158        0
1171   236       1951 Graduation        Married  34838        0
1172  6001       1979 Graduation        Married  56775        0
1173  6250       1949        PhD          Widow  54356        1
1174  1168       1978        PhD        Married  72159        0
1175  2926       1952     Master       Together  55951        0
1176   716       1949        PhD       Together  67911        0
1177  6544       1949        PhD       Together  67911        0
1178  5823       1970        PhD         Single  32303        0
1179  8375       1968        PhD        Married  55954        0
1180  5723       1976        PhD       Together  49187        0
1181  5763       1972     Master       Together  49854        0
1182  8727       1978 Graduation       Divorced  63693        0
1183  3056       1978 Graduation       Divorced  63693        0
1184  3712       1959 Graduation       Divorced  52332        0
1185 10722       1973 Graduation       Together  55593        0
1186  2406       1949 Graduation       Together  54591        0
1187  7313       1949   2n Cycle          Widow  74859        0
1188  2656       1971 Graduation       Divorced  40851        0
1189  1993       1949        PhD        Married  58607        0
1190  2928       1975        PhD         Single  52614        0
1191  2920       1975        PhD         Single  52614        0
1192  6661       1974 Graduation        Married  67445        0
1193  5462       1974 Graduation        Married  67445        0
1194 10897       1974 Graduation        Married  67445        0
1195 10542       1968        PhD        Married  36778        0
1196  5756       1983 Graduation       Together  39453        0
1197  3570       1969        PhD       Together  42731        0
1198  1072       1965        PhD         Single  40760        0
1199  9606       1965        PhD        Married  69969        1
1200  2730       1955 Graduation         Single  80317        0
1201  2995       1957     Master       Together  66636        0
1202  8210       1975     Master        Married  54730        0
1203   773       1971     Master       Divorced  42835        0
1204  5272       1965     Master        Married  53843        0
1205  5125       1960 Graduation        Married  79530        0
1206  4391       1968     Master       Divorced  63841        0
1207  6283       1968     Master       Divorced  63841        0
1208  3421       1968     Master       Divorced  63841        0
1209  3919       1976     Master         Single  72309        1
1210  6097       1959 Graduation         Single  50664        0
1211 10479       1975        PhD        Married  76618        0
1212  5966       1974        PhD        Married  45207        0
1213  3439       1972 Graduation        Married  56721        0
1214  9014       1975 Graduation        Married  37085        0
1215  4050       1966     Master        Married  49605        0
1216  8315       1995 Graduation         Single  34824        0
1217  5184       1995 Graduation         Single  34824        0
1218  3643       1974     Master        Married  63206        0
1219  4887       1976        PhD       Divorced  55412        0
1220 10104       1974 Graduation       Together  33590        0
1221  3254       1971 Graduation        Married  70886        0
1222  2004       1969 Graduation         Single  72679        0
1223  6142       1943     Master        Married  65073        0
1224  8553       1965 Graduation        Married  44300        0
1225  9805       1953     Master       Together  56129        0
1226   849       1953     Master       Together  56129        0
1227  1606       1971 Graduation       Together  38590        0
1228   125       1958   2n Cycle       Together  53083        0
1229  9305       1976   2n Cycle         Single  79689        0
1230  4706       1966 Graduation         Single  34704        0
1231  4437       1962 Graduation        Married  65316        0
1232  3081       1978        PhD        Married  41014        0
1233  9707       1969        PhD        Married  55212        0
1234 10872       1969        PhD        Married  55212        0
1235  9058       1955 Graduation          Widow  79800        1
1236  4640       1967 Graduation       Divorced  70647        0
1237  2525       1974        PhD        Married  38410        1
1238 10704       1969 Graduation         Single  54803        0
1239  2669       1993 Graduation         Single  74293        0
1240 10037       1993 Graduation         Single  74293        0
1241  5680       1984   2n Cycle        Married  35684        0
1242  3726       1986        PhD       Together  34320        0
1243  4548       1981 Graduation         Single  41967        0
1244  4599       1976     Master        Married  49681        0
1245   879       1976     Master        Married  49681        0
1246  7409       1970 Graduation       Together  53187        0
1247  1964       1951 Graduation       Together  86610        0
1248     0       1985 Graduation        Married  70951        0
1249   425       1985 Graduation        Married  55357        0
1250  9500       1959 Graduation        Married  58113        0
1251  3074       1984        PhD        Married  70643        1
1252  5140       1985        PhD        Married  64355        0
1253  2611       1959     Master       Together  82576        0
1254   916       1972        PhD         Single  41644        0
1255 10413       1984 Graduation        Married  72570        0
1256  3696       1965 Graduation       Divorced  30630        0
1257  5113       1971        PhD       Divorced  86979        1
1258  4597       1970        PhD       Together  82072        0
1259   675       1973     Master       Divorced  52034        0
1260  4483       1993 Graduation         Single  72354        0
1261  4487       1969     Master         Single  39858        1
1262  3412       1951     Master        Married  67381        0
1263  5837       1967 Graduation        Married  51479        0
1264  3422       1975 Graduation        Married  76068        0
1265 10702       1984 Graduation         Single  52413        0
1266  2115       1957 Graduation       Together  50116        0
1267  4138       1962 Graduation         Single  76624        0
1268 11091       1953 Graduation       Together  34587        0
1269  7712       1946        PhD         Single  62159        0
1270  3535       1965 Graduation         Single  66294        0
1271  8749       1984 Graduation       Together  37235        0
1272 10955       1964 Graduation          Widow  85620        1
1273  5286       1987     Master         Single  41020        0
1274  3409       1984 Graduation         Single  36108        0
1275  2544       1951     Master       Divorced  57530        0
1276  2118       1964   2n Cycle        Married  62905        0
1277  9370       1945        PhD        Married  65846        0
1278  4864       1977 Graduation        Married  34380        0
1279   405       1964 Graduation       Divorced  41638        0
1280 10513       1992 Graduation       Together  63207        0
1281  8387       1957 Graduation        Married  43140        0
1282   378       1971 Graduation        Married  52531        0
1283  5846       1977 Graduation       Divorced  40246        0
1284  8870       1984 Graduation       Together  35196        1
1285 10340       1984 Graduation       Together  35196        0
1286  7290       1985 Graduation         Single  70596        0
1287  8895       1985 Graduation         Single  70596        0
1288  3635       1962        PhD         Single  52597        0
1289 11178       1972     Master         Single  42394        0
1290  2410       1969 Graduation         Single  81657        0
1291  3281       1960        PhD        Married  49154        0
1292  9905       1952 Graduation       Together  34074        0
1293  2565       1955     Master       Divorced  70638        0
1294  7912       1978 Graduation        Married  38136        0
1295  7072       1973 Graduation        Married  67432        0
1296  1409       1951 Graduation       Together  40689        0
1297  5314       1951 Graduation       Together  40689        0
1298  7215       1983 Graduation         Single 101970        1
1299  8858       1972        PhD        Married  44325        0
1300   895       1948        PhD        Married  61467        0
1301 10313       1975 Graduation        Married  48178        0
1302  8504       1973 Graduation        Married  79593        0
1303  1020       1973 Graduation        Married  79593        0
1304  3717       1959 Graduation        Married  61180        0
1305  7646       1989 Graduation         Single  64449        0
1306  5796       1963 Graduation        Married  77437        0
1307  5407       1954 Graduation       Together  53103        0
1308  4356       1971 Graduation       Together  71819        0
1309  2886       1971     Master       Divorced  74290        0
1310 10057       1951 Graduation         Single  72282        1
1311 10741       1951     Master       Together  47352        0
1312  5491       1951     Master       Together  47352        0
1313  4442       1961 Graduation         Single  46524        0
1314  3972       1976 Graduation       Together  50200        0
1315  7899       1952        PhD        Married  77610        0
1316  9703       1970        PhD        Married  38097        1
1317  6927       1968        PhD        Married  44377        0
1318  7005       1981 Graduation         Single  58684        0
1319   246       1965 Graduation        Married  66480        0
1320  4796       1952 Graduation       Divorced  49638        0
1321  4725       1950        PhD       Together  50616        0
1322 10680       1986 Graduation       Together  33235        0
1323  7327       1959        PhD        Married  36732        0
1324  1553       1946 Graduation       Together  82657        0
1325  1665       1964        PhD       Divorced  64140        1
1326 10640       1974 Graduation       Together  44392        0
1327  7761       1978   2n Cycle       Together  38702        0
1328  5062       1963        PhD        Married  54072        0
1329  6349       1987     Master       Divorced  61787        0
1330  3386       1992 Graduation        Married  34935        0
1331  8175       1992 Graduation        Married  34935        0
1332  6245       1950        PhD       Together  59292        0
1333  8780       1950        PhD       Together  59292        0
1334  2276       1955 Graduation         Single  57959        0
1335  1172       1983        PhD        Married  92491        1
1336  3225       1984     Master        Married  42207        1
1337  8629       1956 Graduation          Widow  46984        0
1338   269       1963        PhD         Single  46757        0
1339 10245       1986   2n Cycle         Single  80910        0
1340  2447       1979 Graduation       Together  30545        0
1341  9817       1970     Master         Single  44802        0
1342  1371       1976 Graduation         Single  79941        0
1343  8093       1969     Master        Married  79734        0
1344   713       1977     Master        Married  50353        0
1345 11051       1956        PhD       Together  77376        0
1346  5545       1972        PhD        Married  78075        0
1347  5283       1976        PhD         Single  42473        0
1348  7495       1948        PhD        Married  56223        0
1349  4368       1980 Graduation        Married  47850        0
1350  6303       1986        PhD       Together  91820        0
1351  1030       1965        PhD         Single  40637        0
1352  6945       1952 Graduation         Single  84574        0
1353  8562       1969 Graduation       Together  54165        0
1354  9167       1956 Graduation        Married  67131        0
1355  4743       1969        PhD        Married  56242        0
1356 10742       1983        PhD        Married  86580        0
1357 10965       1955 Graduation       Together  76005        0
1358  7129       1962        PhD        Married  54693        0
1359  3732       1955     Master        Married  52750        0
1360  7124       1968 Graduation       Divorced  36997        0
1361 10686       1965        PhD       Together  34230        0
1362  7247       1960 Graduation          Widow  47916        0
1363  1513       1979   2n Cycle       Together  60839        0
1364   460       1972        PhD        Married  79930        0
1365  6653       1970        PhD        Married  55158        1
1366  9400       1958   2n Cycle         Single  85485        0
1367  7106       1943        PhD        Married  75865        0
1368  4252       1965 Graduation        Married  44375        0
1369  9240       1971        PhD         Single  60504        0
1370 10770       1959 Graduation        Married  65492        0
1371   176       1980   2n Cycle         Single  67506        0
1372  6870       1959        PhD       Divorced  68805        0
1373   143       1970 Graduation         Single  61209        0
1374  6445       1967 Graduation       Together  66825        0
1375  4278       1983        PhD         Single  87188        1
1376  6906       1953     Master          Widow  84953        1
1377  4637       1954        PhD         Single  74637        0
1378  8690       1962 Graduation        Married  86111        0
1379  1173       1947     Master       Together  77632        1
1380  1928       1973 Graduation        Married  31814        0
1381  9029       1972        PhD        Married  70116        0
1382 10299       1969        PhD         Single  48240        1
1383  9246       1985     Master       Together  40101        0
1384  4943       1953 Graduation        Married  70503        0
1385  4122       1975 Graduation        Married  79205        1
1386  2853       1980 Graduation         Single  51766        0
1387   902       1980 Graduation       Together  62994        0
1388  1672       1974        PhD       Together  65640        0
1389  7254       1969 Graduation       Together  38361        0
1390  8775       1969 Graduation       Together  38361        0
1391  2894       1985 Graduation         Single  72903        1
1392  5956       1948        PhD       Divorced  45072        0
1393  1921       1967        PhD        Married  59062        0
1394  5057       1961     Master        Married  61794        0
1395 10260       1965     Master       Together  45143        0
1396  2262       1965     Master       Together  45143        0
1397  1461       1965        PhD       Divorced  36921        0
1398  7514       1956   2n Cycle       Together  54342        0
1399  6461       1969     Master         Single  62772        0
1400   257       1959        PhD        Married  75032        0
1401   367       1978   2n Cycle        Married  36550        0
1402  9265       1953 Graduation        Married  75027        0
1403  1990       1974        PhD         Single  63159        0
1404  3594       1973     Master        Married  54108        0
1405  9292       1952 Graduation        Married  81795        0
1406  6218       1965 Graduation        Married  59594        0
1407 10164       1958 Graduation         Single  94472        0
1408  9937       1979 Graduation         Single  70337        0
1409   274       1973 Graduation         Single  34853        0
1410  6969       1982 Graduation       Together  50272        0
1411  9974       1974 Graduation        Married  30631        0
1412  7053       1966        PhD         Single  78420        0
1413  3179       1980 Graduation         Single  81741        0
1414  1362       1972 Graduation         Single  31907        0
1415  6768       1962 Graduation       Divorced  37859        0
1416  2375       1972 Graduation       Together  30261        0
1417  4333       1954 Graduation       Together  32144        0
1418  2948       1954     Master       Divorced  62637        0
1419  7426       1971   2n Cycle        Married  54690        0
1420  8360       1971   2n Cycle        Married  54690        0
1421  4058       1955        PhD         Single  61284        0
1422  8414       1962        PhD         Single  33419        0
1423  6810       1983 Graduation       Divorced  82025        1
1424  3483       1958 Graduation        Married  48192        1
1425   238       1967   2n Cycle       Together  67309        0
1426   591       1957 Graduation          Widow  66033        0
1427  2258       1986 Graduation        Married  32880        0
1428  5287       1973 Graduation        Married  34961        0
1429  6457       1976 Graduation       Divorced  64892        0
1430  5577       1983 Graduation       Together  43776        0
1431   641       1967 Graduation         Single  52074        0
1432  1834       1978     Master         Single  35544        0
1433  8789       1989   2n Cycle        Married  59060        0
1434 10584       1976 Graduation        Married  65665        0
1435  6071       1989 Graduation         Single  81217        0
1436   295       1989 Graduation         Single  81217        0
1437  3968       1970   2n Cycle       Divorced  65706        1
1438  4037       1976 Graduation       Divorced  31859        0
1439  6932       1941        PhD        Married  93027        0
1440 10159       1970 Graduation       Divorced  58710        0
1441  1177       1966     Master       Together  49618        0
1442  9426       1964     Master         Single  58308        0
1443 10637       1964 Graduation        Married  40800        0
1444 10992       1967 Graduation       Together  75702        0
1445  6383       1971        PhD       Together  32892        0
1446 10536       1971        PhD       Together  32892        0
1447  6036       1959     Master       Together  89120        0
1448   538       1989 Graduation         Single  46107        0
1449 10022       1973        PhD         Single  54466        0
1450 10157       1965 Graduation         Single  59686        0
1451  3503       1950 Graduation       Divorced  82460        0
1452   146       1960        PhD         Single  76045        0
1453  5538       1975 Graduation       Divorced  83829        1
1454  3910       1975 Graduation       Divorced  83829        1
1455  4227       1968     Master       Together  32889        0
1456  6634       1979     Master       Divorced  33462        0
1457  8916       1975 Graduation       Divorced  36627        0
1458  5883       1972 Graduation        Married  77981        0
1459 10091       1956 Graduation         Single  60230        0
1460   697       1969 Graduation       Together  74918        0
1461  2607       1953 Graduation         Single  40464        0
1462  8427       1956     Master         Single  64857        0
1463   217       1956     Master         Single  64857        0
1464  6202       1960 Graduation       Together  63381        0
1465  3856       1960 Graduation       Together  63381        0
1466 10648       1982   2n Cycle       Together  66664        0
1467  5120       1982   2n Cycle       Together  66664        0
1468  6749       1966 Graduation         Single  86358        0
1469  1584       1977 Graduation        Married  41443        0
1470  9559       1961        PhD        Married  57072        0
1471   771       1967 Graduation       Together  54178        0
1472  5237       1950        PhD         Single  48767        0
1473  2461       1955     Master         Single  51124        0
1474  5474       1970 Graduation         Single  43020        0
1475  2895       1963 Graduation         Single  49980        0
1476  7972       1955 Graduation         Single  72906        0
1477   500       1977 Graduation       Together  96876        1
1478   922       1979   2n Cycle        Married  31086        0
1479   375       1954 Graduation       Divorced  76773        0
1480 10936       1965 Graduation        Married  72190        0
1481 10314       1948        PhD        Married  83837        1
1482  2674       1958     Master         Single  75154        1
1483  6999       1980     Master        Married  69661        0
1484  5223       1966     Master       Together  45903        0
1485  2952       1977     Master         Single  36273        0
1486  7683       1968     Master        Married  70777        0
1487  9907       1969     Master       Together  66476        0
1488  5454       1979     Master        Married  45057        0
1489  3798       1968 Graduation        Married  41120        0
1490  6437       1985   2n Cycle         Single  41473        0
1491  2488       1956   2n Cycle       Divorced  31395        0
1492  3945       1947        PhD          Widow  68117        1
1493   702       1975   2n Cycle          Widow  47682        0
1494  9010       1972     Master        Married  83151        1
1495  9710       1969        PhD       Divorced  58086        0
1496  1509       1958        PhD       Together  84460        1
1497  9120       1962 Graduation         Single  66565        0
1498  5959       1968 Graduation         Single  35893        0
1499  7441       1973 Graduation       Divorced  71128        0
1500  4271       1989   2n Cycle       Together  38683        0
1501  4095       1971 Graduation        Married  37150        0
1502  8852       1976 Graduation        Married  61064        0
1503  7698       1976        PhD        Married  51650        0
1504  4174       1956     Master       Together  55249        0
1505  3182       1973        PhD         Single  46854        1
1506  5229       1969        PhD       Together  54132        0
1507  5555       1975 Graduation       Divorced 153924        0
1508  7732       1978 Graduation        Married  64813        0
1509   310       1970     Master        Married  61872        0
1510  6261       1979 Graduation        Married  58025        0
1511  6274       1948     Master        Married  83790        0
1512  1655       1979 Graduation       Together  34350        0
1513  2740       1958        PhD          Widow  33438        0
1514    17       1971        PhD        Married  60491        0
1515  9153       1964        PhD        Married  59304        0
1516   520       1974 Graduation        Married  34421        0
1517  8372       1974 Graduation        Married  34421        0
1518    73       1953        PhD         Single  51411        0
1519  2002       1958 Graduation       Divorced  71964        0
1520  6059       1953        PhD       Together  64504        1
1521 11166       1961 Graduation        Married  49678        0
1522  6257       1976     Master         Single  60482        0
1523  9224       1972        PhD         Single  55260        0
1524  8732       1969     Master          Widow  67369        1
1525   955       1962     Master       Together  47175        1
1526  4910       1967 Graduation       Divorced  68743        0
1527   564       1981        PhD       Together  56937        1
1528  8931       1986 Graduation       Together  83033        0
1529  1998       1976 Graduation         Single  37697        0
1530  1250       1976 Graduation         Single  37697        0
1531  8397       1951 Graduation        Married  44689        0
1532  2125       1959 Graduation       Divorced  63033        0
1533  5975       1967        PhD         Single  40304        0
1534   983       1984 Graduation        Married  40059        0
1535  9938       1954 Graduation        Married  80067        0
1536  4385       1981        PhD         Single  36038        0
1537   803       1968 Graduation       Together  40521        0
1538 10675       1956        PhD        Married  66334        1
1539  4432       1976 Graduation       Divorced  31615        0
1540  4475       1949        PhD        Married  69098        0
1541 10868       1951 Graduation          Widow  70792        0
1542   339       1972        PhD        Married  57091        1
1543  8017       1981   2n Cycle        Married  51111        0
1544  3722       1972 Graduation         Single  44503        0
1545  7326       1971     Master        Married  56850        0
1546  2416       1969        PhD         Single  66582        0
1547  5278       1964 Graduation        Married  82224        0
1548  5734       1974        PhD        Married  61917        0
1549  4370       1966 Graduation       Together  43482        0
1550  8405       1979 Graduation       Divorced  68274        0
1551  7617       1974 Graduation         Single  42373        0
1552  6376       1979 Graduation         Single  57537        0
1553  2150       1958        PhD          Widow  80995        0
1554  7386       1976 Graduation       Divorced  30992        0
1555  3006       1976 Graduation       Divorced  30992        0
1556 11088       1971        PhD       Together  78642        0
1557  5185       1955 Graduation        Married  74268        0
1558  3523       1962 Graduation       Together  75072        0
1559    55       1963 Graduation       Together  56253        0
1560  3807       1955 Graduation       Together  59925        0
1561  2453       1960 Graduation       Together  62807        0
1562  7787       1960 Graduation       Together  62807        0
1563  8146       1976     Master       Together  46106        0
1564   988       1965 Graduation        Married  81168        0
1565   361       1969     Master        Married  43142        0
1566  5939       1971 Graduation       Together  38232        0
1567  9349       1985 Graduation        Married  92533        0
1568   819       1945 Graduation          Widow  63285        0
1569 10120       1955 Graduation       Together  38946        0
1570  4541       1955 Graduation       Together  38946        0
1571  2456       1975        PhD        Married  40233        0
1572  2516       1969   2n Cycle        Married  46831        0
1573 11013       1987 Graduation       Together  67605        0
1574  9988       1976     Master         Single  70379        0
1575  1627       1957   2n Cycle       Divorced  77297        0
1576  1490       1962 Graduation        Married  55759        0
1577  6710       1951     Master         Single  58217        0
1578  7375       1976 Graduation       Together  51369        0
1579 10144       1976 Graduation       Together  51369        0
1580  3138       1956 Graduation         Single  91249        1
1581  1440       1978   2n Cycle       Together  52513        0
1582  4200       1970     Master        Married  44159        0
1583  4998       1962 Graduation       Together  76081        0
1584  7321       1962 Graduation       Together  76081        0
1585  8663       1974 Graduation       Divorced  39996        0
1586  1958       1973        PhD       Together  55012        0
1587  6963       1947 Graduation         Single  77457        0
1588  1065       1963 Graduation         Single  80695        0
1589  2712       1956 Graduation        Married  71866        0
1590  6049       1982     Master       Together  73450        0
1591  6605       1944        PhD       Divorced  55614        0
1592 11181       1949        PhD        Married 156924        0
1593  5234       1967   2n Cycle       Together  30753        0
1594  5253       1956     Master       Together  54603        0
1595  6289       1951     Master       Together  59385        0
1596  9743       1955 Graduation        Married  76998        0
1597  9209       1971     Master       Together  80573        0
1598  6417       1971     Master       Together  80573        0
1599  6488       1959        PhD        Married  38829        0
1600  3194       1974        PhD         Single  71466        0
1601  9697       1951 Graduation        Married  53790        0
1602  4676       1951     Master          Widow  73705        0
1603 10505       1960     Master       Together  73113        0
1604  2005       1990 Graduation        Married  35765        0
1605  6940       1966        PhD         Single  46734        0
1606  2304       1963        PhD       Together  66313        0
1607  3170       1957     Master       Together  68148        0
1608 10466       1965 Graduation        Married  44393        0
1609  7325       1986        PhD       Together  38197        0
1610   455       1946        PhD        Married  51012        0
1611  7592       1946        PhD        Married  51012        0
1612  6825       1953 Graduation       Together  41452        0
1613  2961       1982 Graduation        Married  42081        0
1614  2278       1985   2n Cycle         Single  33812        0
1615 10703       1975     Master         Single  46098        0
1616     9       1975     Master         Single  46098        0
1617  2804       1975     Master         Single  46098        1
1618  4915       1956   2n Cycle        Married  53230        0
1619  3010       1989     Master       Together  88420        0
1620  4279       1963   2n Cycle         Single  39548        0
1621  2564       1953 Graduation       Together  61278        0
1622  1137       1964 Graduation         Single  81246        0
1623  5084       1975 Graduation          Widow  58330        0
1624  7094       1975 Graduation          Widow  58330        0
1625  6327       1967 Graduation       Together  65777        0
1626  6131       1980   2n Cycle        Married  70829        0
1627 10379       1962     Master         Single  59247        0
1628  7801       1959 Graduation       Together  54753        0
1629   550       1952 Graduation       Divorced  62335        0
1630  4478       1979 Graduation        Married  63777        0
1631  2350       1972 Graduation        Married  59666        0
1632  1118       1956     Master        Married  50965        0
1633  1491       1965   2n Cycle       Together  71488        0
1634  4507       1952 Graduation         Single  72228        0
1635  7023       1953        PhD         Single  46231        0
1636  6977       1974 Graduation       Together  75702        0
1637  4042       1971 Graduation       Divorced  43300        1
1638  7274       1957 Graduation        Married  78618        0
1639  9386       1962 Graduation       Together  50127        0
1640 10323       1952 Graduation        Married  49413        0
1641  4682       1958 Graduation        Married  51876        0
1642  3083       1974 Graduation        Married  45837        0
1643  8015       1962        PhD       Divorced  85696        1
1644  1745       1962        PhD       Divorced  85696        1
1645  3136       1962     Master       Divorced  59432        0
1646  6991       1951 Graduation       Divorced  43185        0
1647  8132       1975        PhD        Married  60631        0
1648  8148       1956     Master       Together  50898        0
1649  2736       1978 Graduation        Married  73807        0
1650   692       1954 Graduation       Together  36807        0
1651  7706       1975   2n Cycle       Together  46772        0
1652  9298       1947        PhD       Together  81574        0
1653  2986       1976 Graduation        Married  30772        0
1654 10812       1978        PhD        Married  46377        0
1655  2909       1974        PhD        Married  78128        0
1656  6974       1972        PhD       Together  83443        0
1657  9140       1960   2n Cycle       Together  50523        0
1658  4554       1965 Graduation       Together  47009        0
1659  7791       1967     Master        Married  37054        0
1660  5455       1971        PhD        Married  32011        0
1661  7960       1962   2n Cycle       Together  82122        0
1662  3426       1975 Graduation       Divorced  70300        0
1663  1404       1968 Graduation       Together  34916        0
1664  8212       1971     Master        Married  39791        0
1665  3233       1965        PhD        Married  62745        0
1666  2975       1976 Graduation       Together  85606        0
1667  3104       1961 Graduation         Single  82332        1
1668 10854       1970        PhD        Married  38853        0
1669  5558       1954        PhD         Single  90933        0
1670   832       1966        PhD       Together  65814        0
1671  4964       1958        PhD       Together  74250        0
1672 11030       1976     Master        Married  33181        0
1673  4587       1944     Master          Widow  45006        0
1674   450       1958     Master       Together  42315        0
1675 11031       1950        PhD        Married  48699        0
1676  4990       1954 Graduation        Married  59111        0
1677   221       1955 Graduation        Married  48726        0
1678  4351       1955 Graduation       Divorced  37244        0
1679  1357       1970 Graduation       Together  74854        0
1680  5667       1964        PhD        Married  60896        1
1681  8867       1988        PhD        Married  67546        0
1682  2747       1988        PhD        Married  67546        0
1683  7422       1987 Graduation         Single  46923        0
1684  4148       1972 Graduation        Married  38988        0
1685  9516       1971   2n Cycle       Divorced  49118        1
1686  1833       1974        PhD         Single  39190        0
1687  7270       1981 Graduation       Divorced  56981        0
1688 10394       1984 Graduation        Married  90000        0
1689  1142       1953        PhD        Married  55707        0
1690  7128       1977        PhD         Single  42997        0
1691 10678       1959 Graduation       Together  71232        0
1692  7755       1954        PhD        Married  57744        0
1693  4754       1966     Master        Married  33585        0
1694    20       1965   2n Cycle        Married  46891        0
1695  2246       1965   2n Cycle        Married  46891        0
1696 10307       1956 Graduation        Married  50387        0
1697  2147       1969 Graduation       Together  76653        0
1698 10590       1956        PhD       Together  76542        0
1699  6565       1949     Master        Married  76995        0
1700  6619       1978 Graduation        Married  38415        0
1701  4508       1952 Graduation         Single  75127        0
1702  4843       1952 Graduation         Single  75127        0
1703  9197       1953 Graduation        Married  39722        0
1704  6515       1977 Graduation       Together  39771        0
1705  5954       1972     Master       Divorced  42618        0
1706  7938       1958        PhD       Together  51518        0
1707   961       1972 Graduation        Married  74716        0
1708  1764       1975 Graduation         Single  33955        0
1709  1916       1954     Master        Married  45736        0
1710  6941       1971 Graduation         Single  31632        0
1711  5562       1974 Graduation        Married  60093        0
1712  1517       1969 Graduation         Single  30822        0
1713  7286       1968 Graduation       Together  41728        0
1714  4687       1958     Master        Married  80739        0
1715  5631       1991 Graduation         Single  49767        0
1716  1951       1981      Basic        Married  34445        0
1717   123       1951 Graduation          Widow  67046        0
1718  9451       1965 Graduation        Married  73538        0
1719  7396       1966 Graduation        Married  80398        0
1720  3298       1956     Master        Married  52973        0
1721  6730       1954 Graduation        Married  38998        0
1722  9916       1954 Graduation        Married  38998        0
1723  4094       1961 Graduation        Married  60544        0
1724  8588       1961 Graduation        Married  60544        0
1725  3916       1971        PhD       Together  49269        0
1726  1755       1988   2n Cycle       Together  45204        0
1727  2875       1978 Graduation        Married  67023        0
1728  2008       1978 Graduation        Married  77583        0
1729 10925       1983 Graduation        Married  76630        0
1730  1604       1960     Master        Married  47353        0
1731  5389       1964 Graduation        Married  48920        0
1732  2878       1947        PhD        Married  67472        0
1733  4440       1964     Master        Married  64100        0
1734  1324       1988 Graduation        Married  38872        0
1735  6262       1962     Master         Single  72217        0
1736   322       1978 Graduation       Together  42554        0
1737   175       1986 Graduation        Married  71952        0
1738  6988       1986 Graduation        Married  71952        0
1739  8204       1971   2n Cycle        Married  78041        0
1740  7476       1964     Master         Single  63972        0
1741  5221       1957 Graduation        Married  52852        0
1742  8970       1972        PhD        Married  62010        0
1743  9286       1960     Master       Together  83151        0
1744  5831       1967 Graduation        Married  77870        1
1745  1010       1977 Graduation       Together  46931        0
1746 11074       1977 Graduation         Single  85072        0
1747  5896       1987     Master        Married  73395        0
1748  3515       1952 Graduation         Single  62307        0
1749  5324       1981        PhD        Married  58293        0
1750  6534       1974 Graduation       Together  47889        0
1751  4501       1965     Master         Single  69882        0
1752  9239       1961     Master        Married  61923        0
1753  8953       1965     Master         Single  35791        0
1754 10258       1965     Master         Single  35791        0
1755  3520       1990     Master         Single  91172        1
1756 10402       1967 Graduation        Married  35441        0
1757  6055       1979 Graduation        Married  71626        0
1758  4786       1977 Graduation        Married  75330        0
1759  5015       1976     Master        Married  34529        0
1760  8560       1992 Graduation         Single  48789        0
1761  3469       1977        PhD       Divorced  34487        0
1762  5885       1973   2n Cycle        Married  35688        0
1763  3310       1973   2n Cycle        Married  35688        0
1764  2134       1952 Graduation         Single  53700        0
1765  2532       1987     Master         Single  73454        0
1766  2579       1957 Graduation        Married  71113        0
1767  5623       1980     Master        Married  31535        0
1768  4789       1953 Graduation       Together  80812        0
1769  9523       1982 Graduation       Together  40479        0
1770  1545       1986 Graduation        Married  38508        0
1771  2254       1983 Graduation        Married  69520        0
1772  5847       1969 Graduation       Divorced  69901        0
1773  5863       1953 Graduation        Married  47703        0
1774   999       1991 Graduation         Single  86037        1
1775  2931       1978 Graduation       Divorced  71847        0
1776  1890       1971   2n Cycle       Together  42033        0
1777  5589       1964 Graduation       Divorced  51983        0
1778 10172       1988 Graduation         Single  68655        0
1779  6729       1988 Graduation         Single  68655        0
1780 10492       1959 Graduation       Together  38285        0
1781  2939       1970     Master       Together  79419        0
1782  5948       1975 Graduation         Single  57338        0
1783   574       1964 Graduation        Married  42523        0
1784  3266       1964 Graduation        Married  42523        0
1785 10500       1984 Graduation        Married  31761        0
1786  7987       1969 Graduation        Married  65747        0
1787  1966       1965        PhD        Married  84618        0
1788  7789       1965        PhD        Married  84618        0
1789  3336       1948        PhD       Together  66375        0
1790  5644       1957 Graduation       Together  42213        0
1791  6663       1940        PhD         Single  51141        0
1792  5748       1965 Graduation        Married  59754        1
1793  8952       1953     Master        Married  65569        0
1794  9826       1972        PhD         Single  86857        1
1795  5830       1972        PhD         Single  86857        1
1796  8310       1964 Graduation       Together  68142        0
1797  6382       1953 Graduation       Together  48794        0
1798  8439       1964 Graduation       Together  63404        0
1799  7613       1974   2n Cycle       Together  49669        0
1800    48       1964 Graduation       Together  55761        0
1801  5046       1958 Graduation       Divorced  78331        0
1802  3231       1973 Graduation        Married  37971        0
1803  7181       1977 Graduation        Married  30368        0
1804  1663       1978        PhD       Together  34043        0
1805  5441       1965        PhD          Widow  54111        0
1806  8602       1964 Graduation       Divorced  69932        0
1807  9925       1981        PhD       Together  39665        0
1808  9499       1954 Graduation        Married  93404        0
1809  6568       1984 Graduation        Married  38680        0
1810  5153       1967        PhD        Married  77766        1
1811  4127       1967        PhD        Married  77766        1
1812  9940       1958 Graduation       Together  64961        0
1813  3406       1964 Graduation         Single  45989        0
1814  6722       1954        PhD        Married  70421        0
1815  8475       1973        PhD        Married 157243        0
1816  8070       1973        PhD        Married  54222        0
1817   313       1968 Graduation          Widow  73455        0
1818  9757       1972 Graduation       Together  84906        0
1819  2088       1972 Graduation       Together  84906        0
1820  2320       1978   2n Cycle        Married  47025        0
1821   966       1966 Graduation        Married  44529        0
1822  9706       1974        PhD         Single  31560        0
1823  3979       1983        PhD       Divorced  90687        1
1824  5602       1989        PhD       Together  66973        0
1825  2202       1978 Graduation       Together  41154        0
1826  9645       1968 Graduation        Married  64590        0
1827  7230       1960        PhD       Divorced  50611        1
1828  5675       1960        PhD       Divorced  50611        0
1829  4974       1970 Graduation         Single  83273        0
1830  5687       1980 Graduation       Divorced  81702        0
1831  3846       1974 Graduation        Married  42557        0
1832  2831       1976 Graduation       Together  78416        0
1833   868       1966 Graduation        Married  44794        0
1834  7212       1966 Graduation        Married  44794        0
1835  1743       1974 Graduation         Single  69719        0
1836  2415       1962 Graduation       Together  62568        0
1837  7947       1969 Graduation        Married  42231        0
1838  8595       1973 Graduation          Widow  42429        0
1839  7232       1973 Graduation          Widow  42429        0
1840  7829       1900   2n Cycle       Divorced  36640        0
1841  9977       1973 Graduation       Divorced  78901        0
1842 10142       1976        PhD       Divorced  66476        0
1843  5263       1977   2n Cycle        Married  31056        0
1844    22       1976 Graduation       Divorced  46310        0
1845   528       1978 Graduation        Married  65819        0
1846  4070       1969        PhD        Married  94871        1
> 
> cat("\nСоздайте новые столбцы: Age (возраст на момент 2023 года) и Rich_flag (который принимает True, если Income больше 80 000):")

Создайте новые столбцы: Age (возраст на момент 2023 года) и Rich_flag (который принимает True, если Income больше 80 000):
> df <- mutate(df, Age = 2023 - Year_Birth, Rich_flag = Income > 80000)
> print(df)
        Id Year_Birth  Education Marital_Status Income Response Age Rich_flag
1     1826       1970 Graduation       Divorced  84835        1  53      TRUE
2        1       1961 Graduation         Single  57091        1  62     FALSE
3    10476       1958 Graduation        Married  67267        0  65     FALSE
4     1386       1967 Graduation       Together  32474        0  56     FALSE
5     7348       1958        PhD         Single  71691        1  65     FALSE
6     4073       1954   2n Cycle        Married  63564        1  69     FALSE
7     1991       1967 Graduation       Together  44931        0  56     FALSE
8     4047       1954        PhD        Married  65324        0  69     FALSE
9     9477       1954        PhD        Married  65324        0  69     FALSE
10    2079       1947   2n Cycle        Married  81044        0  76      TRUE
11    5642       1979     Master       Together  62499        0  44     FALSE
12   10530       1959        PhD          Widow  67786        1  64     FALSE
13     837       1977 Graduation        Married  54809        0  46     FALSE
14   10521       1977 Graduation        Married  54809        1  46     FALSE
15   10175       1958        PhD       Divorced  32173        0  65     FALSE
16    1473       1960   2n Cycle         Single  47823        0  63     FALSE
17    2795       1958     Master         Single  30523        0  65     FALSE
18    2285       1954     Master       Together  36634        0  69     FALSE
19     115       1966     Master         Single  43456        0  57     FALSE
20   10470       1979     Master        Married  40662        0  44     FALSE
21    4065       1976        PhD        Married  49544        0  47     FALSE
22   10968       1969 Graduation         Single  57731        0  54     FALSE
23    5985       1965     Master         Single  33168        0  58     FALSE
24    5430       1956 Graduation       Together  54450        0  67     FALSE
25    8432       1956 Graduation       Together  54450        0  67     FALSE
26     453       1956        PhD          Widow  35340        0  67     FALSE
27    9687       1975 Graduation         Single  73170        0  48     FALSE
28    8890       1971        PhD       Divorced  65808        0  52     FALSE
29    9264       1986 Graduation        Married  79529        0  37     FALSE
30    5824       1972        PhD       Together  34578        0  51     FALSE
31    5794       1974        PhD        Married  46374        1  49     FALSE
32    7962       1987        PhD         Single  95169        1  36      TRUE
33    2681       1984   2n Cycle        Married  65370        0  39     FALSE
34   10141       1960     Master       Divorced  39228        0  63     FALSE
35    3725       1961        PhD         Single  84865        1  62      TRUE
36    3767       1968 Graduation        Married  61314        0  55     FALSE
37    7030       1955        PhD        Married  66465        0  68     FALSE
38    1524       1983   2n Cycle         Single  81698        1  40      TRUE
39    3657       1986 Graduation         Single  39146        0  37     FALSE
40    9595       1961 Graduation       Together  64260        1  62     FALSE
41    3158       1973 Graduation        Married  32300        0  50     FALSE
42    5114       1965     Master        Married  74806        0  58     FALSE
43     340       1970 Graduation       Divorced  72967        1  53     FALSE
44    8805       1960 Graduation         Single  48904        0  63     FALSE
45    1402       1954     Master        Married  66991        0  69     FALSE
46    7264       1978   2n Cycle         Single  52195        0  45     FALSE
47    1619       1956 Graduation        Married  90369        1  67      TRUE
48    1857       1952 Graduation         Single  47139        1  71     FALSE
49    4877       1973     Master        Married  38576        0  50     FALSE
50    3066       1975        PhD       Together  61905        0  48     FALSE
51   10286       1962 Graduation        Married  83715        0  61      TRUE
52    1992       1964 Graduation        Married  60597        1  59     FALSE
53   10623       1961     Master       Together  48330        0  62     FALSE
54    4867       1968        PhD         Single  38236        0  55     FALSE
55    4865       1974     Master       Divorced  53367        1  49     FALSE
56    6287       1986 Graduation       Together  34728        1  37     FALSE
57    4405       1956     Master        Married  63915        0  67     FALSE
58    5332       1960   2n Cycle        Married  82504        0  63      TRUE
59    1519       1972        PhD         Single  38578        1  51     FALSE
60    9080       1972        PhD         Single  38578        0  51     FALSE
61    1772       1975        PhD        Married  79174        1  48     FALSE
62    5341       1962   2n Cycle       Divorced  81975        0  61      TRUE
63    5510       1977     Master        Married  43263        0  46     FALSE
64    7022       1971 Graduation        Married  76445        0  52     FALSE
65    9999       1965 Graduation       Together  75276        0  58     FALSE
66   10352       1963 Graduation          Widow  34213        1  60     FALSE
67    7919       1976        PhD       Together  72335        1  47     FALSE
68    4114       1964     Master        Married  79143        0  59     FALSE
69    9888       1969 Graduation       Together  68695        0  54     FALSE
70    4399       1969 Graduation       Together  68695        0  54     FALSE
71    4452       1957 Graduation         Single  50388        1  66     FALSE
72    4785       1970        PhD       Together  77622        0  53     FALSE
73    8461       1962 Graduation       Divorced  46102        0  61     FALSE
74    3878       1980   2n Cycle         Single  31859        0  43     FALSE
75     158       1945        PhD       Together  71604        1  78     FALSE
76    9970       1977 Graduation       Together  55375        0  46     FALSE
77    4002       1960        PhD        Married  77037        0  63     FALSE
78    7279       1969        PhD       Together  69476        0  54     FALSE
79   10582       1979 Graduation        Married  72063        0  44     FALSE
80    4470       1962     Master        Married  58646        0  61     FALSE
81    6183       1962     Master        Married  58646        0  61     FALSE
82    6379       1949     Master          Widow  47570        1  74     FALSE
83    8601       1980 Graduation        Married  80011        0  43      TRUE
84    4827       1956        PhD         Single  54998        1  67     FALSE
85    6715       1948        PhD         Single  60200        0  75     FALSE
86   10676       1982 Graduation        Married  63211        1  41     FALSE
87    1041       1973        PhD         Single  48432        1  50     FALSE
88     492       1973        PhD           YOLO  48432        0  50     FALSE
89   11133       1973        PhD           YOLO  48432        1  50     FALSE
90    4491       1949     Master        Married  62845        0  74     FALSE
91     873       1949     Master        Married  62845        1  74     FALSE
92    1631       1965        PhD       Together  65220        1  58     FALSE
93    8278       1990        PhD        Married  74214        0  33     FALSE
94    6815       1980   2n Cycle        Married  96547        1  43      TRUE
95     254       1955 Graduation       Together  53863        0  68     FALSE
96    1349       1970 Graduation        Married  50447        0  53     FALSE
97    2534       1953 Graduation        Married  37716        0  70     FALSE
98    2130       1982 Graduation       Together  45203        1  41     FALSE
99    2296       1975     Master        Married  37368        0  48     FALSE
100   3799       1955 Graduation        Married  67225        0  68     FALSE
101  11084       1976     Master       Together  65104        1  47     FALSE
102   5172       1976     Master       Together  65104        0  47     FALSE
103   9504       1949     Master        Married  81698        1  74      TRUE
104    850       1968 Graduation         Single  70566        0  55     FALSE
105   4477       1958 Graduation       Together  69096        0  65     FALSE
106   1945       1962 Graduation        Married  71434        0  61     FALSE
107   7685       1978 Graduation        Married  33039        0  45     FALSE
108   6310       1978 Graduation        Married  33039        0  45     FALSE
109  10832       1958 Graduation       Together  46610        0  65     FALSE
110   3025       1958 Graduation         Single  49967        0  65     FALSE
111   2404       1976 Graduation        Married  53359        0  47     FALSE
112   8581       1971     Master        Married  49505        0  52     FALSE
113   8755       1946     Master        Married  68657        0  77     FALSE
114  10177       1954 Graduation       Divorced  72071        0  69     FALSE
115   2429       1954 Graduation       Divorced  72071        0  69     FALSE
116   8920       1967     Master         Single  59235        0  56     FALSE
117   7233       1972 Graduation        Married  69209        0  51     FALSE
118   6678       1989 Graduation       Together  31928        0  34     FALSE
119    830       1987        PhD         Single  74004        1  36     FALSE
120   6365       1987   2n Cycle        Married  30390        0  36     FALSE
121   1031       1989   2n Cycle        Married  85710        0  34      TRUE
122  10089       1974 Graduation       Divorced 102692        1  49      TRUE
123   9256       1971 Graduation         Single  58350        0  52     FALSE
124  10356       1957        PhD       Divorced  41437        0  66     FALSE
125   9323       1949     Master       Together  49912        1  74     FALSE
126   1146       1949     Master       Together  49912        1  74     FALSE
127   6343       1959 Graduation        Married  79823        0  64     FALSE
128   8545       1954 Graduation       Divorced  85683        1  69      TRUE
129   8275       1965        PhD       Divorced  47025        0  58     FALSE
130  10673       1976        PhD        Married  68397        0  47     FALSE
131   8799       1984        PhD        Married  38175        0  39     FALSE
132     67       1972     Master         Single  46423        0  51     FALSE
133   9923       1972     Master         Single  46423        0  51     FALSE
134   2814       1976     Master       Together  30560        0  47     FALSE
135   2711       1976     Master       Together  30560        0  47     FALSE
136   4320       1979 Graduation         Single  60152        0  44     FALSE
137  10814       1947 Graduation       Together  70321        1  76     FALSE
138    944       1962 Graduation        Married  56181        0  61     FALSE
139   6184       1969        PhD        Married  68462        0  54     FALSE
140   3498       1976        PhD        Married  55424        1  47     FALSE
141   2870       1973 Graduation        Married  49094        0  50     FALSE
142   7342       1961   2n Cycle          Widow  59184        0  62     FALSE
143   1911       1987 Graduation       Together  67430        0  36     FALSE
144  10862       1960     Master        Married  30522        0  63     FALSE
145   2546       1977   2n Cycle         Single  31878        0  46     FALSE
146   3005       1992 Graduation         Single  83528        1  31      TRUE
147   8318       1979 Graduation       Together  90300        0  44      TRUE
148   2930       1978     Master         Single  68092        0  45     FALSE
149   8216       1972     Master        Married  53761        0  51     FALSE
150   1212       1973 Graduation        Married  52845        0  50     FALSE
151  10905       1955 Graduation       Together  42586        1  68     FALSE
152   8910       1955 Graduation       Together  42586        1  68     FALSE
153   7872       1975        PhD        Married  86836        1  48      TRUE
154   4290       1972 Graduation        Married  30467        0  51     FALSE
155   7408       1952        PhD        Married  54549        0  71     FALSE
156   8235       1956     Master       Together  69245        0  67     FALSE
157  10949       1963        PhD       Divorced  72968        1  60     FALSE
158   7284       1953 Graduation        Married  48686        0  70     FALSE
159   9529       1990 Graduation        Married  73687        1  33     FALSE
160   9930       1944        PhD         Single  82716        0  79      TRUE
161  10270       1981   2n Cycle        Married  35523        0  42     FALSE
162    760       1975        PhD       Divorced  60554        0  48     FALSE
163   5519       1956 Graduation       Together  64090        1  67     FALSE
164    232       1965 Graduation         Single  61559        0  58     FALSE
165   3009       1962        PhD          Widow  71670        1  61     FALSE
166   6518       1951        PhD          Widow  67680        0  72     FALSE
167  10669       1981 Graduation        Married  54386        0  42     FALSE
168   5682       1953        PhD         Single  64108        0  70     FALSE
169   1570       1951        PhD       Together  69702        0  72     FALSE
170   1497       1952 Graduation         Single  47958        0  71     FALSE
171   9723       1960 Graduation        Married  67716        0  63     FALSE
172   7261       1971 Graduation       Together  34600        1  52     FALSE
173   2452       1971 Graduation       Together  34600        1  52     FALSE
174   5621       1969 Graduation        Married  48752        1  54     FALSE
175   7373       1952        PhD       Divorced  46610        1  71     FALSE
176   5331       1977 Graduation        Married  74985        0  46     FALSE
177    263       1945        PhD         Single  45576        1  78     FALSE
178   4619       1945        PhD         Single 113734        0  78      TRUE
179    940       1987 Graduation         Single  57100        0  36     FALSE
180   6019       1971        PhD        Married  37126        1  52     FALSE
181   1463       1958 Graduation         Single  45160        0  65     FALSE
182   6424       1977 Graduation       Together  33178        0  46     FALSE
183   8233       1950     Master          Widow  64866        0  73     FALSE
184   1515       1975     Master       Together  34176        0  48     FALSE
185  10855       1968     Master         Single  50014        0  55     FALSE
186  10909       1948 Graduation        Married  92344        0  75      TRUE
187   3376       1970     Master       Divorced  55282        0  53     FALSE
188  10232       1963        PhD       Divorced  48799        0  60     FALSE
189   5547       1982        PhD        Married  84169        1  41      TRUE
190   8362       1982        PhD        Married  84169        1  41      TRUE
191   3524       1971     Master         Single  39763        1  52     FALSE
192  10095       1975        PhD       Divorced  74165        0  48     FALSE
193   8897       1965 Graduation         Single  42720        1  58     FALSE
194    466       1944 Graduation        Married  65275        0  79     FALSE
195  11025       1961 Graduation        Married  36443        0  62     FALSE
196   2387       1952     Master       Together  43776        1  71     FALSE
197   1618       1965 Graduation       Together  56046        1  58     FALSE
198     25       1958 Graduation        Married  65148        0  65     FALSE
199   3277       1955 Graduation       Divorced  49431        0  68     FALSE
200   8566       1961        PhD       Together  32583        0  62     FALSE
201   8159       1968 Graduation        Married  51287        0  55     FALSE
202   7628       1973   2n Cycle        Married  43050        0  50     FALSE
203   9597       1969 Graduation        Married  73448        0  54     FALSE
204  10150       1961 Graduation         Single  86429        1  62      TRUE
205   3885       1983        PhD        Married  33569        1  40     FALSE
206   8026       1952 Graduation        Married  62998        0  71     FALSE
207   5429       1948        PhD        Married  45579        0  75     FALSE
208    977       1957 Graduation       Together  47320        0  66     FALSE
209   2793       1976        PhD       Divorced  70179        0  47     FALSE
210   1071       1976        PhD       Divorced  70179        0  47     FALSE
211   2632       1954 Graduation        Married  50501        1  69     FALSE
212   6404       1969 Graduation       Together  58917        0  54     FALSE
213  10240       1949 Graduation       Together  69372        1  74     FALSE
214   2521       1971     Master        Married  35178        1  52     FALSE
215   4301       1971     Master        Married  35178        1  52     FALSE
216   7381       1968 Graduation       Divorced  75693        1  55     FALSE
217   2407       1982 Graduation        Married  69109        1  41     FALSE
218   9064       1982 Graduation        Married  69109        1  41     FALSE
219   5067       1994 Graduation       Together  80134        0  29      TRUE
220  10281       1970 Graduation       Divorced  64713        1  53     FALSE
221  11191       1986 Graduation       Divorced  41411        0  37     FALSE
222   2552       1955        PhD         Single  55521        1  68     FALSE
223   6720       1968     Master       Together  43795        1  55     FALSE
224   1183       1949     Master        Married  36408        0  74     FALSE
225   4186       1950 Graduation       Together  34026        0  73     FALSE
226   1419       1950 Graduation       Together  34026        0  73     FALSE
227    967       1976 Graduation        Married  46049        1  47     FALSE
228   1048       1972     Master        Married  35641        1  51     FALSE
229   9262       1984   2n Cycle       Together  32414        0  39     FALSE
230   3427       1955        PhD        Married  59821        0  68     FALSE
231   5892       1980 Graduation        Married  34968        0  43     FALSE
232   8911       1967        PhD        Married  56320        0  56     FALSE
233   6606       1969     Master        Married  70091        0  54     FALSE
234   2677       1956 Graduation       Together  46097        0  67     FALSE
235    252       1963        PhD       Divorced  41003        0  60     FALSE
236   9860       1959 Graduation       Together  44911        0  64     FALSE
237   1388       1975 Graduation         Single  33249        0  48     FALSE
238    979       1975 Graduation         Single  33249        0  48     FALSE
239   7494       1950        PhD       Divorced  42873        0  73     FALSE
240  10490       1969        PhD        Married  51039        0  54     FALSE
241   3403       1958        PhD       Together  78952        0  65     FALSE
242   4828       1954 Graduation       Divorced  79865        0  69     FALSE
243     92       1988 Graduation          Alone  34176        0  35     FALSE
244   3312       1988 Graduation         Single  34176        0  35     FALSE
245  11176       1970        PhD       Together  65968        0  53     FALSE
246   1446       1956     Master         Single  86424        0  67      TRUE
247   9699       1966 Graduation       Divorced  67272        0  57     FALSE
248   9790       1957 Graduation         Single  78499        1  66     FALSE
249   2324       1972 Graduation       Together  77044        0  51     FALSE
250   5080       1993 Graduation         Single  70515        1  30     FALSE
251   7849       1970        PhD        Married  80336        0  53      TRUE
252   7793       1976 Graduation       Together  62061        0  47     FALSE
253   6853       1982     Master         Single  75777        1  41     FALSE
254   7366       1982     Master         Single  75777        1  41     FALSE
255   9780       1971     Master       Together  71499        0  52     FALSE
256   7573       1978        PhD         Single  31626        1  45     FALSE
257   1379       1992     Master       Together  42670        0  31     FALSE
258   8923       1973 Graduation         Single  83917        1  50      TRUE
259   3547       1969     Master       Together  41021        1  54     FALSE
260   8707       1956 Graduation        Married  79456        1  67     FALSE
261   1891       1980     Master       Divorced  78789        1  43     FALSE
262   6271       1952        PhD        Married  50870        0  71     FALSE
263   9635       1983     Master        Married  35876        0  40     FALSE
264   6205       1967     Master         Single  32557        1  56     FALSE
265  10681       1970   2n Cycle        Married  62466        0  53     FALSE
266   5156       1970   2n Cycle        Married  62466        0  53     FALSE
267   3050       1966 Graduation        Married  54198        0  57     FALSE
268   8164       1978        PhD        Married  82170        0  45      TRUE
269   5626       1964        PhD         Single  61798        0  59     FALSE
270   6406       1988     Master        Married  78285        0  35     FALSE
271   7002       1955 Graduation         Single  62535        0  68     FALSE
272   6116       1968   2n Cycle        Married  48985        0  55     FALSE
273    291       1970 Graduation        Married  72940        0  53     FALSE
274   8779       1985   2n Cycle        Married  36145        1  38     FALSE
275   4931       1977 Graduation       Together 157146        0  46      TRUE
276   1650       1960     Master        Married  81843        0  63      TRUE
277   9701       1988 Graduation       Together  41883        0  35     FALSE
278   6431       1964        PhD        Married  45759        0  59     FALSE
279  10789       1964        PhD        Married  45759        0  59     FALSE
280   5302       1986 Graduation       Together  78394        1  37     FALSE
281   4459       1989 Graduation         Single  30279        0  34     FALSE
282  10642       1989 Graduation         Single  30279        0  34     FALSE
283   9213       1970 Graduation          Widow  31880        0  53     FALSE
284   3678       1973 Graduation          Widow  60208        1  50     FALSE
285   3698       1983 Graduation       Together  78687        1  40     FALSE
286   5929       1973        PhD        Married  37401        0  50     FALSE
287  10795       1973        PhD        Married  37401        0  50     FALSE
288   4390       1954 Graduation       Together  75315        0  69     FALSE
289   9362       1965 Graduation         Single  69263        0  58     FALSE
290   1577       1946 Graduation        Married  78569        1  77     FALSE
291   4609       1966        PhD        Married  57705        0  57     FALSE
292   7143       1955   2n Cycle       Together  74805        0  68     FALSE
293   1729       1961        PhD       Together  66426        0  62     FALSE
294  10664       1949     Master          Widow  51529        0  74     FALSE
295  10507       1977   2n Cycle       Divorced  59601        0  46     FALSE
296   6982       1976 Graduation        Married  74068        0  47     FALSE
297   7042       1983 Graduation        Married  36790        1  40     FALSE
298   4099       1972 Graduation        Married  30675        0  51     FALSE
299   5031       1974 Graduation       Together  83145        1  49      TRUE
300   1970       1968     Master       Together  34053        0  55     FALSE
301   5726       1983     Master         Single  31788        0  40     FALSE
302   5231       1974   2n Cycle        Married  45894        0  49     FALSE
303   1307       1978 Graduation       Divorced  41986        0  45     FALSE
304  10609       1962        PhD        Married  42769        0  61     FALSE
305   5782       1982   2n Cycle       Together  58582        0  41     FALSE
306   7533       1964 Graduation        Married  49096        0  59     FALSE
307   9493       1980        PhD         Single  76412        1  43     FALSE
308   7393       1978 Graduation       Together  41580        0  45     FALSE
309   4713       1979        PhD        Married  31605        0  44     FALSE
310   3766       1959     Master          Widow  33051        1  64     FALSE
311   8933       1983   2n Cycle        Married  32146        0  40     FALSE
312   9289       1979 Graduation        Married  36781        1  44     FALSE
313   2613       1960     Master        Married  54197        0  63     FALSE
314  10133       1970 Graduation         Single  93790        1  53      TRUE
315  10796       1984     Master        Married  30477        0  39     FALSE
316   3388       1967 Graduation       Divorced  70844        0  56     FALSE
317   6507       1980 Graduation         Single  30828        0  43     FALSE
318   7446       1967     Master       Together  62513        0  56     FALSE
319  10477       1973        PhD       Together  39435        0  50     FALSE
320   6072       1970     Master         Single  75345        1  53     FALSE
321    247       1971 Graduation        Married  36715        1  52     FALSE
322   9463       1959 Graduation       Together  71706        0  64     FALSE
323   1459       1966        PhD        Married  69063        0  57     FALSE
324   9653       1975 Graduation        Married  35797        0  48     FALSE
325  10785       1969 Graduation        Married  44078        0  54     FALSE
326  10146       1972        PhD       Together  38887        0  51     FALSE
327   4741       1974   2n Cycle        Married  65463        0  49     FALSE
328   1880       1959        PhD       Together  53537        0  64     FALSE
329   6471       1971     Master         Single  36230        0  52     FALSE
330   5718       1950 Graduation        Married  80763        1  73      TRUE
331   3478       1971        PhD        Married  60585        1  52     FALSE
332   7848       1974 Graduation         Single  49166        0  49     FALSE
333   7999       1955        PhD       Together  75261        1  68     FALSE
334  11101       1991 Graduation       Together  89891        0  32      TRUE
335   9212       1962     Master        Married  72828        0  61     FALSE
336  10983       1952 Graduation       Together  75278        0  71     FALSE
337   3629       1978 Graduation         Single  38557        0  45     FALSE
338   4673       1963        PhD        Married  81300        1  60      TRUE
339    796       1965   2n Cycle       Divorced  60161        0  58     FALSE
340    618       1977        PhD        Married  69389        0  46     FALSE
341    380       1954 Graduation       Divorced  64497        1  69     FALSE
342   1092       1980 Graduation        Married  61014        0  43     FALSE
343   8962       1975     Master        Married  44319        0  48     FALSE
344   8207       1957   2n Cycle        Married  53233        0  66     FALSE
345   6521       1954 Graduation       Together  77972        0  69     FALSE
346    535       1987 Graduation       Divorced  81361        0  36      TRUE
347   4608       1987 Graduation       Divorced  81361        1  36      TRUE
348   1064       1971        PhD        Married  42403        0  52     FALSE
349   7000       1972   2n Cycle         Single  65704        0  51     FALSE
350   1581       1980 Graduation        Married  37406        1  43     FALSE
351   7384       1951     Master       Together  39767        0  72     FALSE
352  10552       1979   2n Cycle        Married  54210        0  44     FALSE
353   6409       1967 Graduation       Divorced  57136        1  56     FALSE
354   9507       1975 Graduation        Married  40794        0  48     FALSE
355   9560       1965 Graduation       Together  83003        1  58      TRUE
356  10991       1960     Master        Married  89058        0  63      TRUE
357  11056       1974 Graduation        Married  72099        0  49     FALSE
358   7414       1971 Graduation        Married  43824        0  52     FALSE
359   3076       1975 Graduation       Together  66653        0  48     FALSE
360   6355       1978 Graduation        Married  44359        0  45     FALSE
361   7959       1961 Graduation        Married  79410        0  62     FALSE
362   5512       1977     Master        Married  55842        0  46     FALSE
363  10102       1966 Graduation          Widow  79946        0  57     FALSE
364   9369       1979   2n Cycle         Single  88194        1  44      TRUE
365   3711       1944     Master        Married  80184        0  79      TRUE
366   6931       1967 Graduation       Divorced  76982        1  56     FALSE
367   9596       1980        PhD         Single  65295        0  43     FALSE
368   2727       1973 Graduation       Together  57100        0  50     FALSE
369   3967       1971        PhD        Married  78931        0  52     FALSE
370   2162       1976 Graduation        Married  56939        0  47     FALSE
371   9242       1990 Graduation         Single  64509        1  33     FALSE
372  10595       1990 Graduation        Married  30093        0  33     FALSE
373   4855       1974        PhD       Together  30351        1  49     FALSE
374   5049       1974        PhD       Together  30351        0  49     FALSE
375   4967       1960        PhD       Together  38201        0  63     FALSE
376   9215       1980        PhD        Married  43974        0  43     FALSE
377   3525       1970 Graduation       Together  38200        0  53     FALSE
378   3619       1960   2n Cycle       Divorced  87305        1  63      TRUE
379   5313       1971     Master        Married  38196        0  52     FALSE
380   7196       1950        PhD        Married  41145        0  73     FALSE
381   1381       1982        PhD         Single  38513        1  41     FALSE
382  10951       1968 Graduation        Married  45688        0  55     FALSE
383   4322       1958        PhD       Together  77863        0  65     FALSE
384   7444       1969     Master        Married  42169        0  54     FALSE
385   2942       1964 Graduation         Single  45906        0  59     FALSE
386   2874       1988   2n Cycle       Divorced  35388        0  35     FALSE
387   3667       1969 Graduation        Married  80952        1  54      TRUE
388   3697       1954 Graduation       Together  39898        0  69     FALSE
389   9955       1954 Graduation       Together  39898        0  69     FALSE
390   5320       1973     Master       Divorced  44051        1  50     FALSE
391   6422       1954 Graduation        Married  86718        0  69      TRUE
392   3690       1986     Master        Married  80141        1  37      TRUE
393   2408       1976 Graduation        Married  58597        0  47     FALSE
394   9260       1945        PhD        Married  70356        0  78     FALSE
395   9648       1967 Graduation         Single  46904        0  56     FALSE
396   4939       1946 Graduation       Together  37760        0  77     FALSE
397   8652       1946 Graduation       Together  37760        0  77     FALSE
398   4702       1964 Graduation         Single  61839        0  59     FALSE
399   2811       1963        PhD         Single  48918        0  60     FALSE
400   9150       1963        PhD         Single  48918        0  60     FALSE
401  10127       1965 Graduation        Married  58692        0  58     FALSE
402   5493       1976 Graduation        Married  39356        0  47     FALSE
403   2666       1972     Master        Married  76234        0  51     FALSE
404  10099       1984 Graduation        Married  55434        0  39     FALSE
405  10562       1946     Master        Married  66835        0  77     FALSE
406   7881       1946     Master        Married  66835        0  77     FALSE
407   6721       1951 Graduation        Married  71965        0  72     FALSE
408   5204       1971 Graduation       Together  74538        1  52     FALSE
409   5209       1954 Graduation       Divorced  50002        0  69     FALSE
410  10128       1958 Graduation       Together  53977        0  65     FALSE
411   9284       1958 Graduation       Together  53977        0  65     FALSE
412   8643       1971 Graduation       Together  69930        0  52     FALSE
413   1685       1967        PhD       Together  62981        0  56     FALSE
414   2877       1974     Master       Together  46014        0  49     FALSE
415   6233       1976 Graduation        Married  65991        0  47     FALSE
416    195       1972 Graduation         Single  38808        1  51     FALSE
417   1501       1982        PhD        Married 160803        0  41      TRUE
418  10846       1978     Master        Married  43783        0  45     FALSE
419   8341       1969        PhD        Married  30396        1  54     FALSE
420  10766       1964        PhD        Married  65526        0  59     FALSE
421   9971       1964        PhD        Married  65526        0  59     FALSE
422   1740       1944 Graduation        Married  55956        0  79     FALSE
423   8737       1978 Graduation       Divorced  55563        0  45     FALSE
424   6466       1965        PhD        Married  57236        0  58     FALSE
425  10430       1973 Graduation       Divorced  89694        0  50      TRUE
426   8773       1971     Master       Together  57420        0  52     FALSE
427   2371       1972 Graduation        Married  33622        0  51     FALSE
428   4088       1962        PhD       Together  31497        0  61     FALSE
429   4971       1962        PhD       Together  31497        0  61     FALSE
430  10560       1980        PhD         Single  36802        0  43     FALSE
431   6892       1968 Graduation       Divorced  61671        0  55     FALSE
432  11004       1893   2n Cycle         Single  60182        0 130     FALSE
433   9485       1986        PhD        Married  45921        0  37     FALSE
434   4248       1960     Master         Single  98777        0  63      TRUE
435   7451       1960     Master         Single  98777        0  63      TRUE
436   7861       1952     Master        Married  77027        0  71     FALSE
437   5232       1965 Graduation        Married  69139        0  58     FALSE
438   3011       1965 Graduation        Married  69139        0  58     FALSE
439   5758       1982 Graduation        Married  65169        1  41     FALSE
440   2173       1952 Graduation          Widow  40049        0  71     FALSE
441  10711       1945 Graduation        Married  69755        0  78     FALSE
442   2782       1961        PhD        Married  54456        0  62     FALSE
443   9432       1977 Graduation       Together 666666        0  46      TRUE
444   5872       1951 Graduation         Single  60689        0  72     FALSE
445   1802       1971 Graduation        Married  64795        0  52     FALSE
446   1162       1987        PhD         Single  42000        1  36     FALSE
447  10643       1987        PhD         Single  42000        1  36     FALSE
448  11112       1966 Graduation       Together  70713        0  57     FALSE
449   2114       1946        PhD         Single  82800        1  77      TRUE
450   4261       1946        PhD         Single  82800        1  77      TRUE
451   2457       1975      Basic        Married  30801        0  48     FALSE
452   2495       1974     Master        Married  83891        0  49      TRUE
453   6983       1950     Master       Divorced  38054        0  73     FALSE
454   7505       1957        PhD        Married  44155        0  66     FALSE
455   4286       1970        PhD         Single  57642        0  53     FALSE
456   7224       1977 Graduation        Married  31353        0  46     FALSE
457   6215       1977 Graduation        Married  31353        1  46     FALSE
458    968       1968     Master       Divorced  41335        0  55     FALSE
459   4096       1968     Master       Divorced  41335        0  55     FALSE
460   3153       1957        PhD         Single  40737        0  66     FALSE
461   5329       1949        PhD       Divorced  35946        0  74     FALSE
462   1175       1983     Master        Married  36262        1  40     FALSE
463   1377       1954     Master          Widow  44551        0  69     FALSE
464   4607       1959 Graduation       Together  71367        0  64     FALSE
465   4944       1959 Graduation       Together  71367        0  64     FALSE
466   9483       1959 Graduation       Together  57957        0  64     FALSE
467   1378       1972   2n Cycle       Together  50334        0  51     FALSE
468   5991       1949     Master        Married  48150        0  74     FALSE
469   2807       1969 Graduation        Married  56796        0  54     FALSE
470   1052       1969 Graduation        Married  56796        0  54     FALSE
471   9760       1963        PhD          Widow  52278        1  60     FALSE
472   7101       1963        PhD          Widow  52278        0  60     FALSE
473   5907       1952     Master        Married  33444        0  71     FALSE
474   8832       1976     Master       Together  37509        0  47     FALSE
475   2535       1978     Master        Married  88097        1  45      TRUE
476   1523       1973 Graduation        Married  59041        0  50     FALSE
477   1839       1974 Graduation         Single  43322        0  49     FALSE
478   9972       1955        PhD       Together  46015        0  68     FALSE
479   2945       1955        PhD       Together  46015        0  68     FALSE
480   9291       1959     Master        Married  34242        0  64     FALSE
481   2829       1955 Graduation        Married  65210        0  68     FALSE
482   8594       1958        PhD          Widow  50520        0  65     FALSE
483   1592       1970 Graduation        Married  90765        0  53      TRUE
484   4310       1944 Graduation        Married  80589        1  79      TRUE
485   6950       1958     Master        Married  49572        0  65     FALSE
486   8492       1978 Graduation       Together  75437        0  45     FALSE
487   5684       1971     Master       Divorced  44635        0  52     FALSE
488   5909       1964 Graduation        Married  58512        0  59     FALSE
489   9855       1952        PhD         Single  62000        0  71     FALSE
490    975       1956 Graduation         Single  54252        0  67     FALSE
491   8754       1974        PhD       Together  45068        0  49     FALSE
492   1456       1979 Graduation         Single  60474        0  44     FALSE
493   2849       1979 Graduation         Single  60474        0  44     FALSE
494   9984       1981   2n Cycle        Married  56337        1  42     FALSE
495   5628       1982 Graduation       Together  61416        0  41     FALSE
496   7627       1975     Master        Married  92163        1  48      TRUE
497   1351       1956     Master       Together  58656        0  67     FALSE
498  10196       1978 Graduation        Married  71427        0  45     FALSE
499   1542       1975 Graduation         Single  56243        0  48     FALSE
500   4220       1970        PhD        Married  59892        0  53     FALSE
501   4141       1965 Graduation       Together  71613        0  58     FALSE
502   1506       1975 Graduation         Single  42160        1  48     FALSE
503   1361       1974     Master        Married  82584        1  49      TRUE
504   9422       1989 Graduation        Married  38360        0  34     FALSE
505   1081       1957        PhD        Married  75283        0  66     FALSE
506   7458       1956     Master       Together  34941        0  67     FALSE
507   1012       1952 Graduation         Single  61823        0  71     FALSE
508   5453       1956     Master        Married  90226        0  67      TRUE
509   6818       1974 Graduation        Married  44989        0  49     FALSE
510   7807       1974 Graduation        Married  44989        0  49     FALSE
511   7532       1980 Graduation        Married  43586        0  43     FALSE
512   8346       1974 Graduation         Single  32233        1  49     FALSE
513   5564       1969 Graduation       Together  62882        0  54     FALSE
514   3267       1963     Master       Together  57288        0  60     FALSE
515   3091       1981   2n Cycle       Together  75774        0  42     FALSE
516    762       1981   2n Cycle       Together  75774        0  42     FALSE
517   8029       1988     Master         Single  90247        1  35      TRUE
518   4376       1960   2n Cycle         Single  32218        1  63     FALSE
519  10981       1988 Graduation        Married  84219        0  35      TRUE
520    486       1988 Graduation        Married  84219        0  35      TRUE
521   1158       1966 Graduation       Divorced  48877        0  57     FALSE
522   9119       1950 Graduation       Together  60905        0  73     FALSE
523   6694       1964 Graduation        Married  75236        0  59     FALSE
524  10573       1953 Graduation       Divorced  62551        0  70     FALSE
525  10140       1983        PhD       Together  70123        0  40     FALSE
526   2286       1962 Graduation         Single  50785        0  61     FALSE
527   1029       1970        PhD       Together  64413        0  53     FALSE
528   4207       1981        PhD        Married  87171        0  42      TRUE
529  10277       1961 Graduation         Single  30081        0  62     FALSE
530   6281       1966 Graduation       Divorced  55686        0  57     FALSE
531   2574       1977        PhD        Married  61996        1  46     FALSE
532    709       1952 Graduation       Divorced  51537        0  71     FALSE
533   5955       1962 Graduation       Together  72025        0  61     FALSE
534   8486       1971     Master       Together  30538        0  52     FALSE
535  10343       1991   2n Cycle         Single  61618        0  32     FALSE
536   6652       1965 Graduation        Married  77343        0  58     FALSE
537   8746       1989 Graduation        Married  75433        0  34     FALSE
538   4686       1962        PhD          Widow  82571        0  61      TRUE
539   3551       1954     Master       Together  60033        0  69     FALSE
540   4338       1983 Graduation         Single  39062        0  40     FALSE
541   4444       1972 Graduation        Married  30023        0  51     FALSE
542    498       1970 Graduation         Single  30015        0  53     FALSE
543   8230       1980 Graduation        Married  33228        0  43     FALSE
544   7352       1957 Graduation        Married  55267        0  66     FALSE
545  10928       1958 Graduation       Together  66886        0  65     FALSE
546  10736       1971 Graduation         Single  72258        0  52     FALSE
547  10163       1984        PhD         Single  82733        1  39      TRUE
548   6168       1963 Graduation       Divorced  45146        0  60     FALSE
549   4656       1990   2n Cycle         Single  51250        0  33     FALSE
550    626       1951 Graduation        Married  32871        0  72     FALSE
551   3870       1978   2n Cycle       Together  63855        0  45     FALSE
552   6299       1968        PhD       Divorced  42564        1  55     FALSE
553   7798       1972   2n Cycle       Together  46344        0  51     FALSE
554   9973       1963 Graduation        Married  50437        0  60     FALSE
555   4299       1960 Graduation       Together  70971        1  63     FALSE
556  10971       1977 Graduation         Single  37774        1  46     FALSE
557   6679       1966 Graduation         Single  33279        0  57     FALSE
558   5961       1978 Graduation        Married  42693        0  45     FALSE
559   6255       1952     Master       Together  70545        0  71     FALSE
560   8614       1957 Graduation          Widow  65486        0  66     FALSE
561   7828       1981     Master       Together  77882        0  42     FALSE
562   1277       1960 Graduation       Together  78468        0  63     FALSE
563   3595       1963 Graduation       Together  77226        0  60     FALSE
564   5735       1991     Master         Single  90638        0  32      TRUE
565   5350       1991     Master         Single  90638        1  32      TRUE
566   4137       1948 Graduation       Together  70666        0  75     FALSE
567   6357       1959   2n Cycle       Divorced  59052        0  64     FALSE
568   3578       1949 Graduation       Divorced  49160        0  74     FALSE
569  10524       1963     Master       Divorced  49476        0  60     FALSE
570   1518       1965     Master        Married  62694        0  58     FALSE
571   2036       1973        PhD       Together  57906        0  50     FALSE
572   9495       1982 Graduation       Together  71853        0  41     FALSE
573   2631       1982 Graduation       Together  71853        0  41     FALSE
574   6312       1959 Graduation        Married  65031        0  64     FALSE
575    615       1960 Graduation       Together  30507        0  63     FALSE
576   4406       1970 Graduation       Together  67419        0  53     FALSE
577  10061       1950 Graduation        Married  59462        0  73     FALSE
578  10619       1994 Graduation         Single  95529        1  29      TRUE
579   4945       1953 Graduation          Widow  53653        0  70     FALSE
580   7922       1951        PhD         Single  64950        0  72     FALSE
581  10699       1985 Graduation        Married  44322        0  38     FALSE
582   7516       1983 Graduation        Married  30096        0  40     FALSE
583   3129       1983 Graduation        Married  30096        0  40     FALSE
584   5121       1977 Graduation         Single  56628        0  46     FALSE
585   2186       1977   2n Cycle       Together  82326        1  46      TRUE
586  10548       1995 Graduation         Single  71163        0  28     FALSE
587   6384       1978 Graduation       Divorced  71022        0  45     FALSE
588   2625       1954   2n Cycle         Single  42607        0  69     FALSE
589   1676       1975 Graduation        Married  43057        0  48     FALSE
590   5534       1975     Master        Married  47808        0  48     FALSE
591    271       1969 Graduation          Widow  40590        0  54     FALSE
592   7699       1969 Graduation          Widow  40590        0  54     FALSE
593   7832       1959     Master        Married  77520        1  64     FALSE
594    938       1981 Graduation        Married  40211        0  42     FALSE
595   7873       1973        PhD       Together  63516        0  50     FALSE
596   9967       1974 Graduation       Divorced  53034        0  49     FALSE
597   8314       1982 Graduation        Married  79908        0  41     FALSE
598   3762       1986        PhD         Single  69867        1  37     FALSE
599  10383       1966 Graduation       Divorced  70287        1  57     FALSE
600   6798       1966 Graduation         Single  37070        1  57     FALSE
601   4168       1966 Graduation         Single  37070        1  57     FALSE
602   6690       1966     Master        Married  38179        0  57     FALSE
603  10602       1983 Graduation        Married  39922        0  40     FALSE
604   3220       1983 Graduation        Married  39922        0  40     FALSE
605   5424       1983 Graduation        Married  39922        0  40     FALSE
606   7488       1963     Master         Single  64191        0  60     FALSE
607   5289       1975   2n Cycle         Single  41658        0  48     FALSE
608    347       1976 Graduation       Divorced  40780        0  47     FALSE
609   5236       1979 Graduation       Together  77568        0  44     FALSE
610   9478       1985 Graduation         Single  66503        0  38     FALSE
611    477       1986 Graduation        Married  83512        1  37      TRUE
612   7411       1964        PhD        Married  31686        0  59     FALSE
613   3107       1976 Graduation       Together  71322        0  47     FALSE
614   3790       1956 Graduation       Together  34633        0  67     FALSE
615    749       1981 Graduation       Together  42162        1  42     FALSE
616   1503       1976        PhD       Together 162397        0  47      TRUE
617   8650       1978 Graduation          Widow  54162        0  45     FALSE
618    607       1955   2n Cycle       Divorced  41769        0  68     FALSE
619   1008       1981        PhD       Together  44953        0  42     FALSE
620   9396       1978        PhD        Married  37717        0  45     FALSE
621    933       1978        PhD        Married  37717        0  45     FALSE
622   5710       1970 Graduation       Together  40548        0  53     FALSE
623   2882       1975   2n Cycle       Divorced  67893        0  48     FALSE
624   2379       1953 Graduation         Single  69267        1  70     FALSE
625   3262       1958 Graduation         Single  68281        1  65     FALSE
626   5832       1960   2n Cycle       Together  92556        0  63      TRUE
627   5025       1979 Graduation         Single  48526        0  44     FALSE
628    569       1991 Graduation         Single  90273        1  32      TRUE
629   9449       1958        PhD         Single  79761        0  65     FALSE
630   8104       1951        PhD        Married  53312        0  72     FALSE
631     75       1982   2n Cycle       Together  41039        0  41     FALSE
632   6421       1961 Graduation       Together  88347        0  62      TRUE
633   3037       1983        PhD        Married  50150        0  40     FALSE
634   4698       1983        PhD        Married  50150        0  40     FALSE
635   6177       1985        PhD        Married  33454        0  38     FALSE
636   3517       1952 Graduation         Single  40887        1  71     FALSE
637   3491       1975 Graduation       Together  55914        0  48     FALSE
638   7610       1983 Graduation       Together  37292        0  40     FALSE
639   4377       1971 Graduation        Married  52914        0  52     FALSE
640   5544       1970 Graduation         Single  67384        0  53     FALSE
641   6497       1960 Graduation        Married  51651        0  63     FALSE
642   4543       1980 Graduation        Married  82497        0  43      TRUE
643   5117       1963   2n Cycle        Married  32632        0  60     FALSE
644   1448       1963     Master        Married  33562        0  60     FALSE
645   6887       1967 Graduation         Single  79146        0  56     FALSE
646   7500       1967 Graduation         Single  79146        0  56     FALSE
647   2724       1981     Master         Single  36143        0  42     FALSE
648   1100       1960     Master       Together  41275        0  63     FALSE
649   7725       1965   2n Cycle        Married  76800        0  58     FALSE
650   2612       1987 Graduation        Married  75794        0  36     FALSE
651    113       1951 Graduation        Married  30833        0  72     FALSE
652   4216       1981 Graduation         Single  91065        1  42      TRUE
653    199       1962     Master         Single  45183        0  61     FALSE
654    359       1950 Graduation       Together  48070        0  73     FALSE
655   8842       1971 Graduation          Widow  30372        0  52     FALSE
656   2154       1971 Graduation          Widow  30372        0  52     FALSE
657   6050       1975   2n Cycle        Married  57036        0  48     FALSE
658   9204       1970 Graduation          Widow  66731        0  53     FALSE
659   4472       1970        PhD       Divorced  35682        0  53     FALSE
660   3924       1965        PhD       Divorced  57912        0  58     FALSE
661   5654       1972 Graduation        Married  36026        0  51     FALSE
662   9216       1971 Graduation        Married  35788        0  52     FALSE
663   8086       1959 Graduation        Married  42243        0  64     FALSE
664   9097       1956 Graduation       Divorced  46086        0  67     FALSE
665   7631       1978     Master       Together  61346        0  45     FALSE
666   7275       1971     Master         Single  33316        0  52     FALSE
667   8334       1971     Master         Single  33316        0  52     FALSE
668   2281       1970 Graduation         Single  33697        0  53     FALSE
669   2797       1977 Graduation        Married  72117        0  46     FALSE
670   3934       1966 Graduation        Married  61286        0  57     FALSE
671   2493       1966 Graduation        Married  61286        0  57     FALSE
672   3759       1958 Graduation       Together  65196        0  65     FALSE
673    965       1971 Graduation       Divorced  55635        0  52     FALSE
674   7378       1981     Master       Together  42021        0  42     FALSE
675   1859       1972     Master        Married  75251        1  51     FALSE
676   6263       1968 Graduation       Together  35322        0  55     FALSE
677   2072       1969        PhD       Together  53374        1  54     FALSE
678   8908       1959 Graduation        Married  87195        1  64      TRUE
679    738       1981   2n Cycle         Single  42395        0  42     FALSE
680  10129       1966 Graduation       Together  82427        0  57      TRUE
681    807       1969     Master       Together  44602        0  54     FALSE
682   3334       1951 Graduation        Married  94642        0  72      TRUE
683   4426       1975 Graduation         Single  55801        0  48     FALSE
684  10489       1973 Graduation        Married  92955        1  50      TRUE
685   2570       1968 Graduation       Together  56534        1  55     FALSE
686   3834       1962 Graduation         Single  69627        0  61     FALSE
687    590       1970     Master       Divorced  78579        1  53     FALSE
688   4791       1980 Graduation       Together  44964        0  43     FALSE
689   5304       1974        PhD         Single  30899        0  49     FALSE
690   2426       1964        PhD       Divorced  78825        1  59     FALSE
691   8041       1971        PhD          Widow  47111        0  52     FALSE
692   3584       1955        PhD         Single  49667        1  68     FALSE
693   7718       1947     Master       Together  66000        0  76     FALSE
694   8605       1964        PhD       Together  46910        0  59     FALSE
695   9206       1968 Graduation       Together  77382        0  55     FALSE
696   6885       1977 Graduation       Divorced  32952        0  46     FALSE
697    907       1975 Graduation        Married  46149        0  48     FALSE
698   1150       1899        PhD       Together  83532        0 124      TRUE
699   3867       1947        PhD       Together  73059        0  76     FALSE
700   3859       1947        PhD       Together  73059        0  76     FALSE
701   3265       1959 Graduation        Married  35701        0  64     FALSE
702   4418       1983     Master         Single  89616        1  40      TRUE
703   4611       1970 Graduation       Together 105471        1  53      TRUE
704   4530       1948     Master          Widow  78427        1  75     FALSE
705   9949       1976 Graduation        Married  59809        0  47     FALSE
706    942       1982 Graduation         Single  39660        1  41     FALSE
707   6181       1950   2n Cycle       Together  52203        0  73     FALSE
708   7660       1973        PhD          Alone  35860        1  50     FALSE
709   2055       1973        PhD       Divorced  35860        0  50     FALSE
710   5107       1973        PhD       Divorced  35860        0  50     FALSE
711   1626       1973        PhD       Divorced  35860        1  50     FALSE
712   6428       1950        PhD          Widow  76842        0  73     FALSE
713   4339       1970        PhD        Married  67353        0  53     FALSE
714   8527       1965     Master       Together  65735        0  58     FALSE
715   1968       1971 Graduation          Widow  45684        0  52     FALSE
716  11075       1978 Graduation        Married  51267        0  45     FALSE
717   6658       1972 Graduation       Together  59868        0  51     FALSE
718   4552       1991 Graduation        Married  51373        0  32     FALSE
719  10377       1958     Master       Together  46692        0  65     FALSE
720   5336       1971     Master       Together 157733        0  52      TRUE
721  10350       1950        PhD        Married  54432        0  73     FALSE
722  11071       1984 Graduation         Single  79607        1  39     FALSE
723  11100       1972 Graduation       Divorced  51813        0  51     FALSE
724   1734       1968        PhD       Together  40706        0  55     FALSE
725   2131       1959        PhD       Divorced  62859        0  64     FALSE
726   6439       1958 Graduation        Married  61074        0  65     FALSE
727  10591       1969 Graduation          Widow  43638        0  54     FALSE
728   9797       1956 Graduation        Married  58116        0  67     FALSE
729   9336       1969        PhD          Widow  62187        0  54     FALSE
730   2174       1954 Graduation         Single  46344        0  69     FALSE
731   3197       1980 Graduation        Married  77353        0  43     FALSE
732   9185       1966        PhD         Single  69759        1  57     FALSE
733  10858       1975 Graduation       Together  76532        0  48     FALSE
734   8925       1965     Master        Married  70053        0  58     FALSE
735   2499       1958   2n Cycle         Single  75342        0  65     FALSE
736    326       1973 Graduation        Married  51148        0  50     FALSE
737  10967       1963 Graduation       Divorced  33378        0  60     FALSE
738   5370       1973        PhD        Married  32644        0  50     FALSE
739   2098       1969        PhD        Married  33581        0  54     FALSE
740   5036       1984        PhD         Single  42710        0  39     FALSE
741   4856       1957   2n Cycle        Married  82347        0  66      TRUE
742   8722       1957   2n Cycle        Married  82347        1  66      TRUE
743  10151       1960 Graduation       Divorced  62204        0  63     FALSE
744  10473       1956        PhD          Widow  78028        1  67     FALSE
745   7079       1962 Graduation       Divorced  63887        0  61     FALSE
746   6875       1965        PhD       Together  32727        0  58     FALSE
747   2471       1965 Graduation        Married  61482        0  58     FALSE
748   6387       1976        PhD       Together  52190        0  47     FALSE
749   5866       1974 Graduation       Together  48186        0  49     FALSE
750   7901       1971     Master        Married  34109        0  52     FALSE
751  10242       1966        PhD       Together  47472        0  57     FALSE
752   4201       1962 Graduation         Single  57967        0  61     FALSE
753   5092       1949        PhD          Widow  51569        1  74     FALSE
754   6566       1954        PhD        Married  72550        0  69     FALSE
755   6613       1970     Master        Married  44511        0  53     FALSE
756   9094       1955   2n Cycle        Married  62972        1  68     FALSE
757   9847       1955   2n Cycle        Married  62972        0  68     FALSE
758  10767       1989        PhD       Together  77845        0  34     FALSE
759   7943       1975        PhD        Married  36663        0  48     FALSE
760   1055       1976     Master        Married  53204        0  47     FALSE
761   8402       1953     Master        Married  67087        0  70     FALSE
762   6246       1953 Graduation         Single  73892        1  70     FALSE
763   4654       1992 Graduation       Together  75114        0  31     FALSE
764   6103       1948 Graduation        Married  42192        0  75     FALSE
765   8147       1960 Graduation        Married  31454        0  63     FALSE
766  10219       1972 Graduation       Together  31590        0  51     FALSE
767   2176       1972 Graduation        Married  80134        1  51      TRUE
768   9121       1972 Graduation        Married  80134        1  51      TRUE
769    178       1956 Graduation        Married  62503        0  67     FALSE
770   2308       1954 Graduation        Married  46734        0  69     FALSE
771   7431       1991        PhD         Single  68126        1  32     FALSE
772   9405       1954        PhD        Married  52869        1  69     FALSE
773   7503       1976 Graduation         Single  75825        1  47     FALSE
774   8783       1950 Graduation        Married  57045        0  73     FALSE
775   1403       1975   2n Cycle       Together  34984        0  48     FALSE
776   3463       1975        PhD        Married  69283        0  48     FALSE
777   7010       1965   2n Cycle        Married  70924        0  58     FALSE
778   4767       1965   2n Cycle        Married  70924        0  58     FALSE
779   1927       1973   2n Cycle       Together  69401        0  50     FALSE
780    437       1976     Master       Divorced  75012        0  47     FALSE
781   4331       1978     Master       Together  85738        0  45      TRUE
782   4084       1975 Graduation       Together  60934        0  48     FALSE
783   9750       1961        PhD       Divorced  64325        0  62     FALSE
784  10581       1977 Graduation        Married  41124        0  46     FALSE
785   3710       1984        PhD         Single  39684        1  39     FALSE
786   5207       1963        PhD        Married  53378        1  60     FALSE
787   9360       1982 Graduation        Married  37040        0  41     FALSE
788   4679       1977     Master        Married  78710        0  46     FALSE
789   1340       1986 Graduation        Married  92910        0  37      TRUE
790  10839       1976 Graduation       Together  36283        0  47     FALSE
791   5303       1974        PhD       Together  79632        0  49     FALSE
792  10469       1981 Graduation       Together  88325        0  42      TRUE
793   3602       1958     Master        Married  51412        0  65     FALSE
794   4756       1952   2n Cycle       Divorced  63998        1  71     FALSE
795   8181       1978   2n Cycle         Single  38593        0  45     FALSE
796  10856       1980   2n Cycle         Single  45889        0  43     FALSE
797   3321       1967        PhD       Together  56575        0  56     FALSE
798    433       1958     Master          Alone  61331        0  65     FALSE
799   6320       1976     Master         Single  70893        0  47     FALSE
800   1867       1957 Graduation         Single  64849        1  66     FALSE
801   4324       1989 Graduation        Married  42387        0  34     FALSE
802   3661       1995   2n Cycle         Single  80617        0  28      TRUE
803    521       1985 Graduation       Together  54006        0  38     FALSE
804   7186       1966        PhD       Together  30843        0  57     FALSE
805   4394       1965        PhD        Married  81051        0  58      TRUE
806   1717       1988 Graduation         Single  39747        0  35     FALSE
807   1016       1959        PhD         Single  34554        0  64     FALSE
808   3783       1959        PhD        Married  52854        0  64     FALSE
809   5848       1970 Graduation       Together  81205        1  53      TRUE
810  10727       1970        PhD        Married  69084        0  53     FALSE
811   5299       1970        PhD        Married  69084        0  53     FALSE
812   6872       1974        PhD        Married  65352        0  49     FALSE
813  10381       1979 Graduation         Single  47691        0  44     FALSE
814   9145       1972 Graduation         Single  72504        0  51     FALSE
815   5267       1970 Graduation       Divorced  33986        0  53     FALSE
816   9738       1986     Master       Together  42386        0  37     FALSE
817  10212       1986     Master       Together  42386        0  37     FALSE
818  10010       1953        PhD       Divorced  36957        1  70     FALSE
819   2694       1967 Graduation        Married  42664        0  56     FALSE
820  10613       1958        PhD       Together  37334        0  65     FALSE
821   4646       1951   2n Cycle        Married  78497        0  72     FALSE
822   6935       1951   2n Cycle        Married  78497        0  72     FALSE
823   5596       1956   2n Cycle       Together  58821        0  67     FALSE
824   1044       1953 Graduation       Together  58398        0  70     FALSE
825   9274       1961     Master        Married  80950        0  62      TRUE
826   9076       1980        PhD        Married  30732        0  43     FALSE
827   4947       1966   2n Cycle         Single  89572        1  57      TRUE
828  10176       1968 Graduation         Single  57107        1  55     FALSE
829   3507       1970 Graduation         Single  76467        1  53     FALSE
830  10341       1948 Graduation       Together  51315        0  75     FALSE
831   2639       1966 Graduation         Single  43602        0  57     FALSE
832   6201       1978 Graduation         Single  38643        0  45     FALSE
833   7397       1951 Graduation         Single  49090        0  72     FALSE
834   2181       1970 Graduation        Married  70617        0  53     FALSE
835   1204       1970        PhD        Married  67536        0  53     FALSE
836   4690       1953 Graduation        Married  50725        0  70     FALSE
837  10821       1978 Graduation        Married  57113        0  45     FALSE
838   6543       1945     Master       Together  62847        0  78     FALSE
839   7119       1982 Graduation         Single  68627        0  41     FALSE
840   1245       1966 Graduation         Single  63810        0  57     FALSE
841   2561       1966 Graduation         Single  63810        0  57     FALSE
842   9624       1958        PhD       Together  65488        0  65     FALSE
843  10509       1955     Master         Single  36927        0  68     FALSE
844   7875       1949 Graduation        Married  72025        1  74     FALSE
845   2815       1975 Graduation        Married  33183        0  48     FALSE
846  10888       1961 Graduation         Single  45938        0  62     FALSE
847   6637       1988 Graduation         Single  66951        0  35     FALSE
848   5077       1979 Graduation       Together  77298        0  44     FALSE
849   6173       1979 Graduation       Together  77298        0  44     FALSE
850   3969       1974     Master       Together  43018        0  49     FALSE
851   4580       1969 Graduation        Married  75759        1  54     FALSE
852    663       1989        PhD         Single  33996        0  34     FALSE
853   8299       1989        PhD         Single  33996        0  34     FALSE
854   8945       1970 Graduation       Divorced  54137        0  53     FALSE
855  10870       1967 Graduation        Married  61223        0  56     FALSE
856   1184       1968        PhD       Divorced  69674        0  55     FALSE
857   6141       1972     Master         Single  49494        0  51     FALSE
858   8825       1962 Graduation       Together  51195        0  61     FALSE
859   2217       1975   2n Cycle        Married  37284        0  48     FALSE
860   4102       1975   2n Cycle        Married  37284        0  48     FALSE
861   4653       1978 Graduation       Together  42011        0  45     FALSE
862  10092       1954 Graduation       Divorced  70044        0  69     FALSE
863   5788       1972 Graduation       Together  46053        0  51     FALSE
864   6295       1977 Graduation        Married  54233        0  46     FALSE
865   7453       1954 Graduation         Single  36130        1  69     FALSE
866  10841       1975        PhD       Together  56559        0  48     FALSE
867    821       1992     Master         Single  92859        0  31      TRUE
868   3933       1980 Graduation       Together  44010        0  43     FALSE
869   1225       1963 Graduation        Married  80124        0  60      TRUE
870   7059       1963 Graduation        Married  80124        0  60      TRUE
871   5633       1980 Graduation        Married  50183        0  43     FALSE
872    843       1971 Graduation        Married  64722        0  52     FALSE
873   6211       1976        PhD       Together  37395        0  47     FALSE
874   6616       1975 Graduation       Together  59481        0  48     FALSE
875   6248       1947     Master         Single  91712        1  76      TRUE
876   7428       1975 Graduation       Together  80144        0  48      TRUE
877   3075       1972        PhD        Married  59973        0  51     FALSE
878   2937       1974        PhD         Single  68352        0  49     FALSE
879    203       1975     Master         Single  81169        0  48      TRUE
880   2021       1975 Graduation        Married  61456        0  48     FALSE
881   7011       1973 Graduation        Married  33471        0  50     FALSE
882   4184       1950        PhD       Together  52157        0  73     FALSE
883   7679       1985        PhD         Single  30298        0  38     FALSE
884   7485       1950        PhD          Widow  56551        0  73     FALSE
885   7530       1950        PhD          Widow  56551        0  73     FALSE
886   4369       1957     Master         Absurd  65487        0  66     FALSE
887  10652       1957     Master       Together  65487        0  66     FALSE
888    286       1952 Graduation         Single  44213        0  71     FALSE
889   5922       1974        PhD        Married  40344        0  49     FALSE
890   7250       1978 Graduation       Together  57867        0  45     FALSE
891   9214       1991 Graduation        Married  42691        0  32     FALSE
892    273       1970     Master        Married  36138        0  53     FALSE
893    851       1972     Master        Married  57136        0  51     FALSE
894   9729       1955 Graduation          Widow  58275        0  68     FALSE
895   9665       1957        PhD       Divorced  54237        0  66     FALSE
896   2620       1974        PhD        Married  34596        1  49     FALSE
897   8254       1974        PhD        Married  34596        0  49     FALSE
898   3852       1961     Master       Together  74881        0  62     FALSE
899   1000       1961     Master       Together  74881        0  62     FALSE
900   3099       1970 Graduation       Divorced  44267        0  53     FALSE
901   6318       1988 Graduation        Married  68487        0  35     FALSE
902   5396       1988 Graduation        Married  68487        0  35     FALSE
903   7966       1959 Graduation         Single  80982        0  64      TRUE
904    454       1980 Graduation       Together  69508        0  43     FALSE
905    309       1961        PhD       Together  63342        0  62     FALSE
906   3571       1961        PhD       Together  63342        1  62     FALSE
907   8395       1961 Graduation         Single  82014        1  62      TRUE
908   2591       1959 Graduation          Widow  76320        0  64     FALSE
909   1640       1954 Graduation       Divorced  64587        0  69     FALSE
910    810       1975 Graduation        Married  74190        0  48     FALSE
911   9423       1979     Master        Married  32765        0  44     FALSE
912   1215       1978 Graduation       Together  70440        0  45     FALSE
913   9283       1978 Graduation         Single  60199        0  45     FALSE
914   3120       1981 Graduation       Together  38547        0  42     FALSE
915   8143       1985        PhD         Single  37929        1  38     FALSE
916   7214       1957 Graduation        Married  62187        0  66     FALSE
917   5543       1966 Graduation       Together  57811        0  57     FALSE
918   9347       1956     Master       Together  50943        0  67     FALSE
919  10160       1956     Master       Together  50943        0  67     FALSE
920   1406       1975 Graduation         Single  53201        0  48     FALSE
921   7019       1963 Graduation       Together  54414        0  60     FALSE
922   8939       1959 Graduation       Divorced  61250        0  64     FALSE
923   1272       1965     Master         Single  55250        0  58     FALSE
924   3007       1966 Graduation       Together  37758        0  57     FALSE
925   5513       1966 Graduation       Together  37758        0  57     FALSE
926    679       1957        PhD        Married  37633        0  66     FALSE
927   8876       1963        PhD       Together  33629        0  60     FALSE
928  10827       1967        PhD        Married  36947        0  56     FALSE
929   7300       1952 Graduation       Divorced  69142        0  71     FALSE
930   4268       1959 Graduation        Married  53154        0  64     FALSE
931   4603       1960        PhD        Married  65695        0  63     FALSE
932   8659       1952        PhD       Together  69805        0  71     FALSE
933  10708       1978   2n Cycle         Single  36975        0  45     FALSE
934  10380       1972     Master        Married  37787        0  51     FALSE
935   7037       1974        PhD        Married  37087        0  49     FALSE
936  11096       1952   2n Cycle       Together  57247        0  71     FALSE
937   6374       1954        PhD        Married  36930        0  69     FALSE
938   5552       1963     Master       Divorced  48721        0  60     FALSE
939   2245       1969     Master        Married  43641        0  54     FALSE
940   6200       1951 Graduation        Married  75903        0  72     FALSE
941   9904       1956 Graduation        Married  71391        0  67     FALSE
942  10882       1976 Graduation        Married  53858        0  47     FALSE
943   5636       1963 Graduation         Single  30983        1  60     FALSE
944   8692       1952 Graduation       Together  43462        0  71     FALSE
945   8091       1956 Graduation        Married  63943        0  67     FALSE
946   8370       1976   2n Cycle       Together  75484        0  47     FALSE
947   4550       1966     Master       Together  33564        0  57     FALSE
948   3381       1953     Master        Married  54348        0  70     FALSE
949  10556       1959 Graduation        Married  54984        0  64     FALSE
950   9467       1984 Graduation         Single  34738        0  39     FALSE
951   2891       1963 Graduation       Divorced  68118        0  60     FALSE
952   5011       1963 Graduation       Divorced  68118        0  60     FALSE
953  11039       1975 Graduation        Married  51948        0  48     FALSE
954   5290       1964        PhD        Married  41551        0  59     FALSE
955   4128       1962        PhD       Together  56067        0  61     FALSE
956   8534       1952 Graduation        Married  67433        0  71     FALSE
957   8957       1952   2n Cycle         Single  64831        0  71     FALSE
958   9308       1954 Graduation        Married  62820        0  69     FALSE
959    544       1954 Graduation        Married  62820        0  69     FALSE
960   5989       1959   2n Cycle       Divorced  78353        0  64     FALSE
961    635       1966     Master        Married  57183        0  57     FALSE
962   1710       1978 Graduation         Single  30168        0  45     FALSE
963    523       1989 Graduation        Married  37155        0  34     FALSE
964   9736       1980 Graduation        Married  41850        0  43     FALSE
965   1544       1967     Master       Divorced  81380        0  56      TRUE
966   6575       1981 Graduation       Together  56386        0  42     FALSE
967   4769       1977     Master       Together  57954        0  46     FALSE
968   7540       1952 Graduation        Married  50300        0  71     FALSE
969   5247       1955        PhD        Married  38725        0  68     FALSE
970  10972       1949 Graduation          Widow  72298        0  74     FALSE
971   1399       1958 Graduation        Married  72905        0  65     FALSE
972   2698       1976 Graduation         Single  47025        0  47     FALSE
973   4107       1948        PhD       Together  46681        0  75     FALSE
974  10906       1948        PhD       Together  46681        0  75     FALSE
975   8786       1956     Master        Married  62058        0  67     FALSE
976   6119       1963        PhD         Single  36736        0  60     FALSE
977   1077       1974 Graduation       Together  56715        0  49     FALSE
978   4764       1952     Master       Together  40442        1  71     FALSE
979   2223       1965   2n Cycle       Divorced  64176        0  58     FALSE
980   5827       1958 Graduation       Divorced  35246        0  65     FALSE
981   4954       1956 Graduation        Married  48195        0  67     FALSE
982   3139       1982   2n Cycle         Single  74116        0  41     FALSE
983   9952       1947     Master       Together  78093        0  76     FALSE
984   8180       1952     Master       Divorced  59354        0  71     FALSE
985   3276       1976   2n Cycle       Together  36301        0  47     FALSE
986   4994       1943     Master         Single  77598        0  80     FALSE
987   3598       1972 Graduation        Married  62710        0  51     FALSE
988    945       1965 Graduation       Together  36317        0  58     FALSE
989   5048       1971        PhD         Single  42767        0  52     FALSE
990   6214       1982     Master        Married  43815        0  41     FALSE
991   6230       1971 Graduation       Divorced  44421        0  52     FALSE
992   2968       1943        PhD       Divorced  48948        1  80     FALSE
993   8800       1943        PhD       Divorced  48948        1  80     FALSE
994   1907       1950     Master       Divorced  63120        1  73     FALSE
995  10478       1950        PhD        Married  55517        1  73     FALSE
996   4188       1957 Graduation         Single  36864        1  66     FALSE
997   2225       1977 Graduation       Divorced  82582        1  46      TRUE
998   4790       1958 Graduation       Divorced  79803        0  65     FALSE
999   1131       1967        PhD         Single  52569        0  56     FALSE
1000   202       1948        PhD          Widow  82032        0  75      TRUE
1001  9589       1948        PhD          Widow  82032        0  75      TRUE
1002  3900       1972 Graduation        Married  65685        0  51     FALSE
1003  9958       1972 Graduation        Married  65685        0  51     FALSE
1004  8955       1957        PhD       Together  40451        0  66     FALSE
1005 10033       1973   2n Cycle       Divorced  31163        0  50     FALSE
1006  5751       1973   2n Cycle       Divorced  31163        0  50     FALSE
1007  3308       1952 Graduation        Married  35704        0  71     FALSE
1008  8008       1983 Graduation       Together  36075        0  40     FALSE
1009  1232       1982        PhD       Together  70038        0  41     FALSE
1010  2345       1982        PhD       Together  70038        0  41     FALSE
1011  1628       1971 Graduation       Together  71796        0  52     FALSE
1012  5081       1967   2n Cycle       Together  47821        0  56     FALSE
1013   839       1975        PhD        Married  45503        0  48     FALSE
1014  5154       1972     Master       Divorced  37760        0  51     FALSE
1015  8584       1952        PhD       Together  85431        0  71      TRUE
1016  6583       1955   2n Cycle        Married  72635        0  68     FALSE
1017  3433       1955   2n Cycle        Married  72635        0  68     FALSE
1018 10486       1948 Graduation        Married  77142        0  75     FALSE
1019  8687       1978 Graduation       Together  53172        0  45     FALSE
1020  7842       1968 Graduation         Single  36065        0  55     FALSE
1021  3749       1973 Graduation       Together  73926        0  50     FALSE
1022  1331       1977 Graduation         Single  35790        0  46     FALSE
1023  5995       1962 Graduation       Divorced  39552        1  61     FALSE
1024  8985       1964   2n Cycle       Together  68316        0  59     FALSE
1025  2798       1977        PhD       Together 102160        1  46      TRUE
1026  7108       1965     Master          Widow  51390        0  58     FALSE
1027  2781       1981 Graduation         Single  72066        1  42     FALSE
1028   194       1965 Graduation        Married  48006        0  58     FALSE
1029 10833       1975 Graduation        Married  65106        0  48     FALSE
1030  2315       1960 Graduation       Divorced  58401        0  63     FALSE
1031 10738       1951     Master         Single  49389        0  72     FALSE
1032  8286       1965        PhD       Together  51717        0  58     FALSE
1033  2166       1960   2n Cycle          Widow  46779        0  63     FALSE
1034  9739       1963 Graduation         Single  34377        0  60     FALSE
1035  1829       1961        PhD       Divorced  54959        1  62     FALSE
1036  6260       1955     Master       Together  82384        1  68      TRUE
1037 10448       1956 Graduation         Single  46998        0  67     FALSE
1038  1343       1968 Graduation       Together  58554        0  55     FALSE
1039  4749       1968 Graduation       Together  58554        0  55     FALSE
1040   531       1954        PhD       Divorced  57333        1  69     FALSE
1041  6905       1994 Graduation       Together  80685        0  29      TRUE
1042  1045       1965 Graduation       Together  52117        0  58     FALSE
1043  4012       1972        PhD       Together  62220        1  51     FALSE
1044  5529       1946        PhD       Together  64014        0  77     FALSE
1045  4001       1946        PhD       Together  64014        0  77     FALSE
1046 10420       1955     Master       Divorced  46390        0  68     FALSE
1047  7723       1979 Graduation       Together  75507        0  44     FALSE
1048  2963       1979 Graduation       Together  75507        0  44     FALSE
1049 10634       1951     Master        Married  59412        0  72     FALSE
1050  5180       1968        PhD       Divorced  50616        0  55     FALSE
1051  6866       1969     Master       Together  35924        0  54     FALSE
1052  1328       1982   2n Cycle        Married  57937        0  41     FALSE
1053  1139       1984        PhD        Married  73356        1  39     FALSE
1054  5177       1974     Master        Married  58494        0  49     FALSE
1055  2075       1969 Graduation        Married  72460        0  54     FALSE
1056  3428       1991        PhD       Together  68682        0  32     FALSE
1057  4500       1991        PhD       Together  68682        0  32     FALSE
1058  7369       1981     Master        Married  36959        0  42     FALSE
1059  4381       1971        PhD        Married  46463        0  52     FALSE
1060  9964       1979 Graduation         Single  61825        0  44     FALSE
1061  1630       1979 Graduation         Single  61825        0  44     FALSE
1062  7822       1976 Graduation       Together  54058        0  47     FALSE
1063 10156       1975 Graduation         Single  84196        0  48      TRUE
1064  3033       1963     Master       Together  38620        0  60     FALSE
1065  4119       1963     Master       Together  38620        0  60     FALSE
1066   332       1957 Graduation        Married  47743        0  66     FALSE
1067   737       1949        PhD        Married  80360        0  74      TRUE
1068 10319       1971 Graduation        Married  66303        0  52     FALSE
1069  2683       1969 Graduation        Married  52413        0  54     FALSE
1070  3445       1956 Graduation         Single  60714        1  67     FALSE
1071 10913       1984     Master         Single  31385        1  39     FALSE
1072  4427       1995   2n Cycle         Single  83257        1  28      TRUE
1073  8717       1975        PhD        Married  80427        0  48      TRUE
1074  2066       1949 Graduation       Together  38823        0  74     FALSE
1075  3340       1977 Graduation        Married  42014        1  46     FALSE
1076  8685       1977 Graduation        Married  42014        1  46     FALSE
1077  4149       1948        PhD       Together  76140        0  75     FALSE
1078  8726       1964   2n Cycle       Divorced  41713        0  59     FALSE
1079  2295       1954        PhD        Married  62670        0  69     FALSE
1080  3283       1972   2n Cycle        Married  70932        0  51     FALSE
1081  1915       1951        PhD        Married  78939        0  72     FALSE
1082   800       1960 Graduation       Together  44512        0  63     FALSE
1083  9166       1968 Graduation        Married  63967        0  55     FALSE
1084  5147       1948 Graduation         Single  90842        0  75      TRUE
1085  9381       1978 Graduation        Married  66373        0  45     FALSE
1086  9384       1978 Graduation        Married  66373        0  45     FALSE
1087  3560       1952 Graduation       Together  83844        0  71      TRUE
1088   241       1952 Graduation       Together  83844        0  71      TRUE
1089  7521       1952 Graduation       Together  83844        0  71      TRUE
1090  9799       1968        PhD       Divorced  83664        0  55      TRUE
1091   448       1978        PhD         Single  54880        0  45     FALSE
1092  4837       1965        PhD        Married  71322        0  58     FALSE
1093  9365       1976        PhD         Single  60000        0  47     FALSE
1094  8932       1969     Master       Together  65176        0  54     FALSE
1095  7055       1952        PhD       Together  61010        0  71     FALSE
1096  3537       1981 Graduation       Together  31089        0  42     FALSE
1097  4988       1948        PhD        Married  34469        0  75     FALSE
1098  5610       1965 Graduation       Together  33456        0  58     FALSE
1099  3526       1968        PhD        Married  38443        0  55     FALSE
1100  5136       1973 Graduation         Single  65333        0  50     FALSE
1101  1411       1952 Graduation       Divorced  82623        0  71      TRUE
1102   701       1971 Graduation        Married  73691        0  52     FALSE
1103  6203       1947 Graduation       Together  74485        0  76     FALSE
1104  7192       1955 Graduation       Together  65748        0  68     FALSE
1105  9220       1971 Graduation         Single  91700        1  52      TRUE
1106  7734       1993 Graduation         Absurd  79244        1  30     FALSE
1107 10446       1957        PhD        Married  82017        1  66      TRUE
1108  5524       1957 Graduation         Single  58138        1  66     FALSE
1109  3830       1953     Master        Married  59354        0  70     FALSE
1110  5186       1955        PhD        Married  58482        0  68     FALSE
1111  7165       1972 Graduation       Together  64474        0  51     FALSE
1112 10236       1975     Master         Single  31160        0  48     FALSE
1113  2392       1972 Graduation        Married  40321        0  51     FALSE
1114  1920       1972 Graduation        Married  40321        0  51     FALSE
1115  3673       1971 Graduation         Single  55239        0  52     FALSE
1116  1453       1943        PhD          Widow  57513        0  80     FALSE
1117  4518       1979 Graduation       Together  85693        0  44      TRUE
1118  8969       1977 Graduation        Married  71855        0  46     FALSE
1119  1079       1971        PhD        Married  71969        0  52     FALSE
1120  3434       1951 Graduation         Single  80872        0  72      TRUE
1121  5721       1956        PhD        Married  84117        0  67      TRUE
1122  8418       1958   2n Cycle         Single  38741        0  65     FALSE
1123  5300       1973     Master        Married  38961        0  50     FALSE
1124 10424       1968 Graduation         Single  75922        0  55     FALSE
1125 11171       1965     Master        Married  56962        0  58     FALSE
1126  1600       1965     Master        Married  56962        0  58     FALSE
1127  7851       1949 Graduation          Widow  70165        0  74     FALSE
1128 10701       1973 Graduation        Married  65308        0  50     FALSE
1129  6912       1967        PhD        Married  63246        0  56     FALSE
1130  5967       1952 Graduation       Together  33402        0  71     FALSE
1131  2109       1990 Graduation         Single  96843        1  33      TRUE
1132  6292       1986        PhD        Married  82333        1  37      TRUE
1133  8537       1949 Graduation          Widow  72643        1  74     FALSE
1134  9576       1982        PhD       Together  32313        0  41     FALSE
1135  5935       1956     Master         Single  55284        0  67     FALSE
1136  3202       1987        PhD        Married  51563        0  36     FALSE
1137  1103       1976     Master        Married  81929        1  47      TRUE
1138   610       1953        PhD       Together  53593        0  70     FALSE
1139  4480       1973     Master        Married  60432        0  50     FALSE
1140 10660       1957     Master        Married  66726        0  66     FALSE
1141  9353       1959 Graduation         Single  62450        0  64     FALSE
1142  4120       1975   2n Cycle         Single  49514        0  48     FALSE
1143  2836       1972        PhD        Married  43269        0  51     FALSE
1144  9579       1959        PhD        Married  33762        0  64     FALSE
1145  5841       1966 Graduation       Together  60894        0  57     FALSE
1146  3174       1959 Graduation       Together  87771        1  64      TRUE
1147  5536       1959 Graduation       Together  87771        1  64      TRUE
1148  2061       1955 Graduation        Married  50737        0  68     FALSE
1149   640       1951 Graduation        Married  57304        0  72     FALSE
1150  3828       1951 Graduation        Married  71107        0  72     FALSE
1151  4093       1975     Master       Together  53253        0  48     FALSE
1152  8624       1958 Graduation        Married  81320        0  65      TRUE
1153  2802       1992   2n Cycle        Married  87000        0  31      TRUE
1154   368       1974 Graduation        Married  40049        0  49     FALSE
1155  3599       1970 Graduation        Married  63684        0  53     FALSE
1156  3389       1970 Graduation        Married  69016        0  53     FALSE
1157  7118       1957 Graduation        Married  73803        1  66     FALSE
1158  4937       1973   2n Cycle        Married  46094        0  50     FALSE
1159  1127       1973        PhD        Married  85844        0  50      TRUE
1160   833       1955     Master        Married  38452        0  68     FALSE
1161  3565       1955     Master        Married  38452        0  68     FALSE
1162  6086       1955 Graduation        Married  80395        0  68      TRUE
1163  1763       1988 Graduation       Together  87679        1  35      TRUE
1164  4697       1949     Master       Divorced  35416        0  74     FALSE
1165   182       1946        PhD       Together  44124        0  77     FALSE
1166  1165       1958        PhD         Single  50729        0  65     FALSE
1167  5386       1953 Graduation       Together  94384        1  70      TRUE
1168  6024       1953 Graduation       Together  94384        1  70      TRUE
1169  2678       1990 Graduation         Single  34412        0  33     FALSE
1170  5790       1985 Graduation        Married  31158        0  38     FALSE
1171   236       1951 Graduation        Married  34838        0  72     FALSE
1172  6001       1979 Graduation        Married  56775        0  44     FALSE
1173  6250       1949        PhD          Widow  54356        1  74     FALSE
1174  1168       1978        PhD        Married  72159        0  45     FALSE
1175  2926       1952     Master       Together  55951        0  71     FALSE
1176   716       1949        PhD       Together  67911        0  74     FALSE
1177  6544       1949        PhD       Together  67911        0  74     FALSE
1178  5823       1970        PhD         Single  32303        0  53     FALSE
1179  8375       1968        PhD        Married  55954        0  55     FALSE
1180  5723       1976        PhD       Together  49187        0  47     FALSE
1181  5763       1972     Master       Together  49854        0  51     FALSE
1182  8727       1978 Graduation       Divorced  63693        0  45     FALSE
1183  3056       1978 Graduation       Divorced  63693        0  45     FALSE
1184  3712       1959 Graduation       Divorced  52332        0  64     FALSE
1185 10722       1973 Graduation       Together  55593        0  50     FALSE
1186  2406       1949 Graduation       Together  54591        0  74     FALSE
1187  7313       1949   2n Cycle          Widow  74859        0  74     FALSE
1188  2656       1971 Graduation       Divorced  40851        0  52     FALSE
1189  1993       1949        PhD        Married  58607        0  74     FALSE
1190  2928       1975        PhD         Single  52614        0  48     FALSE
1191  2920       1975        PhD         Single  52614        0  48     FALSE
1192  6661       1974 Graduation        Married  67445        0  49     FALSE
1193  5462       1974 Graduation        Married  67445        0  49     FALSE
1194 10897       1974 Graduation        Married  67445        0  49     FALSE
1195 10542       1968        PhD        Married  36778        0  55     FALSE
1196  5756       1983 Graduation       Together  39453        0  40     FALSE
1197  3570       1969        PhD       Together  42731        0  54     FALSE
1198  1072       1965        PhD         Single  40760        0  58     FALSE
1199  9606       1965        PhD        Married  69969        1  58     FALSE
1200  2730       1955 Graduation         Single  80317        0  68      TRUE
1201  2995       1957     Master       Together  66636        0  66     FALSE
1202  8210       1975     Master        Married  54730        0  48     FALSE
1203   773       1971     Master       Divorced  42835        0  52     FALSE
1204  5272       1965     Master        Married  53843        0  58     FALSE
1205  5125       1960 Graduation        Married  79530        0  63     FALSE
1206  4391       1968     Master       Divorced  63841        0  55     FALSE
1207  6283       1968     Master       Divorced  63841        0  55     FALSE
1208  3421       1968     Master       Divorced  63841        0  55     FALSE
1209  3919       1976     Master         Single  72309        1  47     FALSE
1210  6097       1959 Graduation         Single  50664        0  64     FALSE
1211 10479       1975        PhD        Married  76618        0  48     FALSE
1212  5966       1974        PhD        Married  45207        0  49     FALSE
1213  3439       1972 Graduation        Married  56721        0  51     FALSE
1214  9014       1975 Graduation        Married  37085        0  48     FALSE
1215  4050       1966     Master        Married  49605        0  57     FALSE
1216  8315       1995 Graduation         Single  34824        0  28     FALSE
1217  5184       1995 Graduation         Single  34824        0  28     FALSE
1218  3643       1974     Master        Married  63206        0  49     FALSE
1219  4887       1976        PhD       Divorced  55412        0  47     FALSE
1220 10104       1974 Graduation       Together  33590        0  49     FALSE
1221  3254       1971 Graduation        Married  70886        0  52     FALSE
1222  2004       1969 Graduation         Single  72679        0  54     FALSE
1223  6142       1943     Master        Married  65073        0  80     FALSE
1224  8553       1965 Graduation        Married  44300        0  58     FALSE
1225  9805       1953     Master       Together  56129        0  70     FALSE
1226   849       1953     Master       Together  56129        0  70     FALSE
1227  1606       1971 Graduation       Together  38590        0  52     FALSE
1228   125       1958   2n Cycle       Together  53083        0  65     FALSE
1229  9305       1976   2n Cycle         Single  79689        0  47     FALSE
1230  4706       1966 Graduation         Single  34704        0  57     FALSE
1231  4437       1962 Graduation        Married  65316        0  61     FALSE
1232  3081       1978        PhD        Married  41014        0  45     FALSE
1233  9707       1969        PhD        Married  55212        0  54     FALSE
1234 10872       1969        PhD        Married  55212        0  54     FALSE
1235  9058       1955 Graduation          Widow  79800        1  68     FALSE
1236  4640       1967 Graduation       Divorced  70647        0  56     FALSE
1237  2525       1974        PhD        Married  38410        1  49     FALSE
1238 10704       1969 Graduation         Single  54803        0  54     FALSE
1239  2669       1993 Graduation         Single  74293        0  30     FALSE
1240 10037       1993 Graduation         Single  74293        0  30     FALSE
1241  5680       1984   2n Cycle        Married  35684        0  39     FALSE
1242  3726       1986        PhD       Together  34320        0  37     FALSE
1243  4548       1981 Graduation         Single  41967        0  42     FALSE
1244  4599       1976     Master        Married  49681        0  47     FALSE
1245   879       1976     Master        Married  49681        0  47     FALSE
1246  7409       1970 Graduation       Together  53187        0  53     FALSE
1247  1964       1951 Graduation       Together  86610        0  72      TRUE
1248     0       1985 Graduation        Married  70951        0  38     FALSE
1249   425       1985 Graduation        Married  55357        0  38     FALSE
1250  9500       1959 Graduation        Married  58113        0  64     FALSE
1251  3074       1984        PhD        Married  70643        1  39     FALSE
1252  5140       1985        PhD        Married  64355        0  38     FALSE
1253  2611       1959     Master       Together  82576        0  64      TRUE
1254   916       1972        PhD         Single  41644        0  51     FALSE
1255 10413       1984 Graduation        Married  72570        0  39     FALSE
1256  3696       1965 Graduation       Divorced  30630        0  58     FALSE
1257  5113       1971        PhD       Divorced  86979        1  52      TRUE
1258  4597       1970        PhD       Together  82072        0  53      TRUE
1259   675       1973     Master       Divorced  52034        0  50     FALSE
1260  4483       1993 Graduation         Single  72354        0  30     FALSE
1261  4487       1969     Master         Single  39858        1  54     FALSE
1262  3412       1951     Master        Married  67381        0  72     FALSE
1263  5837       1967 Graduation        Married  51479        0  56     FALSE
1264  3422       1975 Graduation        Married  76068        0  48     FALSE
1265 10702       1984 Graduation         Single  52413        0  39     FALSE
1266  2115       1957 Graduation       Together  50116        0  66     FALSE
1267  4138       1962 Graduation         Single  76624        0  61     FALSE
1268 11091       1953 Graduation       Together  34587        0  70     FALSE
1269  7712       1946        PhD         Single  62159        0  77     FALSE
1270  3535       1965 Graduation         Single  66294        0  58     FALSE
1271  8749       1984 Graduation       Together  37235        0  39     FALSE
1272 10955       1964 Graduation          Widow  85620        1  59      TRUE
1273  5286       1987     Master         Single  41020        0  36     FALSE
1274  3409       1984 Graduation         Single  36108        0  39     FALSE
1275  2544       1951     Master       Divorced  57530        0  72     FALSE
1276  2118       1964   2n Cycle        Married  62905        0  59     FALSE
1277  9370       1945        PhD        Married  65846        0  78     FALSE
1278  4864       1977 Graduation        Married  34380        0  46     FALSE
1279   405       1964 Graduation       Divorced  41638        0  59     FALSE
1280 10513       1992 Graduation       Together  63207        0  31     FALSE
1281  8387       1957 Graduation        Married  43140        0  66     FALSE
1282   378       1971 Graduation        Married  52531        0  52     FALSE
1283  5846       1977 Graduation       Divorced  40246        0  46     FALSE
1284  8870       1984 Graduation       Together  35196        1  39     FALSE
1285 10340       1984 Graduation       Together  35196        0  39     FALSE
1286  7290       1985 Graduation         Single  70596        0  38     FALSE
1287  8895       1985 Graduation         Single  70596        0  38     FALSE
1288  3635       1962        PhD         Single  52597        0  61     FALSE
1289 11178       1972     Master         Single  42394        0  51     FALSE
1290  2410       1969 Graduation         Single  81657        0  54      TRUE
1291  3281       1960        PhD        Married  49154        0  63     FALSE
1292  9905       1952 Graduation       Together  34074        0  71     FALSE
1293  2565       1955     Master       Divorced  70638        0  68     FALSE
1294  7912       1978 Graduation        Married  38136        0  45     FALSE
1295  7072       1973 Graduation        Married  67432        0  50     FALSE
1296  1409       1951 Graduation       Together  40689        0  72     FALSE
1297  5314       1951 Graduation       Together  40689        0  72     FALSE
1298  7215       1983 Graduation         Single 101970        1  40      TRUE
1299  8858       1972        PhD        Married  44325        0  51     FALSE
1300   895       1948        PhD        Married  61467        0  75     FALSE
1301 10313       1975 Graduation        Married  48178        0  48     FALSE
1302  8504       1973 Graduation        Married  79593        0  50     FALSE
1303  1020       1973 Graduation        Married  79593        0  50     FALSE
1304  3717       1959 Graduation        Married  61180        0  64     FALSE
1305  7646       1989 Graduation         Single  64449        0  34     FALSE
1306  5796       1963 Graduation        Married  77437        0  60     FALSE
1307  5407       1954 Graduation       Together  53103        0  69     FALSE
1308  4356       1971 Graduation       Together  71819        0  52     FALSE
1309  2886       1971     Master       Divorced  74290        0  52     FALSE
1310 10057       1951 Graduation         Single  72282        1  72     FALSE
1311 10741       1951     Master       Together  47352        0  72     FALSE
1312  5491       1951     Master       Together  47352        0  72     FALSE
1313  4442       1961 Graduation         Single  46524        0  62     FALSE
1314  3972       1976 Graduation       Together  50200        0  47     FALSE
1315  7899       1952        PhD        Married  77610        0  71     FALSE
1316  9703       1970        PhD        Married  38097        1  53     FALSE
1317  6927       1968        PhD        Married  44377        0  55     FALSE
1318  7005       1981 Graduation         Single  58684        0  42     FALSE
1319   246       1965 Graduation        Married  66480        0  58     FALSE
1320  4796       1952 Graduation       Divorced  49638        0  71     FALSE
1321  4725       1950        PhD       Together  50616        0  73     FALSE
1322 10680       1986 Graduation       Together  33235        0  37     FALSE
1323  7327       1959        PhD        Married  36732        0  64     FALSE
1324  1553       1946 Graduation       Together  82657        0  77      TRUE
1325  1665       1964        PhD       Divorced  64140        1  59     FALSE
1326 10640       1974 Graduation       Together  44392        0  49     FALSE
1327  7761       1978   2n Cycle       Together  38702        0  45     FALSE
1328  5062       1963        PhD        Married  54072        0  60     FALSE
1329  6349       1987     Master       Divorced  61787        0  36     FALSE
1330  3386       1992 Graduation        Married  34935        0  31     FALSE
1331  8175       1992 Graduation        Married  34935        0  31     FALSE
1332  6245       1950        PhD       Together  59292        0  73     FALSE
1333  8780       1950        PhD       Together  59292        0  73     FALSE
1334  2276       1955 Graduation         Single  57959        0  68     FALSE
1335  1172       1983        PhD        Married  92491        1  40      TRUE
1336  3225       1984     Master        Married  42207        1  39     FALSE
1337  8629       1956 Graduation          Widow  46984        0  67     FALSE
1338   269       1963        PhD         Single  46757        0  60     FALSE
1339 10245       1986   2n Cycle         Single  80910        0  37      TRUE
1340  2447       1979 Graduation       Together  30545        0  44     FALSE
1341  9817       1970     Master         Single  44802        0  53     FALSE
1342  1371       1976 Graduation         Single  79941        0  47     FALSE
1343  8093       1969     Master        Married  79734        0  54     FALSE
1344   713       1977     Master        Married  50353        0  46     FALSE
1345 11051       1956        PhD       Together  77376        0  67     FALSE
1346  5545       1972        PhD        Married  78075        0  51     FALSE
1347  5283       1976        PhD         Single  42473        0  47     FALSE
1348  7495       1948        PhD        Married  56223        0  75     FALSE
1349  4368       1980 Graduation        Married  47850        0  43     FALSE
1350  6303       1986        PhD       Together  91820        0  37      TRUE
1351  1030       1965        PhD         Single  40637        0  58     FALSE
1352  6945       1952 Graduation         Single  84574        0  71      TRUE
1353  8562       1969 Graduation       Together  54165        0  54     FALSE
1354  9167       1956 Graduation        Married  67131        0  67     FALSE
1355  4743       1969        PhD        Married  56242        0  54     FALSE
1356 10742       1983        PhD        Married  86580        0  40      TRUE
1357 10965       1955 Graduation       Together  76005        0  68     FALSE
1358  7129       1962        PhD        Married  54693        0  61     FALSE
1359  3732       1955     Master        Married  52750        0  68     FALSE
1360  7124       1968 Graduation       Divorced  36997        0  55     FALSE
1361 10686       1965        PhD       Together  34230        0  58     FALSE
1362  7247       1960 Graduation          Widow  47916        0  63     FALSE
1363  1513       1979   2n Cycle       Together  60839        0  44     FALSE
1364   460       1972        PhD        Married  79930        0  51     FALSE
1365  6653       1970        PhD        Married  55158        1  53     FALSE
1366  9400       1958   2n Cycle         Single  85485        0  65      TRUE
1367  7106       1943        PhD        Married  75865        0  80     FALSE
1368  4252       1965 Graduation        Married  44375        0  58     FALSE
1369  9240       1971        PhD         Single  60504        0  52     FALSE
1370 10770       1959 Graduation        Married  65492        0  64     FALSE
1371   176       1980   2n Cycle         Single  67506        0  43     FALSE
1372  6870       1959        PhD       Divorced  68805        0  64     FALSE
1373   143       1970 Graduation         Single  61209        0  53     FALSE
1374  6445       1967 Graduation       Together  66825        0  56     FALSE
1375  4278       1983        PhD         Single  87188        1  40      TRUE
1376  6906       1953     Master          Widow  84953        1  70      TRUE
1377  4637       1954        PhD         Single  74637        0  69     FALSE
1378  8690       1962 Graduation        Married  86111        0  61      TRUE
1379  1173       1947     Master       Together  77632        1  76     FALSE
1380  1928       1973 Graduation        Married  31814        0  50     FALSE
1381  9029       1972        PhD        Married  70116        0  51     FALSE
1382 10299       1969        PhD         Single  48240        1  54     FALSE
1383  9246       1985     Master       Together  40101        0  38     FALSE
1384  4943       1953 Graduation        Married  70503        0  70     FALSE
1385  4122       1975 Graduation        Married  79205        1  48     FALSE
1386  2853       1980 Graduation         Single  51766        0  43     FALSE
1387   902       1980 Graduation       Together  62994        0  43     FALSE
1388  1672       1974        PhD       Together  65640        0  49     FALSE
1389  7254       1969 Graduation       Together  38361        0  54     FALSE
1390  8775       1969 Graduation       Together  38361        0  54     FALSE
1391  2894       1985 Graduation         Single  72903        1  38     FALSE
1392  5956       1948        PhD       Divorced  45072        0  75     FALSE
1393  1921       1967        PhD        Married  59062        0  56     FALSE
1394  5057       1961     Master        Married  61794        0  62     FALSE
1395 10260       1965     Master       Together  45143        0  58     FALSE
1396  2262       1965     Master       Together  45143        0  58     FALSE
1397  1461       1965        PhD       Divorced  36921        0  58     FALSE
1398  7514       1956   2n Cycle       Together  54342        0  67     FALSE
1399  6461       1969     Master         Single  62772        0  54     FALSE
1400   257       1959        PhD        Married  75032        0  64     FALSE
1401   367       1978   2n Cycle        Married  36550        0  45     FALSE
1402  9265       1953 Graduation        Married  75027        0  70     FALSE
1403  1990       1974        PhD         Single  63159        0  49     FALSE
1404  3594       1973     Master        Married  54108        0  50     FALSE
1405  9292       1952 Graduation        Married  81795        0  71      TRUE
1406  6218       1965 Graduation        Married  59594        0  58     FALSE
1407 10164       1958 Graduation         Single  94472        0  65      TRUE
1408  9937       1979 Graduation         Single  70337        0  44     FALSE
1409   274       1973 Graduation         Single  34853        0  50     FALSE
1410  6969       1982 Graduation       Together  50272        0  41     FALSE
1411  9974       1974 Graduation        Married  30631        0  49     FALSE
1412  7053       1966        PhD         Single  78420        0  57     FALSE
1413  3179       1980 Graduation         Single  81741        0  43      TRUE
1414  1362       1972 Graduation         Single  31907        0  51     FALSE
1415  6768       1962 Graduation       Divorced  37859        0  61     FALSE
1416  2375       1972 Graduation       Together  30261        0  51     FALSE
1417  4333       1954 Graduation       Together  32144        0  69     FALSE
1418  2948       1954     Master       Divorced  62637        0  69     FALSE
1419  7426       1971   2n Cycle        Married  54690        0  52     FALSE
1420  8360       1971   2n Cycle        Married  54690        0  52     FALSE
1421  4058       1955        PhD         Single  61284        0  68     FALSE
1422  8414       1962        PhD         Single  33419        0  61     FALSE
1423  6810       1983 Graduation       Divorced  82025        1  40      TRUE
1424  3483       1958 Graduation        Married  48192        1  65     FALSE
1425   238       1967   2n Cycle       Together  67309        0  56     FALSE
1426   591       1957 Graduation          Widow  66033        0  66     FALSE
1427  2258       1986 Graduation        Married  32880        0  37     FALSE
1428  5287       1973 Graduation        Married  34961        0  50     FALSE
1429  6457       1976 Graduation       Divorced  64892        0  47     FALSE
1430  5577       1983 Graduation       Together  43776        0  40     FALSE
1431   641       1967 Graduation         Single  52074        0  56     FALSE
1432  1834       1978     Master         Single  35544        0  45     FALSE
1433  8789       1989   2n Cycle        Married  59060        0  34     FALSE
1434 10584       1976 Graduation        Married  65665        0  47     FALSE
1435  6071       1989 Graduation         Single  81217        0  34      TRUE
1436   295       1989 Graduation         Single  81217        0  34      TRUE
1437  3968       1970   2n Cycle       Divorced  65706        1  53     FALSE
1438  4037       1976 Graduation       Divorced  31859        0  47     FALSE
1439  6932       1941        PhD        Married  93027        0  82      TRUE
1440 10159       1970 Graduation       Divorced  58710        0  53     FALSE
1441  1177       1966     Master       Together  49618        0  57     FALSE
1442  9426       1964     Master         Single  58308        0  59     FALSE
1443 10637       1964 Graduation        Married  40800        0  59     FALSE
1444 10992       1967 Graduation       Together  75702        0  56     FALSE
1445  6383       1971        PhD       Together  32892        0  52     FALSE
1446 10536       1971        PhD       Together  32892        0  52     FALSE
1447  6036       1959     Master       Together  89120        0  64      TRUE
1448   538       1989 Graduation         Single  46107        0  34     FALSE
1449 10022       1973        PhD         Single  54466        0  50     FALSE
1450 10157       1965 Graduation         Single  59686        0  58     FALSE
1451  3503       1950 Graduation       Divorced  82460        0  73      TRUE
1452   146       1960        PhD         Single  76045        0  63     FALSE
1453  5538       1975 Graduation       Divorced  83829        1  48      TRUE
1454  3910       1975 Graduation       Divorced  83829        1  48      TRUE
1455  4227       1968     Master       Together  32889        0  55     FALSE
1456  6634       1979     Master       Divorced  33462        0  44     FALSE
1457  8916       1975 Graduation       Divorced  36627        0  48     FALSE
1458  5883       1972 Graduation        Married  77981        0  51     FALSE
1459 10091       1956 Graduation         Single  60230        0  67     FALSE
1460   697       1969 Graduation       Together  74918        0  54     FALSE
1461  2607       1953 Graduation         Single  40464        0  70     FALSE
1462  8427       1956     Master         Single  64857        0  67     FALSE
1463   217       1956     Master         Single  64857        0  67     FALSE
1464  6202       1960 Graduation       Together  63381        0  63     FALSE
1465  3856       1960 Graduation       Together  63381        0  63     FALSE
1466 10648       1982   2n Cycle       Together  66664        0  41     FALSE
1467  5120       1982   2n Cycle       Together  66664        0  41     FALSE
1468  6749       1966 Graduation         Single  86358        0  57      TRUE
1469  1584       1977 Graduation        Married  41443        0  46     FALSE
1470  9559       1961        PhD        Married  57072        0  62     FALSE
1471   771       1967 Graduation       Together  54178        0  56     FALSE
1472  5237       1950        PhD         Single  48767        0  73     FALSE
1473  2461       1955     Master         Single  51124        0  68     FALSE
1474  5474       1970 Graduation         Single  43020        0  53     FALSE
1475  2895       1963 Graduation         Single  49980        0  60     FALSE
1476  7972       1955 Graduation         Single  72906        0  68     FALSE
1477   500       1977 Graduation       Together  96876        1  46      TRUE
1478   922       1979   2n Cycle        Married  31086        0  44     FALSE
1479   375       1954 Graduation       Divorced  76773        0  69     FALSE
1480 10936       1965 Graduation        Married  72190        0  58     FALSE
1481 10314       1948        PhD        Married  83837        1  75      TRUE
1482  2674       1958     Master         Single  75154        1  65     FALSE
1483  6999       1980     Master        Married  69661        0  43     FALSE
1484  5223       1966     Master       Together  45903        0  57     FALSE
1485  2952       1977     Master         Single  36273        0  46     FALSE
1486  7683       1968     Master        Married  70777        0  55     FALSE
1487  9907       1969     Master       Together  66476        0  54     FALSE
1488  5454       1979     Master        Married  45057        0  44     FALSE
1489  3798       1968 Graduation        Married  41120        0  55     FALSE
1490  6437       1985   2n Cycle         Single  41473        0  38     FALSE
1491  2488       1956   2n Cycle       Divorced  31395        0  67     FALSE
1492  3945       1947        PhD          Widow  68117        1  76     FALSE
1493   702       1975   2n Cycle          Widow  47682        0  48     FALSE
1494  9010       1972     Master        Married  83151        1  51      TRUE
1495  9710       1969        PhD       Divorced  58086        0  54     FALSE
1496  1509       1958        PhD       Together  84460        1  65      TRUE
1497  9120       1962 Graduation         Single  66565        0  61     FALSE
1498  5959       1968 Graduation         Single  35893        0  55     FALSE
1499  7441       1973 Graduation       Divorced  71128        0  50     FALSE
1500  4271       1989   2n Cycle       Together  38683        0  34     FALSE
1501  4095       1971 Graduation        Married  37150        0  52     FALSE
1502  8852       1976 Graduation        Married  61064        0  47     FALSE
1503  7698       1976        PhD        Married  51650        0  47     FALSE
1504  4174       1956     Master       Together  55249        0  67     FALSE
1505  3182       1973        PhD         Single  46854        1  50     FALSE
1506  5229       1969        PhD       Together  54132        0  54     FALSE
1507  5555       1975 Graduation       Divorced 153924        0  48      TRUE
1508  7732       1978 Graduation        Married  64813        0  45     FALSE
1509   310       1970     Master        Married  61872        0  53     FALSE
1510  6261       1979 Graduation        Married  58025        0  44     FALSE
1511  6274       1948     Master        Married  83790        0  75      TRUE
1512  1655       1979 Graduation       Together  34350        0  44     FALSE
1513  2740       1958        PhD          Widow  33438        0  65     FALSE
1514    17       1971        PhD        Married  60491        0  52     FALSE
1515  9153       1964        PhD        Married  59304        0  59     FALSE
1516   520       1974 Graduation        Married  34421        0  49     FALSE
1517  8372       1974 Graduation        Married  34421        0  49     FALSE
1518    73       1953        PhD         Single  51411        0  70     FALSE
1519  2002       1958 Graduation       Divorced  71964        0  65     FALSE
1520  6059       1953        PhD       Together  64504        1  70     FALSE
1521 11166       1961 Graduation        Married  49678        0  62     FALSE
1522  6257       1976     Master         Single  60482        0  47     FALSE
1523  9224       1972        PhD         Single  55260        0  51     FALSE
1524  8732       1969     Master          Widow  67369        1  54     FALSE
1525   955       1962     Master       Together  47175        1  61     FALSE
1526  4910       1967 Graduation       Divorced  68743        0  56     FALSE
1527   564       1981        PhD       Together  56937        1  42     FALSE
1528  8931       1986 Graduation       Together  83033        0  37      TRUE
1529  1998       1976 Graduation         Single  37697        0  47     FALSE
1530  1250       1976 Graduation         Single  37697        0  47     FALSE
1531  8397       1951 Graduation        Married  44689        0  72     FALSE
1532  2125       1959 Graduation       Divorced  63033        0  64     FALSE
1533  5975       1967        PhD         Single  40304        0  56     FALSE
1534   983       1984 Graduation        Married  40059        0  39     FALSE
1535  9938       1954 Graduation        Married  80067        0  69      TRUE
1536  4385       1981        PhD         Single  36038        0  42     FALSE
1537   803       1968 Graduation       Together  40521        0  55     FALSE
1538 10675       1956        PhD        Married  66334        1  67     FALSE
1539  4432       1976 Graduation       Divorced  31615        0  47     FALSE
1540  4475       1949        PhD        Married  69098        0  74     FALSE
1541 10868       1951 Graduation          Widow  70792        0  72     FALSE
1542   339       1972        PhD        Married  57091        1  51     FALSE
1543  8017       1981   2n Cycle        Married  51111        0  42     FALSE
1544  3722       1972 Graduation         Single  44503        0  51     FALSE
1545  7326       1971     Master        Married  56850        0  52     FALSE
1546  2416       1969        PhD         Single  66582        0  54     FALSE
1547  5278       1964 Graduation        Married  82224        0  59      TRUE
1548  5734       1974        PhD        Married  61917        0  49     FALSE
1549  4370       1966 Graduation       Together  43482        0  57     FALSE
1550  8405       1979 Graduation       Divorced  68274        0  44     FALSE
1551  7617       1974 Graduation         Single  42373        0  49     FALSE
1552  6376       1979 Graduation         Single  57537        0  44     FALSE
1553  2150       1958        PhD          Widow  80995        0  65      TRUE
1554  7386       1976 Graduation       Divorced  30992        0  47     FALSE
1555  3006       1976 Graduation       Divorced  30992        0  47     FALSE
1556 11088       1971        PhD       Together  78642        0  52     FALSE
1557  5185       1955 Graduation        Married  74268        0  68     FALSE
1558  3523       1962 Graduation       Together  75072        0  61     FALSE
1559    55       1963 Graduation       Together  56253        0  60     FALSE
1560  3807       1955 Graduation       Together  59925        0  68     FALSE
1561  2453       1960 Graduation       Together  62807        0  63     FALSE
1562  7787       1960 Graduation       Together  62807        0  63     FALSE
1563  8146       1976     Master       Together  46106        0  47     FALSE
1564   988       1965 Graduation        Married  81168        0  58      TRUE
1565   361       1969     Master        Married  43142        0  54     FALSE
1566  5939       1971 Graduation       Together  38232        0  52     FALSE
1567  9349       1985 Graduation        Married  92533        0  38      TRUE
1568   819       1945 Graduation          Widow  63285        0  78     FALSE
1569 10120       1955 Graduation       Together  38946        0  68     FALSE
1570  4541       1955 Graduation       Together  38946        0  68     FALSE
1571  2456       1975        PhD        Married  40233        0  48     FALSE
1572  2516       1969   2n Cycle        Married  46831        0  54     FALSE
1573 11013       1987 Graduation       Together  67605        0  36     FALSE
1574  9988       1976     Master         Single  70379        0  47     FALSE
1575  1627       1957   2n Cycle       Divorced  77297        0  66     FALSE
1576  1490       1962 Graduation        Married  55759        0  61     FALSE
1577  6710       1951     Master         Single  58217        0  72     FALSE
1578  7375       1976 Graduation       Together  51369        0  47     FALSE
1579 10144       1976 Graduation       Together  51369        0  47     FALSE
1580  3138       1956 Graduation         Single  91249        1  67      TRUE
1581  1440       1978   2n Cycle       Together  52513        0  45     FALSE
1582  4200       1970     Master        Married  44159        0  53     FALSE
1583  4998       1962 Graduation       Together  76081        0  61     FALSE
1584  7321       1962 Graduation       Together  76081        0  61     FALSE
1585  8663       1974 Graduation       Divorced  39996        0  49     FALSE
1586  1958       1973        PhD       Together  55012        0  50     FALSE
1587  6963       1947 Graduation         Single  77457        0  76     FALSE
1588  1065       1963 Graduation         Single  80695        0  60      TRUE
1589  2712       1956 Graduation        Married  71866        0  67     FALSE
1590  6049       1982     Master       Together  73450        0  41     FALSE
1591  6605       1944        PhD       Divorced  55614        0  79     FALSE
1592 11181       1949        PhD        Married 156924        0  74      TRUE
1593  5234       1967   2n Cycle       Together  30753        0  56     FALSE
1594  5253       1956     Master       Together  54603        0  67     FALSE
1595  6289       1951     Master       Together  59385        0  72     FALSE
1596  9743       1955 Graduation        Married  76998        0  68     FALSE
1597  9209       1971     Master       Together  80573        0  52      TRUE
1598  6417       1971     Master       Together  80573        0  52      TRUE
1599  6488       1959        PhD        Married  38829        0  64     FALSE
1600  3194       1974        PhD         Single  71466        0  49     FALSE
1601  9697       1951 Graduation        Married  53790        0  72     FALSE
1602  4676       1951     Master          Widow  73705        0  72     FALSE
1603 10505       1960     Master       Together  73113        0  63     FALSE
1604  2005       1990 Graduation        Married  35765        0  33     FALSE
1605  6940       1966        PhD         Single  46734        0  57     FALSE
1606  2304       1963        PhD       Together  66313        0  60     FALSE
1607  3170       1957     Master       Together  68148        0  66     FALSE
1608 10466       1965 Graduation        Married  44393        0  58     FALSE
1609  7325       1986        PhD       Together  38197        0  37     FALSE
1610   455       1946        PhD        Married  51012        0  77     FALSE
1611  7592       1946        PhD        Married  51012        0  77     FALSE
1612  6825       1953 Graduation       Together  41452        0  70     FALSE
1613  2961       1982 Graduation        Married  42081        0  41     FALSE
1614  2278       1985   2n Cycle         Single  33812        0  38     FALSE
1615 10703       1975     Master         Single  46098        0  48     FALSE
1616     9       1975     Master         Single  46098        0  48     FALSE
1617  2804       1975     Master         Single  46098        1  48     FALSE
1618  4915       1956   2n Cycle        Married  53230        0  67     FALSE
1619  3010       1989     Master       Together  88420        0  34      TRUE
1620  4279       1963   2n Cycle         Single  39548        0  60     FALSE
1621  2564       1953 Graduation       Together  61278        0  70     FALSE
1622  1137       1964 Graduation         Single  81246        0  59      TRUE
1623  5084       1975 Graduation          Widow  58330        0  48     FALSE
1624  7094       1975 Graduation          Widow  58330        0  48     FALSE
1625  6327       1967 Graduation       Together  65777        0  56     FALSE
1626  6131       1980   2n Cycle        Married  70829        0  43     FALSE
1627 10379       1962     Master         Single  59247        0  61     FALSE
1628  7801       1959 Graduation       Together  54753        0  64     FALSE
1629   550       1952 Graduation       Divorced  62335        0  71     FALSE
1630  4478       1979 Graduation        Married  63777        0  44     FALSE
1631  2350       1972 Graduation        Married  59666        0  51     FALSE
1632  1118       1956     Master        Married  50965        0  67     FALSE
1633  1491       1965   2n Cycle       Together  71488        0  58     FALSE
1634  4507       1952 Graduation         Single  72228        0  71     FALSE
1635  7023       1953        PhD         Single  46231        0  70     FALSE
1636  6977       1974 Graduation       Together  75702        0  49     FALSE
1637  4042       1971 Graduation       Divorced  43300        1  52     FALSE
1638  7274       1957 Graduation        Married  78618        0  66     FALSE
1639  9386       1962 Graduation       Together  50127        0  61     FALSE
1640 10323       1952 Graduation        Married  49413        0  71     FALSE
1641  4682       1958 Graduation        Married  51876        0  65     FALSE
1642  3083       1974 Graduation        Married  45837        0  49     FALSE
1643  8015       1962        PhD       Divorced  85696        1  61      TRUE
1644  1745       1962        PhD       Divorced  85696        1  61      TRUE
1645  3136       1962     Master       Divorced  59432        0  61     FALSE
1646  6991       1951 Graduation       Divorced  43185        0  72     FALSE
1647  8132       1975        PhD        Married  60631        0  48     FALSE
1648  8148       1956     Master       Together  50898        0  67     FALSE
1649  2736       1978 Graduation        Married  73807        0  45     FALSE
1650   692       1954 Graduation       Together  36807        0  69     FALSE
1651  7706       1975   2n Cycle       Together  46772        0  48     FALSE
1652  9298       1947        PhD       Together  81574        0  76      TRUE
1653  2986       1976 Graduation        Married  30772        0  47     FALSE
1654 10812       1978        PhD        Married  46377        0  45     FALSE
1655  2909       1974        PhD        Married  78128        0  49     FALSE
1656  6974       1972        PhD       Together  83443        0  51      TRUE
1657  9140       1960   2n Cycle       Together  50523        0  63     FALSE
1658  4554       1965 Graduation       Together  47009        0  58     FALSE
1659  7791       1967     Master        Married  37054        0  56     FALSE
1660  5455       1971        PhD        Married  32011        0  52     FALSE
1661  7960       1962   2n Cycle       Together  82122        0  61      TRUE
1662  3426       1975 Graduation       Divorced  70300        0  48     FALSE
1663  1404       1968 Graduation       Together  34916        0  55     FALSE
1664  8212       1971     Master        Married  39791        0  52     FALSE
1665  3233       1965        PhD        Married  62745        0  58     FALSE
1666  2975       1976 Graduation       Together  85606        0  47      TRUE
1667  3104       1961 Graduation         Single  82332        1  62      TRUE
1668 10854       1970        PhD        Married  38853        0  53     FALSE
1669  5558       1954        PhD         Single  90933        0  69      TRUE
1670   832       1966        PhD       Together  65814        0  57     FALSE
1671  4964       1958        PhD       Together  74250        0  65     FALSE
1672 11030       1976     Master        Married  33181        0  47     FALSE
1673  4587       1944     Master          Widow  45006        0  79     FALSE
1674   450       1958     Master       Together  42315        0  65     FALSE
1675 11031       1950        PhD        Married  48699        0  73     FALSE
1676  4990       1954 Graduation        Married  59111        0  69     FALSE
1677   221       1955 Graduation        Married  48726        0  68     FALSE
1678  4351       1955 Graduation       Divorced  37244        0  68     FALSE
1679  1357       1970 Graduation       Together  74854        0  53     FALSE
1680  5667       1964        PhD        Married  60896        1  59     FALSE
1681  8867       1988        PhD        Married  67546        0  35     FALSE
1682  2747       1988        PhD        Married  67546        0  35     FALSE
1683  7422       1987 Graduation         Single  46923        0  36     FALSE
1684  4148       1972 Graduation        Married  38988        0  51     FALSE
1685  9516       1971   2n Cycle       Divorced  49118        1  52     FALSE
1686  1833       1974        PhD         Single  39190        0  49     FALSE
1687  7270       1981 Graduation       Divorced  56981        0  42     FALSE
1688 10394       1984 Graduation        Married  90000        0  39      TRUE
1689  1142       1953        PhD        Married  55707        0  70     FALSE
1690  7128       1977        PhD         Single  42997        0  46     FALSE
1691 10678       1959 Graduation       Together  71232        0  64     FALSE
1692  7755       1954        PhD        Married  57744        0  69     FALSE
1693  4754       1966     Master        Married  33585        0  57     FALSE
1694    20       1965   2n Cycle        Married  46891        0  58     FALSE
1695  2246       1965   2n Cycle        Married  46891        0  58     FALSE
1696 10307       1956 Graduation        Married  50387        0  67     FALSE
1697  2147       1969 Graduation       Together  76653        0  54     FALSE
1698 10590       1956        PhD       Together  76542        0  67     FALSE
1699  6565       1949     Master        Married  76995        0  74     FALSE
1700  6619       1978 Graduation        Married  38415        0  45     FALSE
1701  4508       1952 Graduation         Single  75127        0  71     FALSE
1702  4843       1952 Graduation         Single  75127        0  71     FALSE
1703  9197       1953 Graduation        Married  39722        0  70     FALSE
1704  6515       1977 Graduation       Together  39771        0  46     FALSE
1705  5954       1972     Master       Divorced  42618        0  51     FALSE
1706  7938       1958        PhD       Together  51518        0  65     FALSE
1707   961       1972 Graduation        Married  74716        0  51     FALSE
1708  1764       1975 Graduation         Single  33955        0  48     FALSE
1709  1916       1954     Master        Married  45736        0  69     FALSE
1710  6941       1971 Graduation         Single  31632        0  52     FALSE
1711  5562       1974 Graduation        Married  60093        0  49     FALSE
1712  1517       1969 Graduation         Single  30822        0  54     FALSE
1713  7286       1968 Graduation       Together  41728        0  55     FALSE
1714  4687       1958     Master        Married  80739        0  65      TRUE
1715  5631       1991 Graduation         Single  49767        0  32     FALSE
1716  1951       1981      Basic        Married  34445        0  42     FALSE
1717   123       1951 Graduation          Widow  67046        0  72     FALSE
1718  9451       1965 Graduation        Married  73538        0  58     FALSE
1719  7396       1966 Graduation        Married  80398        0  57      TRUE
1720  3298       1956     Master        Married  52973        0  67     FALSE
1721  6730       1954 Graduation        Married  38998        0  69     FALSE
1722  9916       1954 Graduation        Married  38998        0  69     FALSE
1723  4094       1961 Graduation        Married  60544        0  62     FALSE
1724  8588       1961 Graduation        Married  60544        0  62     FALSE
1725  3916       1971        PhD       Together  49269        0  52     FALSE
1726  1755       1988   2n Cycle       Together  45204        0  35     FALSE
1727  2875       1978 Graduation        Married  67023        0  45     FALSE
1728  2008       1978 Graduation        Married  77583        0  45     FALSE
1729 10925       1983 Graduation        Married  76630        0  40     FALSE
1730  1604       1960     Master        Married  47353        0  63     FALSE
1731  5389       1964 Graduation        Married  48920        0  59     FALSE
1732  2878       1947        PhD        Married  67472        0  76     FALSE
1733  4440       1964     Master        Married  64100        0  59     FALSE
1734  1324       1988 Graduation        Married  38872        0  35     FALSE
1735  6262       1962     Master         Single  72217        0  61     FALSE
1736   322       1978 Graduation       Together  42554        0  45     FALSE
1737   175       1986 Graduation        Married  71952        0  37     FALSE
1738  6988       1986 Graduation        Married  71952        0  37     FALSE
1739  8204       1971   2n Cycle        Married  78041        0  52     FALSE
1740  7476       1964     Master         Single  63972        0  59     FALSE
1741  5221       1957 Graduation        Married  52852        0  66     FALSE
1742  8970       1972        PhD        Married  62010        0  51     FALSE
1743  9286       1960     Master       Together  83151        0  63      TRUE
1744  5831       1967 Graduation        Married  77870        1  56     FALSE
1745  1010       1977 Graduation       Together  46931        0  46     FALSE
1746 11074       1977 Graduation         Single  85072        0  46      TRUE
1747  5896       1987     Master        Married  73395        0  36     FALSE
1748  3515       1952 Graduation         Single  62307        0  71     FALSE
1749  5324       1981        PhD        Married  58293        0  42     FALSE
1750  6534       1974 Graduation       Together  47889        0  49     FALSE
1751  4501       1965     Master         Single  69882        0  58     FALSE
1752  9239       1961     Master        Married  61923        0  62     FALSE
1753  8953       1965     Master         Single  35791        0  58     FALSE
1754 10258       1965     Master         Single  35791        0  58     FALSE
1755  3520       1990     Master         Single  91172        1  33      TRUE
1756 10402       1967 Graduation        Married  35441        0  56     FALSE
1757  6055       1979 Graduation        Married  71626        0  44     FALSE
1758  4786       1977 Graduation        Married  75330        0  46     FALSE
1759  5015       1976     Master        Married  34529        0  47     FALSE
1760  8560       1992 Graduation         Single  48789        0  31     FALSE
1761  3469       1977        PhD       Divorced  34487        0  46     FALSE
1762  5885       1973   2n Cycle        Married  35688        0  50     FALSE
1763  3310       1973   2n Cycle        Married  35688        0  50     FALSE
1764  2134       1952 Graduation         Single  53700        0  71     FALSE
1765  2532       1987     Master         Single  73454        0  36     FALSE
1766  2579       1957 Graduation        Married  71113        0  66     FALSE
1767  5623       1980     Master        Married  31535        0  43     FALSE
1768  4789       1953 Graduation       Together  80812        0  70      TRUE
1769  9523       1982 Graduation       Together  40479        0  41     FALSE
1770  1545       1986 Graduation        Married  38508        0  37     FALSE
1771  2254       1983 Graduation        Married  69520        0  40     FALSE
1772  5847       1969 Graduation       Divorced  69901        0  54     FALSE
1773  5863       1953 Graduation        Married  47703        0  70     FALSE
1774   999       1991 Graduation         Single  86037        1  32      TRUE
1775  2931       1978 Graduation       Divorced  71847        0  45     FALSE
1776  1890       1971   2n Cycle       Together  42033        0  52     FALSE
1777  5589       1964 Graduation       Divorced  51983        0  59     FALSE
1778 10172       1988 Graduation         Single  68655        0  35     FALSE
1779  6729       1988 Graduation         Single  68655        0  35     FALSE
1780 10492       1959 Graduation       Together  38285        0  64     FALSE
1781  2939       1970     Master       Together  79419        0  53     FALSE
1782  5948       1975 Graduation         Single  57338        0  48     FALSE
1783   574       1964 Graduation        Married  42523        0  59     FALSE
1784  3266       1964 Graduation        Married  42523        0  59     FALSE
1785 10500       1984 Graduation        Married  31761        0  39     FALSE
1786  7987       1969 Graduation        Married  65747        0  54     FALSE
1787  1966       1965        PhD        Married  84618        0  58      TRUE
1788  7789       1965        PhD        Married  84618        0  58      TRUE
1789  3336       1948        PhD       Together  66375        0  75     FALSE
1790  5644       1957 Graduation       Together  42213        0  66     FALSE
1791  6663       1940        PhD         Single  51141        0  83     FALSE
1792  5748       1965 Graduation        Married  59754        1  58     FALSE
1793  8952       1953     Master        Married  65569        0  70     FALSE
1794  9826       1972        PhD         Single  86857        1  51      TRUE
1795  5830       1972        PhD         Single  86857        1  51      TRUE
1796  8310       1964 Graduation       Together  68142        0  59     FALSE
1797  6382       1953 Graduation       Together  48794        0  70     FALSE
1798  8439       1964 Graduation       Together  63404        0  59     FALSE
1799  7613       1974   2n Cycle       Together  49669        0  49     FALSE
1800    48       1964 Graduation       Together  55761        0  59     FALSE
1801  5046       1958 Graduation       Divorced  78331        0  65     FALSE
1802  3231       1973 Graduation        Married  37971        0  50     FALSE
1803  7181       1977 Graduation        Married  30368        0  46     FALSE
1804  1663       1978        PhD       Together  34043        0  45     FALSE
1805  5441       1965        PhD          Widow  54111        0  58     FALSE
1806  8602       1964 Graduation       Divorced  69932        0  59     FALSE
1807  9925       1981        PhD       Together  39665        0  42     FALSE
1808  9499       1954 Graduation        Married  93404        0  69      TRUE
1809  6568       1984 Graduation        Married  38680        0  39     FALSE
1810  5153       1967        PhD        Married  77766        1  56     FALSE
1811  4127       1967        PhD        Married  77766        1  56     FALSE
1812  9940       1958 Graduation       Together  64961        0  65     FALSE
1813  3406       1964 Graduation         Single  45989        0  59     FALSE
1814  6722       1954        PhD        Married  70421        0  69     FALSE
1815  8475       1973        PhD        Married 157243        0  50      TRUE
1816  8070       1973        PhD        Married  54222        0  50     FALSE
1817   313       1968 Graduation          Widow  73455        0  55     FALSE
1818  9757       1972 Graduation       Together  84906        0  51      TRUE
1819  2088       1972 Graduation       Together  84906        0  51      TRUE
1820  2320       1978   2n Cycle        Married  47025        0  45     FALSE
1821   966       1966 Graduation        Married  44529        0  57     FALSE
1822  9706       1974        PhD         Single  31560        0  49     FALSE
1823  3979       1983        PhD       Divorced  90687        1  40      TRUE
1824  5602       1989        PhD       Together  66973        0  34     FALSE
1825  2202       1978 Graduation       Together  41154        0  45     FALSE
1826  9645       1968 Graduation        Married  64590        0  55     FALSE
1827  7230       1960        PhD       Divorced  50611        1  63     FALSE
1828  5675       1960        PhD       Divorced  50611        0  63     FALSE
1829  4974       1970 Graduation         Single  83273        0  53      TRUE
1830  5687       1980 Graduation       Divorced  81702        0  43      TRUE
1831  3846       1974 Graduation        Married  42557        0  49     FALSE
1832  2831       1976 Graduation       Together  78416        0  47     FALSE
1833   868       1966 Graduation        Married  44794        0  57     FALSE
1834  7212       1966 Graduation        Married  44794        0  57     FALSE
1835  1743       1974 Graduation         Single  69719        0  49     FALSE
1836  2415       1962 Graduation       Together  62568        0  61     FALSE
1837  7947       1969 Graduation        Married  42231        0  54     FALSE
1838  8595       1973 Graduation          Widow  42429        0  50     FALSE
1839  7232       1973 Graduation          Widow  42429        0  50     FALSE
1840  7829       1900   2n Cycle       Divorced  36640        0 123     FALSE
1841  9977       1973 Graduation       Divorced  78901        0  50     FALSE
1842 10142       1976        PhD       Divorced  66476        0  47     FALSE
1843  5263       1977   2n Cycle        Married  31056        0  46     FALSE
1844    22       1976 Graduation       Divorced  46310        0  47     FALSE
1845   528       1978 Graduation        Married  65819        0  45     FALSE
1846  4070       1969        PhD        Married  94871        1  54      TRUE
> 
> cat("\nВ отдельный датасет запишите средние значения по Income по каждому типу Education — используйте group_by и summarize.")

В отдельный датасет запишите средние значения по Income по каждому типу Education — используйте group_by и summarize.
> summary_data <- df %>%
+   group_by(Education) %>%
+   summarize(Average_Income = mean(Income))
> print(summary_data)
# A tibble: 5 × 2
  Education  Average_Income
  <chr>               <dbl>
1 2n Cycle           57149.
2 Basic              32623 
3 Graduation         59160.
4 Master             56840.
5 PhD                58550.
> 
> cat("\nПрисоедините созданный датасет к основному по полю Education — используйте join.")

Присоедините созданный датасет к основному по полю Education — используйте join.
> df <- df %>%
+   left_join(summary_data, by = "Education")
> print(df)
        Id Year_Birth  Education Marital_Status Income Response Age Rich_flag
1     1826       1970 Graduation       Divorced  84835        1  53      TRUE
2        1       1961 Graduation         Single  57091        1  62     FALSE
3    10476       1958 Graduation        Married  67267        0  65     FALSE
4     1386       1967 Graduation       Together  32474        0  56     FALSE
5     7348       1958        PhD         Single  71691        1  65     FALSE
6     4073       1954   2n Cycle        Married  63564        1  69     FALSE
7     1991       1967 Graduation       Together  44931        0  56     FALSE
8     4047       1954        PhD        Married  65324        0  69     FALSE
9     9477       1954        PhD        Married  65324        0  69     FALSE
10    2079       1947   2n Cycle        Married  81044        0  76      TRUE
11    5642       1979     Master       Together  62499        0  44     FALSE
12   10530       1959        PhD          Widow  67786        1  64     FALSE
13     837       1977 Graduation        Married  54809        0  46     FALSE
14   10521       1977 Graduation        Married  54809        1  46     FALSE
15   10175       1958        PhD       Divorced  32173        0  65     FALSE
16    1473       1960   2n Cycle         Single  47823        0  63     FALSE
17    2795       1958     Master         Single  30523        0  65     FALSE
18    2285       1954     Master       Together  36634        0  69     FALSE
19     115       1966     Master         Single  43456        0  57     FALSE
20   10470       1979     Master        Married  40662        0  44     FALSE
21    4065       1976        PhD        Married  49544        0  47     FALSE
22   10968       1969 Graduation         Single  57731        0  54     FALSE
23    5985       1965     Master         Single  33168        0  58     FALSE
24    5430       1956 Graduation       Together  54450        0  67     FALSE
25    8432       1956 Graduation       Together  54450        0  67     FALSE
26     453       1956        PhD          Widow  35340        0  67     FALSE
27    9687       1975 Graduation         Single  73170        0  48     FALSE
28    8890       1971        PhD       Divorced  65808        0  52     FALSE
29    9264       1986 Graduation        Married  79529        0  37     FALSE
30    5824       1972        PhD       Together  34578        0  51     FALSE
31    5794       1974        PhD        Married  46374        1  49     FALSE
32    7962       1987        PhD         Single  95169        1  36      TRUE
33    2681       1984   2n Cycle        Married  65370        0  39     FALSE
34   10141       1960     Master       Divorced  39228        0  63     FALSE
35    3725       1961        PhD         Single  84865        1  62      TRUE
36    3767       1968 Graduation        Married  61314        0  55     FALSE
37    7030       1955        PhD        Married  66465        0  68     FALSE
38    1524       1983   2n Cycle         Single  81698        1  40      TRUE
39    3657       1986 Graduation         Single  39146        0  37     FALSE
40    9595       1961 Graduation       Together  64260        1  62     FALSE
41    3158       1973 Graduation        Married  32300        0  50     FALSE
42    5114       1965     Master        Married  74806        0  58     FALSE
43     340       1970 Graduation       Divorced  72967        1  53     FALSE
44    8805       1960 Graduation         Single  48904        0  63     FALSE
45    1402       1954     Master        Married  66991        0  69     FALSE
46    7264       1978   2n Cycle         Single  52195        0  45     FALSE
47    1619       1956 Graduation        Married  90369        1  67      TRUE
48    1857       1952 Graduation         Single  47139        1  71     FALSE
49    4877       1973     Master        Married  38576        0  50     FALSE
50    3066       1975        PhD       Together  61905        0  48     FALSE
51   10286       1962 Graduation        Married  83715        0  61      TRUE
52    1992       1964 Graduation        Married  60597        1  59     FALSE
53   10623       1961     Master       Together  48330        0  62     FALSE
54    4867       1968        PhD         Single  38236        0  55     FALSE
55    4865       1974     Master       Divorced  53367        1  49     FALSE
56    6287       1986 Graduation       Together  34728        1  37     FALSE
57    4405       1956     Master        Married  63915        0  67     FALSE
58    5332       1960   2n Cycle        Married  82504        0  63      TRUE
59    1519       1972        PhD         Single  38578        1  51     FALSE
60    9080       1972        PhD         Single  38578        0  51     FALSE
61    1772       1975        PhD        Married  79174        1  48     FALSE
62    5341       1962   2n Cycle       Divorced  81975        0  61      TRUE
63    5510       1977     Master        Married  43263        0  46     FALSE
64    7022       1971 Graduation        Married  76445        0  52     FALSE
65    9999       1965 Graduation       Together  75276        0  58     FALSE
66   10352       1963 Graduation          Widow  34213        1  60     FALSE
67    7919       1976        PhD       Together  72335        1  47     FALSE
68    4114       1964     Master        Married  79143        0  59     FALSE
69    9888       1969 Graduation       Together  68695        0  54     FALSE
70    4399       1969 Graduation       Together  68695        0  54     FALSE
71    4452       1957 Graduation         Single  50388        1  66     FALSE
72    4785       1970        PhD       Together  77622        0  53     FALSE
73    8461       1962 Graduation       Divorced  46102        0  61     FALSE
74    3878       1980   2n Cycle         Single  31859        0  43     FALSE
75     158       1945        PhD       Together  71604        1  78     FALSE
76    9970       1977 Graduation       Together  55375        0  46     FALSE
77    4002       1960        PhD        Married  77037        0  63     FALSE
78    7279       1969        PhD       Together  69476        0  54     FALSE
79   10582       1979 Graduation        Married  72063        0  44     FALSE
80    4470       1962     Master        Married  58646        0  61     FALSE
81    6183       1962     Master        Married  58646        0  61     FALSE
82    6379       1949     Master          Widow  47570        1  74     FALSE
83    8601       1980 Graduation        Married  80011        0  43      TRUE
84    4827       1956        PhD         Single  54998        1  67     FALSE
85    6715       1948        PhD         Single  60200        0  75     FALSE
86   10676       1982 Graduation        Married  63211        1  41     FALSE
87    1041       1973        PhD         Single  48432        1  50     FALSE
88     492       1973        PhD           YOLO  48432        0  50     FALSE
89   11133       1973        PhD           YOLO  48432        1  50     FALSE
90    4491       1949     Master        Married  62845        0  74     FALSE
91     873       1949     Master        Married  62845        1  74     FALSE
92    1631       1965        PhD       Together  65220        1  58     FALSE
93    8278       1990        PhD        Married  74214        0  33     FALSE
94    6815       1980   2n Cycle        Married  96547        1  43      TRUE
95     254       1955 Graduation       Together  53863        0  68     FALSE
96    1349       1970 Graduation        Married  50447        0  53     FALSE
97    2534       1953 Graduation        Married  37716        0  70     FALSE
98    2130       1982 Graduation       Together  45203        1  41     FALSE
99    2296       1975     Master        Married  37368        0  48     FALSE
100   3799       1955 Graduation        Married  67225        0  68     FALSE
101  11084       1976     Master       Together  65104        1  47     FALSE
102   5172       1976     Master       Together  65104        0  47     FALSE
103   9504       1949     Master        Married  81698        1  74      TRUE
104    850       1968 Graduation         Single  70566        0  55     FALSE
105   4477       1958 Graduation       Together  69096        0  65     FALSE
106   1945       1962 Graduation        Married  71434        0  61     FALSE
107   7685       1978 Graduation        Married  33039        0  45     FALSE
108   6310       1978 Graduation        Married  33039        0  45     FALSE
109  10832       1958 Graduation       Together  46610        0  65     FALSE
110   3025       1958 Graduation         Single  49967        0  65     FALSE
111   2404       1976 Graduation        Married  53359        0  47     FALSE
112   8581       1971     Master        Married  49505        0  52     FALSE
113   8755       1946     Master        Married  68657        0  77     FALSE
114  10177       1954 Graduation       Divorced  72071        0  69     FALSE
115   2429       1954 Graduation       Divorced  72071        0  69     FALSE
116   8920       1967     Master         Single  59235        0  56     FALSE
117   7233       1972 Graduation        Married  69209        0  51     FALSE
118   6678       1989 Graduation       Together  31928        0  34     FALSE
119    830       1987        PhD         Single  74004        1  36     FALSE
120   6365       1987   2n Cycle        Married  30390        0  36     FALSE
121   1031       1989   2n Cycle        Married  85710        0  34      TRUE
122  10089       1974 Graduation       Divorced 102692        1  49      TRUE
123   9256       1971 Graduation         Single  58350        0  52     FALSE
124  10356       1957        PhD       Divorced  41437        0  66     FALSE
125   9323       1949     Master       Together  49912        1  74     FALSE
126   1146       1949     Master       Together  49912        1  74     FALSE
127   6343       1959 Graduation        Married  79823        0  64     FALSE
128   8545       1954 Graduation       Divorced  85683        1  69      TRUE
129   8275       1965        PhD       Divorced  47025        0  58     FALSE
130  10673       1976        PhD        Married  68397        0  47     FALSE
131   8799       1984        PhD        Married  38175        0  39     FALSE
132     67       1972     Master         Single  46423        0  51     FALSE
133   9923       1972     Master         Single  46423        0  51     FALSE
134   2814       1976     Master       Together  30560        0  47     FALSE
135   2711       1976     Master       Together  30560        0  47     FALSE
136   4320       1979 Graduation         Single  60152        0  44     FALSE
137  10814       1947 Graduation       Together  70321        1  76     FALSE
138    944       1962 Graduation        Married  56181        0  61     FALSE
139   6184       1969        PhD        Married  68462        0  54     FALSE
140   3498       1976        PhD        Married  55424        1  47     FALSE
141   2870       1973 Graduation        Married  49094        0  50     FALSE
142   7342       1961   2n Cycle          Widow  59184        0  62     FALSE
143   1911       1987 Graduation       Together  67430        0  36     FALSE
144  10862       1960     Master        Married  30522        0  63     FALSE
145   2546       1977   2n Cycle         Single  31878        0  46     FALSE
146   3005       1992 Graduation         Single  83528        1  31      TRUE
147   8318       1979 Graduation       Together  90300        0  44      TRUE
148   2930       1978     Master         Single  68092        0  45     FALSE
149   8216       1972     Master        Married  53761        0  51     FALSE
150   1212       1973 Graduation        Married  52845        0  50     FALSE
151  10905       1955 Graduation       Together  42586        1  68     FALSE
152   8910       1955 Graduation       Together  42586        1  68     FALSE
153   7872       1975        PhD        Married  86836        1  48      TRUE
154   4290       1972 Graduation        Married  30467        0  51     FALSE
155   7408       1952        PhD        Married  54549        0  71     FALSE
156   8235       1956     Master       Together  69245        0  67     FALSE
157  10949       1963        PhD       Divorced  72968        1  60     FALSE
158   7284       1953 Graduation        Married  48686        0  70     FALSE
159   9529       1990 Graduation        Married  73687        1  33     FALSE
160   9930       1944        PhD         Single  82716        0  79      TRUE
161  10270       1981   2n Cycle        Married  35523        0  42     FALSE
162    760       1975        PhD       Divorced  60554        0  48     FALSE
163   5519       1956 Graduation       Together  64090        1  67     FALSE
164    232       1965 Graduation         Single  61559        0  58     FALSE
165   3009       1962        PhD          Widow  71670        1  61     FALSE
166   6518       1951        PhD          Widow  67680        0  72     FALSE
167  10669       1981 Graduation        Married  54386        0  42     FALSE
168   5682       1953        PhD         Single  64108        0  70     FALSE
169   1570       1951        PhD       Together  69702        0  72     FALSE
170   1497       1952 Graduation         Single  47958        0  71     FALSE
171   9723       1960 Graduation        Married  67716        0  63     FALSE
172   7261       1971 Graduation       Together  34600        1  52     FALSE
173   2452       1971 Graduation       Together  34600        1  52     FALSE
174   5621       1969 Graduation        Married  48752        1  54     FALSE
175   7373       1952        PhD       Divorced  46610        1  71     FALSE
176   5331       1977 Graduation        Married  74985        0  46     FALSE
177    263       1945        PhD         Single  45576        1  78     FALSE
178   4619       1945        PhD         Single 113734        0  78      TRUE
179    940       1987 Graduation         Single  57100        0  36     FALSE
180   6019       1971        PhD        Married  37126        1  52     FALSE
181   1463       1958 Graduation         Single  45160        0  65     FALSE
182   6424       1977 Graduation       Together  33178        0  46     FALSE
183   8233       1950     Master          Widow  64866        0  73     FALSE
184   1515       1975     Master       Together  34176        0  48     FALSE
185  10855       1968     Master         Single  50014        0  55     FALSE
186  10909       1948 Graduation        Married  92344        0  75      TRUE
187   3376       1970     Master       Divorced  55282        0  53     FALSE
188  10232       1963        PhD       Divorced  48799        0  60     FALSE
189   5547       1982        PhD        Married  84169        1  41      TRUE
190   8362       1982        PhD        Married  84169        1  41      TRUE
191   3524       1971     Master         Single  39763        1  52     FALSE
192  10095       1975        PhD       Divorced  74165        0  48     FALSE
193   8897       1965 Graduation         Single  42720        1  58     FALSE
194    466       1944 Graduation        Married  65275        0  79     FALSE
195  11025       1961 Graduation        Married  36443        0  62     FALSE
196   2387       1952     Master       Together  43776        1  71     FALSE
197   1618       1965 Graduation       Together  56046        1  58     FALSE
198     25       1958 Graduation        Married  65148        0  65     FALSE
199   3277       1955 Graduation       Divorced  49431        0  68     FALSE
200   8566       1961        PhD       Together  32583        0  62     FALSE
201   8159       1968 Graduation        Married  51287        0  55     FALSE
202   7628       1973   2n Cycle        Married  43050        0  50     FALSE
203   9597       1969 Graduation        Married  73448        0  54     FALSE
204  10150       1961 Graduation         Single  86429        1  62      TRUE
205   3885       1983        PhD        Married  33569        1  40     FALSE
206   8026       1952 Graduation        Married  62998        0  71     FALSE
207   5429       1948        PhD        Married  45579        0  75     FALSE
208    977       1957 Graduation       Together  47320        0  66     FALSE
209   2793       1976        PhD       Divorced  70179        0  47     FALSE
210   1071       1976        PhD       Divorced  70179        0  47     FALSE
211   2632       1954 Graduation        Married  50501        1  69     FALSE
212   6404       1969 Graduation       Together  58917        0  54     FALSE
213  10240       1949 Graduation       Together  69372        1  74     FALSE
214   2521       1971     Master        Married  35178        1  52     FALSE
215   4301       1971     Master        Married  35178        1  52     FALSE
216   7381       1968 Graduation       Divorced  75693        1  55     FALSE
217   2407       1982 Graduation        Married  69109        1  41     FALSE
218   9064       1982 Graduation        Married  69109        1  41     FALSE
219   5067       1994 Graduation       Together  80134        0  29      TRUE
220  10281       1970 Graduation       Divorced  64713        1  53     FALSE
221  11191       1986 Graduation       Divorced  41411        0  37     FALSE
222   2552       1955        PhD         Single  55521        1  68     FALSE
223   6720       1968     Master       Together  43795        1  55     FALSE
224   1183       1949     Master        Married  36408        0  74     FALSE
225   4186       1950 Graduation       Together  34026        0  73     FALSE
226   1419       1950 Graduation       Together  34026        0  73     FALSE
227    967       1976 Graduation        Married  46049        1  47     FALSE
228   1048       1972     Master        Married  35641        1  51     FALSE
229   9262       1984   2n Cycle       Together  32414        0  39     FALSE
230   3427       1955        PhD        Married  59821        0  68     FALSE
231   5892       1980 Graduation        Married  34968        0  43     FALSE
232   8911       1967        PhD        Married  56320        0  56     FALSE
233   6606       1969     Master        Married  70091        0  54     FALSE
234   2677       1956 Graduation       Together  46097        0  67     FALSE
235    252       1963        PhD       Divorced  41003        0  60     FALSE
236   9860       1959 Graduation       Together  44911        0  64     FALSE
237   1388       1975 Graduation         Single  33249        0  48     FALSE
238    979       1975 Graduation         Single  33249        0  48     FALSE
239   7494       1950        PhD       Divorced  42873        0  73     FALSE
240  10490       1969        PhD        Married  51039        0  54     FALSE
241   3403       1958        PhD       Together  78952        0  65     FALSE
242   4828       1954 Graduation       Divorced  79865        0  69     FALSE
243     92       1988 Graduation          Alone  34176        0  35     FALSE
244   3312       1988 Graduation         Single  34176        0  35     FALSE
245  11176       1970        PhD       Together  65968        0  53     FALSE
246   1446       1956     Master         Single  86424        0  67      TRUE
247   9699       1966 Graduation       Divorced  67272        0  57     FALSE
248   9790       1957 Graduation         Single  78499        1  66     FALSE
249   2324       1972 Graduation       Together  77044        0  51     FALSE
250   5080       1993 Graduation         Single  70515        1  30     FALSE
251   7849       1970        PhD        Married  80336        0  53      TRUE
252   7793       1976 Graduation       Together  62061        0  47     FALSE
253   6853       1982     Master         Single  75777        1  41     FALSE
254   7366       1982     Master         Single  75777        1  41     FALSE
255   9780       1971     Master       Together  71499        0  52     FALSE
256   7573       1978        PhD         Single  31626        1  45     FALSE
257   1379       1992     Master       Together  42670        0  31     FALSE
258   8923       1973 Graduation         Single  83917        1  50      TRUE
259   3547       1969     Master       Together  41021        1  54     FALSE
260   8707       1956 Graduation        Married  79456        1  67     FALSE
261   1891       1980     Master       Divorced  78789        1  43     FALSE
262   6271       1952        PhD        Married  50870        0  71     FALSE
263   9635       1983     Master        Married  35876        0  40     FALSE
264   6205       1967     Master         Single  32557        1  56     FALSE
265  10681       1970   2n Cycle        Married  62466        0  53     FALSE
266   5156       1970   2n Cycle        Married  62466        0  53     FALSE
267   3050       1966 Graduation        Married  54198        0  57     FALSE
268   8164       1978        PhD        Married  82170        0  45      TRUE
269   5626       1964        PhD         Single  61798        0  59     FALSE
270   6406       1988     Master        Married  78285        0  35     FALSE
271   7002       1955 Graduation         Single  62535        0  68     FALSE
272   6116       1968   2n Cycle        Married  48985        0  55     FALSE
273    291       1970 Graduation        Married  72940        0  53     FALSE
274   8779       1985   2n Cycle        Married  36145        1  38     FALSE
275   4931       1977 Graduation       Together 157146        0  46      TRUE
276   1650       1960     Master        Married  81843        0  63      TRUE
277   9701       1988 Graduation       Together  41883        0  35     FALSE
278   6431       1964        PhD        Married  45759        0  59     FALSE
279  10789       1964        PhD        Married  45759        0  59     FALSE
280   5302       1986 Graduation       Together  78394        1  37     FALSE
281   4459       1989 Graduation         Single  30279        0  34     FALSE
282  10642       1989 Graduation         Single  30279        0  34     FALSE
283   9213       1970 Graduation          Widow  31880        0  53     FALSE
284   3678       1973 Graduation          Widow  60208        1  50     FALSE
285   3698       1983 Graduation       Together  78687        1  40     FALSE
286   5929       1973        PhD        Married  37401        0  50     FALSE
287  10795       1973        PhD        Married  37401        0  50     FALSE
288   4390       1954 Graduation       Together  75315        0  69     FALSE
289   9362       1965 Graduation         Single  69263        0  58     FALSE
290   1577       1946 Graduation        Married  78569        1  77     FALSE
291   4609       1966        PhD        Married  57705        0  57     FALSE
292   7143       1955   2n Cycle       Together  74805        0  68     FALSE
293   1729       1961        PhD       Together  66426        0  62     FALSE
294  10664       1949     Master          Widow  51529        0  74     FALSE
295  10507       1977   2n Cycle       Divorced  59601        0  46     FALSE
296   6982       1976 Graduation        Married  74068        0  47     FALSE
297   7042       1983 Graduation        Married  36790        1  40     FALSE
298   4099       1972 Graduation        Married  30675        0  51     FALSE
299   5031       1974 Graduation       Together  83145        1  49      TRUE
300   1970       1968     Master       Together  34053        0  55     FALSE
301   5726       1983     Master         Single  31788        0  40     FALSE
302   5231       1974   2n Cycle        Married  45894        0  49     FALSE
303   1307       1978 Graduation       Divorced  41986        0  45     FALSE
304  10609       1962        PhD        Married  42769        0  61     FALSE
305   5782       1982   2n Cycle       Together  58582        0  41     FALSE
306   7533       1964 Graduation        Married  49096        0  59     FALSE
307   9493       1980        PhD         Single  76412        1  43     FALSE
308   7393       1978 Graduation       Together  41580        0  45     FALSE
309   4713       1979        PhD        Married  31605        0  44     FALSE
310   3766       1959     Master          Widow  33051        1  64     FALSE
311   8933       1983   2n Cycle        Married  32146        0  40     FALSE
312   9289       1979 Graduation        Married  36781        1  44     FALSE
313   2613       1960     Master        Married  54197        0  63     FALSE
314  10133       1970 Graduation         Single  93790        1  53      TRUE
315  10796       1984     Master        Married  30477        0  39     FALSE
316   3388       1967 Graduation       Divorced  70844        0  56     FALSE
317   6507       1980 Graduation         Single  30828        0  43     FALSE
318   7446       1967     Master       Together  62513        0  56     FALSE
319  10477       1973        PhD       Together  39435        0  50     FALSE
320   6072       1970     Master         Single  75345        1  53     FALSE
321    247       1971 Graduation        Married  36715        1  52     FALSE
322   9463       1959 Graduation       Together  71706        0  64     FALSE
323   1459       1966        PhD        Married  69063        0  57     FALSE
324   9653       1975 Graduation        Married  35797        0  48     FALSE
325  10785       1969 Graduation        Married  44078        0  54     FALSE
326  10146       1972        PhD       Together  38887        0  51     FALSE
327   4741       1974   2n Cycle        Married  65463        0  49     FALSE
328   1880       1959        PhD       Together  53537        0  64     FALSE
329   6471       1971     Master         Single  36230        0  52     FALSE
330   5718       1950 Graduation        Married  80763        1  73      TRUE
331   3478       1971        PhD        Married  60585        1  52     FALSE
332   7848       1974 Graduation         Single  49166        0  49     FALSE
333   7999       1955        PhD       Together  75261        1  68     FALSE
334  11101       1991 Graduation       Together  89891        0  32      TRUE
335   9212       1962     Master        Married  72828        0  61     FALSE
336  10983       1952 Graduation       Together  75278        0  71     FALSE
337   3629       1978 Graduation         Single  38557        0  45     FALSE
338   4673       1963        PhD        Married  81300        1  60      TRUE
339    796       1965   2n Cycle       Divorced  60161        0  58     FALSE
340    618       1977        PhD        Married  69389        0  46     FALSE
341    380       1954 Graduation       Divorced  64497        1  69     FALSE
342   1092       1980 Graduation        Married  61014        0  43     FALSE
343   8962       1975     Master        Married  44319        0  48     FALSE
344   8207       1957   2n Cycle        Married  53233        0  66     FALSE
345   6521       1954 Graduation       Together  77972        0  69     FALSE
346    535       1987 Graduation       Divorced  81361        0  36      TRUE
347   4608       1987 Graduation       Divorced  81361        1  36      TRUE
348   1064       1971        PhD        Married  42403        0  52     FALSE
349   7000       1972   2n Cycle         Single  65704        0  51     FALSE
350   1581       1980 Graduation        Married  37406        1  43     FALSE
351   7384       1951     Master       Together  39767        0  72     FALSE
352  10552       1979   2n Cycle        Married  54210        0  44     FALSE
353   6409       1967 Graduation       Divorced  57136        1  56     FALSE
354   9507       1975 Graduation        Married  40794        0  48     FALSE
355   9560       1965 Graduation       Together  83003        1  58      TRUE
356  10991       1960     Master        Married  89058        0  63      TRUE
357  11056       1974 Graduation        Married  72099        0  49     FALSE
358   7414       1971 Graduation        Married  43824        0  52     FALSE
359   3076       1975 Graduation       Together  66653        0  48     FALSE
360   6355       1978 Graduation        Married  44359        0  45     FALSE
361   7959       1961 Graduation        Married  79410        0  62     FALSE
362   5512       1977     Master        Married  55842        0  46     FALSE
363  10102       1966 Graduation          Widow  79946        0  57     FALSE
364   9369       1979   2n Cycle         Single  88194        1  44      TRUE
365   3711       1944     Master        Married  80184        0  79      TRUE
366   6931       1967 Graduation       Divorced  76982        1  56     FALSE
367   9596       1980        PhD         Single  65295        0  43     FALSE
368   2727       1973 Graduation       Together  57100        0  50     FALSE
369   3967       1971        PhD        Married  78931        0  52     FALSE
370   2162       1976 Graduation        Married  56939        0  47     FALSE
371   9242       1990 Graduation         Single  64509        1  33     FALSE
372  10595       1990 Graduation        Married  30093        0  33     FALSE
373   4855       1974        PhD       Together  30351        1  49     FALSE
374   5049       1974        PhD       Together  30351        0  49     FALSE
375   4967       1960        PhD       Together  38201        0  63     FALSE
376   9215       1980        PhD        Married  43974        0  43     FALSE
377   3525       1970 Graduation       Together  38200        0  53     FALSE
378   3619       1960   2n Cycle       Divorced  87305        1  63      TRUE
379   5313       1971     Master        Married  38196        0  52     FALSE
380   7196       1950        PhD        Married  41145        0  73     FALSE
381   1381       1982        PhD         Single  38513        1  41     FALSE
382  10951       1968 Graduation        Married  45688        0  55     FALSE
383   4322       1958        PhD       Together  77863        0  65     FALSE
384   7444       1969     Master        Married  42169        0  54     FALSE
385   2942       1964 Graduation         Single  45906        0  59     FALSE
386   2874       1988   2n Cycle       Divorced  35388        0  35     FALSE
387   3667       1969 Graduation        Married  80952        1  54      TRUE
388   3697       1954 Graduation       Together  39898        0  69     FALSE
389   9955       1954 Graduation       Together  39898        0  69     FALSE
390   5320       1973     Master       Divorced  44051        1  50     FALSE
391   6422       1954 Graduation        Married  86718        0  69      TRUE
392   3690       1986     Master        Married  80141        1  37      TRUE
393   2408       1976 Graduation        Married  58597        0  47     FALSE
394   9260       1945        PhD        Married  70356        0  78     FALSE
395   9648       1967 Graduation         Single  46904        0  56     FALSE
396   4939       1946 Graduation       Together  37760        0  77     FALSE
397   8652       1946 Graduation       Together  37760        0  77     FALSE
398   4702       1964 Graduation         Single  61839        0  59     FALSE
399   2811       1963        PhD         Single  48918        0  60     FALSE
400   9150       1963        PhD         Single  48918        0  60     FALSE
401  10127       1965 Graduation        Married  58692        0  58     FALSE
402   5493       1976 Graduation        Married  39356        0  47     FALSE
403   2666       1972     Master        Married  76234        0  51     FALSE
404  10099       1984 Graduation        Married  55434        0  39     FALSE
405  10562       1946     Master        Married  66835        0  77     FALSE
406   7881       1946     Master        Married  66835        0  77     FALSE
407   6721       1951 Graduation        Married  71965        0  72     FALSE
408   5204       1971 Graduation       Together  74538        1  52     FALSE
409   5209       1954 Graduation       Divorced  50002        0  69     FALSE
410  10128       1958 Graduation       Together  53977        0  65     FALSE
411   9284       1958 Graduation       Together  53977        0  65     FALSE
412   8643       1971 Graduation       Together  69930        0  52     FALSE
413   1685       1967        PhD       Together  62981        0  56     FALSE
414   2877       1974     Master       Together  46014        0  49     FALSE
415   6233       1976 Graduation        Married  65991        0  47     FALSE
416    195       1972 Graduation         Single  38808        1  51     FALSE
417   1501       1982        PhD        Married 160803        0  41      TRUE
418  10846       1978     Master        Married  43783        0  45     FALSE
419   8341       1969        PhD        Married  30396        1  54     FALSE
420  10766       1964        PhD        Married  65526        0  59     FALSE
421   9971       1964        PhD        Married  65526        0  59     FALSE
422   1740       1944 Graduation        Married  55956        0  79     FALSE
423   8737       1978 Graduation       Divorced  55563        0  45     FALSE
424   6466       1965        PhD        Married  57236        0  58     FALSE
425  10430       1973 Graduation       Divorced  89694        0  50      TRUE
426   8773       1971     Master       Together  57420        0  52     FALSE
427   2371       1972 Graduation        Married  33622        0  51     FALSE
428   4088       1962        PhD       Together  31497        0  61     FALSE
429   4971       1962        PhD       Together  31497        0  61     FALSE
430  10560       1980        PhD         Single  36802        0  43     FALSE
431   6892       1968 Graduation       Divorced  61671        0  55     FALSE
432  11004       1893   2n Cycle         Single  60182        0 130     FALSE
433   9485       1986        PhD        Married  45921        0  37     FALSE
434   4248       1960     Master         Single  98777        0  63      TRUE
435   7451       1960     Master         Single  98777        0  63      TRUE
436   7861       1952     Master        Married  77027        0  71     FALSE
437   5232       1965 Graduation        Married  69139        0  58     FALSE
438   3011       1965 Graduation        Married  69139        0  58     FALSE
439   5758       1982 Graduation        Married  65169        1  41     FALSE
440   2173       1952 Graduation          Widow  40049        0  71     FALSE
441  10711       1945 Graduation        Married  69755        0  78     FALSE
442   2782       1961        PhD        Married  54456        0  62     FALSE
443   9432       1977 Graduation       Together 666666        0  46      TRUE
444   5872       1951 Graduation         Single  60689        0  72     FALSE
445   1802       1971 Graduation        Married  64795        0  52     FALSE
446   1162       1987        PhD         Single  42000        1  36     FALSE
447  10643       1987        PhD         Single  42000        1  36     FALSE
448  11112       1966 Graduation       Together  70713        0  57     FALSE
449   2114       1946        PhD         Single  82800        1  77      TRUE
450   4261       1946        PhD         Single  82800        1  77      TRUE
451   2457       1975      Basic        Married  30801        0  48     FALSE
452   2495       1974     Master        Married  83891        0  49      TRUE
453   6983       1950     Master       Divorced  38054        0  73     FALSE
454   7505       1957        PhD        Married  44155        0  66     FALSE
455   4286       1970        PhD         Single  57642        0  53     FALSE
456   7224       1977 Graduation        Married  31353        0  46     FALSE
457   6215       1977 Graduation        Married  31353        1  46     FALSE
458    968       1968     Master       Divorced  41335        0  55     FALSE
459   4096       1968     Master       Divorced  41335        0  55     FALSE
460   3153       1957        PhD         Single  40737        0  66     FALSE
461   5329       1949        PhD       Divorced  35946        0  74     FALSE
462   1175       1983     Master        Married  36262        1  40     FALSE
463   1377       1954     Master          Widow  44551        0  69     FALSE
464   4607       1959 Graduation       Together  71367        0  64     FALSE
465   4944       1959 Graduation       Together  71367        0  64     FALSE
466   9483       1959 Graduation       Together  57957        0  64     FALSE
467   1378       1972   2n Cycle       Together  50334        0  51     FALSE
468   5991       1949     Master        Married  48150        0  74     FALSE
469   2807       1969 Graduation        Married  56796        0  54     FALSE
470   1052       1969 Graduation        Married  56796        0  54     FALSE
471   9760       1963        PhD          Widow  52278        1  60     FALSE
472   7101       1963        PhD          Widow  52278        0  60     FALSE
473   5907       1952     Master        Married  33444        0  71     FALSE
474   8832       1976     Master       Together  37509        0  47     FALSE
475   2535       1978     Master        Married  88097        1  45      TRUE
476   1523       1973 Graduation        Married  59041        0  50     FALSE
477   1839       1974 Graduation         Single  43322        0  49     FALSE
478   9972       1955        PhD       Together  46015        0  68     FALSE
479   2945       1955        PhD       Together  46015        0  68     FALSE
480   9291       1959     Master        Married  34242        0  64     FALSE
481   2829       1955 Graduation        Married  65210        0  68     FALSE
482   8594       1958        PhD          Widow  50520        0  65     FALSE
483   1592       1970 Graduation        Married  90765        0  53      TRUE
484   4310       1944 Graduation        Married  80589        1  79      TRUE
485   6950       1958     Master        Married  49572        0  65     FALSE
486   8492       1978 Graduation       Together  75437        0  45     FALSE
487   5684       1971     Master       Divorced  44635        0  52     FALSE
488   5909       1964 Graduation        Married  58512        0  59     FALSE
489   9855       1952        PhD         Single  62000        0  71     FALSE
490    975       1956 Graduation         Single  54252        0  67     FALSE
491   8754       1974        PhD       Together  45068        0  49     FALSE
492   1456       1979 Graduation         Single  60474        0  44     FALSE
493   2849       1979 Graduation         Single  60474        0  44     FALSE
494   9984       1981   2n Cycle        Married  56337        1  42     FALSE
495   5628       1982 Graduation       Together  61416        0  41     FALSE
496   7627       1975     Master        Married  92163        1  48      TRUE
497   1351       1956     Master       Together  58656        0  67     FALSE
498  10196       1978 Graduation        Married  71427        0  45     FALSE
499   1542       1975 Graduation         Single  56243        0  48     FALSE
500   4220       1970        PhD        Married  59892        0  53     FALSE
501   4141       1965 Graduation       Together  71613        0  58     FALSE
502   1506       1975 Graduation         Single  42160        1  48     FALSE
503   1361       1974     Master        Married  82584        1  49      TRUE
504   9422       1989 Graduation        Married  38360        0  34     FALSE
505   1081       1957        PhD        Married  75283        0  66     FALSE
506   7458       1956     Master       Together  34941        0  67     FALSE
507   1012       1952 Graduation         Single  61823        0  71     FALSE
508   5453       1956     Master        Married  90226        0  67      TRUE
509   6818       1974 Graduation        Married  44989        0  49     FALSE
510   7807       1974 Graduation        Married  44989        0  49     FALSE
511   7532       1980 Graduation        Married  43586        0  43     FALSE
512   8346       1974 Graduation         Single  32233        1  49     FALSE
513   5564       1969 Graduation       Together  62882        0  54     FALSE
514   3267       1963     Master       Together  57288        0  60     FALSE
515   3091       1981   2n Cycle       Together  75774        0  42     FALSE
516    762       1981   2n Cycle       Together  75774        0  42     FALSE
517   8029       1988     Master         Single  90247        1  35      TRUE
518   4376       1960   2n Cycle         Single  32218        1  63     FALSE
519  10981       1988 Graduation        Married  84219        0  35      TRUE
520    486       1988 Graduation        Married  84219        0  35      TRUE
521   1158       1966 Graduation       Divorced  48877        0  57     FALSE
522   9119       1950 Graduation       Together  60905        0  73     FALSE
523   6694       1964 Graduation        Married  75236        0  59     FALSE
524  10573       1953 Graduation       Divorced  62551        0  70     FALSE
525  10140       1983        PhD       Together  70123        0  40     FALSE
526   2286       1962 Graduation         Single  50785        0  61     FALSE
527   1029       1970        PhD       Together  64413        0  53     FALSE
528   4207       1981        PhD        Married  87171        0  42      TRUE
529  10277       1961 Graduation         Single  30081        0  62     FALSE
530   6281       1966 Graduation       Divorced  55686        0  57     FALSE
531   2574       1977        PhD        Married  61996        1  46     FALSE
532    709       1952 Graduation       Divorced  51537        0  71     FALSE
533   5955       1962 Graduation       Together  72025        0  61     FALSE
534   8486       1971     Master       Together  30538        0  52     FALSE
535  10343       1991   2n Cycle         Single  61618        0  32     FALSE
536   6652       1965 Graduation        Married  77343        0  58     FALSE
537   8746       1989 Graduation        Married  75433        0  34     FALSE
538   4686       1962        PhD          Widow  82571        0  61      TRUE
539   3551       1954     Master       Together  60033        0  69     FALSE
540   4338       1983 Graduation         Single  39062        0  40     FALSE
541   4444       1972 Graduation        Married  30023        0  51     FALSE
542    498       1970 Graduation         Single  30015        0  53     FALSE
543   8230       1980 Graduation        Married  33228        0  43     FALSE
544   7352       1957 Graduation        Married  55267        0  66     FALSE
545  10928       1958 Graduation       Together  66886        0  65     FALSE
546  10736       1971 Graduation         Single  72258        0  52     FALSE
547  10163       1984        PhD         Single  82733        1  39      TRUE
548   6168       1963 Graduation       Divorced  45146        0  60     FALSE
549   4656       1990   2n Cycle         Single  51250        0  33     FALSE
550    626       1951 Graduation        Married  32871        0  72     FALSE
551   3870       1978   2n Cycle       Together  63855        0  45     FALSE
552   6299       1968        PhD       Divorced  42564        1  55     FALSE
553   7798       1972   2n Cycle       Together  46344        0  51     FALSE
554   9973       1963 Graduation        Married  50437        0  60     FALSE
555   4299       1960 Graduation       Together  70971        1  63     FALSE
556  10971       1977 Graduation         Single  37774        1  46     FALSE
557   6679       1966 Graduation         Single  33279        0  57     FALSE
558   5961       1978 Graduation        Married  42693        0  45     FALSE
559   6255       1952     Master       Together  70545        0  71     FALSE
560   8614       1957 Graduation          Widow  65486        0  66     FALSE
561   7828       1981     Master       Together  77882        0  42     FALSE
562   1277       1960 Graduation       Together  78468        0  63     FALSE
563   3595       1963 Graduation       Together  77226        0  60     FALSE
564   5735       1991     Master         Single  90638        0  32      TRUE
565   5350       1991     Master         Single  90638        1  32      TRUE
566   4137       1948 Graduation       Together  70666        0  75     FALSE
567   6357       1959   2n Cycle       Divorced  59052        0  64     FALSE
568   3578       1949 Graduation       Divorced  49160        0  74     FALSE
569  10524       1963     Master       Divorced  49476        0  60     FALSE
570   1518       1965     Master        Married  62694        0  58     FALSE
571   2036       1973        PhD       Together  57906        0  50     FALSE
572   9495       1982 Graduation       Together  71853        0  41     FALSE
573   2631       1982 Graduation       Together  71853        0  41     FALSE
574   6312       1959 Graduation        Married  65031        0  64     FALSE
575    615       1960 Graduation       Together  30507        0  63     FALSE
576   4406       1970 Graduation       Together  67419        0  53     FALSE
577  10061       1950 Graduation        Married  59462        0  73     FALSE
578  10619       1994 Graduation         Single  95529        1  29      TRUE
579   4945       1953 Graduation          Widow  53653        0  70     FALSE
580   7922       1951        PhD         Single  64950        0  72     FALSE
581  10699       1985 Graduation        Married  44322        0  38     FALSE
582   7516       1983 Graduation        Married  30096        0  40     FALSE
583   3129       1983 Graduation        Married  30096        0  40     FALSE
584   5121       1977 Graduation         Single  56628        0  46     FALSE
585   2186       1977   2n Cycle       Together  82326        1  46      TRUE
586  10548       1995 Graduation         Single  71163        0  28     FALSE
587   6384       1978 Graduation       Divorced  71022        0  45     FALSE
588   2625       1954   2n Cycle         Single  42607        0  69     FALSE
589   1676       1975 Graduation        Married  43057        0  48     FALSE
590   5534       1975     Master        Married  47808        0  48     FALSE
591    271       1969 Graduation          Widow  40590        0  54     FALSE
592   7699       1969 Graduation          Widow  40590        0  54     FALSE
593   7832       1959     Master        Married  77520        1  64     FALSE
594    938       1981 Graduation        Married  40211        0  42     FALSE
595   7873       1973        PhD       Together  63516        0  50     FALSE
596   9967       1974 Graduation       Divorced  53034        0  49     FALSE
597   8314       1982 Graduation        Married  79908        0  41     FALSE
598   3762       1986        PhD         Single  69867        1  37     FALSE
599  10383       1966 Graduation       Divorced  70287        1  57     FALSE
600   6798       1966 Graduation         Single  37070        1  57     FALSE
601   4168       1966 Graduation         Single  37070        1  57     FALSE
602   6690       1966     Master        Married  38179        0  57     FALSE
603  10602       1983 Graduation        Married  39922        0  40     FALSE
604   3220       1983 Graduation        Married  39922        0  40     FALSE
605   5424       1983 Graduation        Married  39922        0  40     FALSE
606   7488       1963     Master         Single  64191        0  60     FALSE
607   5289       1975   2n Cycle         Single  41658        0  48     FALSE
608    347       1976 Graduation       Divorced  40780        0  47     FALSE
609   5236       1979 Graduation       Together  77568        0  44     FALSE
610   9478       1985 Graduation         Single  66503        0  38     FALSE
611    477       1986 Graduation        Married  83512        1  37      TRUE
612   7411       1964        PhD        Married  31686        0  59     FALSE
613   3107       1976 Graduation       Together  71322        0  47     FALSE
614   3790       1956 Graduation       Together  34633        0  67     FALSE
615    749       1981 Graduation       Together  42162        1  42     FALSE
616   1503       1976        PhD       Together 162397        0  47      TRUE
617   8650       1978 Graduation          Widow  54162        0  45     FALSE
618    607       1955   2n Cycle       Divorced  41769        0  68     FALSE
619   1008       1981        PhD       Together  44953        0  42     FALSE
620   9396       1978        PhD        Married  37717        0  45     FALSE
621    933       1978        PhD        Married  37717        0  45     FALSE
622   5710       1970 Graduation       Together  40548        0  53     FALSE
623   2882       1975   2n Cycle       Divorced  67893        0  48     FALSE
624   2379       1953 Graduation         Single  69267        1  70     FALSE
625   3262       1958 Graduation         Single  68281        1  65     FALSE
626   5832       1960   2n Cycle       Together  92556        0  63      TRUE
627   5025       1979 Graduation         Single  48526        0  44     FALSE
628    569       1991 Graduation         Single  90273        1  32      TRUE
629   9449       1958        PhD         Single  79761        0  65     FALSE
630   8104       1951        PhD        Married  53312        0  72     FALSE
631     75       1982   2n Cycle       Together  41039        0  41     FALSE
632   6421       1961 Graduation       Together  88347        0  62      TRUE
633   3037       1983        PhD        Married  50150        0  40     FALSE
634   4698       1983        PhD        Married  50150        0  40     FALSE
635   6177       1985        PhD        Married  33454        0  38     FALSE
636   3517       1952 Graduation         Single  40887        1  71     FALSE
637   3491       1975 Graduation       Together  55914        0  48     FALSE
638   7610       1983 Graduation       Together  37292        0  40     FALSE
639   4377       1971 Graduation        Married  52914        0  52     FALSE
640   5544       1970 Graduation         Single  67384        0  53     FALSE
641   6497       1960 Graduation        Married  51651        0  63     FALSE
642   4543       1980 Graduation        Married  82497        0  43      TRUE
643   5117       1963   2n Cycle        Married  32632        0  60     FALSE
644   1448       1963     Master        Married  33562        0  60     FALSE
645   6887       1967 Graduation         Single  79146        0  56     FALSE
646   7500       1967 Graduation         Single  79146        0  56     FALSE
647   2724       1981     Master         Single  36143        0  42     FALSE
648   1100       1960     Master       Together  41275        0  63     FALSE
649   7725       1965   2n Cycle        Married  76800        0  58     FALSE
650   2612       1987 Graduation        Married  75794        0  36     FALSE
651    113       1951 Graduation        Married  30833        0  72     FALSE
652   4216       1981 Graduation         Single  91065        1  42      TRUE
653    199       1962     Master         Single  45183        0  61     FALSE
654    359       1950 Graduation       Together  48070        0  73     FALSE
655   8842       1971 Graduation          Widow  30372        0  52     FALSE
656   2154       1971 Graduation          Widow  30372        0  52     FALSE
657   6050       1975   2n Cycle        Married  57036        0  48     FALSE
658   9204       1970 Graduation          Widow  66731        0  53     FALSE
659   4472       1970        PhD       Divorced  35682        0  53     FALSE
660   3924       1965        PhD       Divorced  57912        0  58     FALSE
661   5654       1972 Graduation        Married  36026        0  51     FALSE
662   9216       1971 Graduation        Married  35788        0  52     FALSE
663   8086       1959 Graduation        Married  42243        0  64     FALSE
664   9097       1956 Graduation       Divorced  46086        0  67     FALSE
665   7631       1978     Master       Together  61346        0  45     FALSE
666   7275       1971     Master         Single  33316        0  52     FALSE
667   8334       1971     Master         Single  33316        0  52     FALSE
668   2281       1970 Graduation         Single  33697        0  53     FALSE
669   2797       1977 Graduation        Married  72117        0  46     FALSE
670   3934       1966 Graduation        Married  61286        0  57     FALSE
671   2493       1966 Graduation        Married  61286        0  57     FALSE
672   3759       1958 Graduation       Together  65196        0  65     FALSE
673    965       1971 Graduation       Divorced  55635        0  52     FALSE
674   7378       1981     Master       Together  42021        0  42     FALSE
675   1859       1972     Master        Married  75251        1  51     FALSE
676   6263       1968 Graduation       Together  35322        0  55     FALSE
677   2072       1969        PhD       Together  53374        1  54     FALSE
678   8908       1959 Graduation        Married  87195        1  64      TRUE
679    738       1981   2n Cycle         Single  42395        0  42     FALSE
680  10129       1966 Graduation       Together  82427        0  57      TRUE
681    807       1969     Master       Together  44602        0  54     FALSE
682   3334       1951 Graduation        Married  94642        0  72      TRUE
683   4426       1975 Graduation         Single  55801        0  48     FALSE
684  10489       1973 Graduation        Married  92955        1  50      TRUE
685   2570       1968 Graduation       Together  56534        1  55     FALSE
686   3834       1962 Graduation         Single  69627        0  61     FALSE
687    590       1970     Master       Divorced  78579        1  53     FALSE
688   4791       1980 Graduation       Together  44964        0  43     FALSE
689   5304       1974        PhD         Single  30899        0  49     FALSE
690   2426       1964        PhD       Divorced  78825        1  59     FALSE
691   8041       1971        PhD          Widow  47111        0  52     FALSE
692   3584       1955        PhD         Single  49667        1  68     FALSE
693   7718       1947     Master       Together  66000        0  76     FALSE
694   8605       1964        PhD       Together  46910        0  59     FALSE
695   9206       1968 Graduation       Together  77382        0  55     FALSE
696   6885       1977 Graduation       Divorced  32952        0  46     FALSE
697    907       1975 Graduation        Married  46149        0  48     FALSE
698   1150       1899        PhD       Together  83532        0 124      TRUE
699   3867       1947        PhD       Together  73059        0  76     FALSE
700   3859       1947        PhD       Together  73059        0  76     FALSE
701   3265       1959 Graduation        Married  35701        0  64     FALSE
702   4418       1983     Master         Single  89616        1  40      TRUE
703   4611       1970 Graduation       Together 105471        1  53      TRUE
704   4530       1948     Master          Widow  78427        1  75     FALSE
705   9949       1976 Graduation        Married  59809        0  47     FALSE
706    942       1982 Graduation         Single  39660        1  41     FALSE
707   6181       1950   2n Cycle       Together  52203        0  73     FALSE
708   7660       1973        PhD          Alone  35860        1  50     FALSE
709   2055       1973        PhD       Divorced  35860        0  50     FALSE
710   5107       1973        PhD       Divorced  35860        0  50     FALSE
711   1626       1973        PhD       Divorced  35860        1  50     FALSE
712   6428       1950        PhD          Widow  76842        0  73     FALSE
713   4339       1970        PhD        Married  67353        0  53     FALSE
714   8527       1965     Master       Together  65735        0  58     FALSE
715   1968       1971 Graduation          Widow  45684        0  52     FALSE
716  11075       1978 Graduation        Married  51267        0  45     FALSE
717   6658       1972 Graduation       Together  59868        0  51     FALSE
718   4552       1991 Graduation        Married  51373        0  32     FALSE
719  10377       1958     Master       Together  46692        0  65     FALSE
720   5336       1971     Master       Together 157733        0  52      TRUE
721  10350       1950        PhD        Married  54432        0  73     FALSE
722  11071       1984 Graduation         Single  79607        1  39     FALSE
723  11100       1972 Graduation       Divorced  51813        0  51     FALSE
724   1734       1968        PhD       Together  40706        0  55     FALSE
725   2131       1959        PhD       Divorced  62859        0  64     FALSE
726   6439       1958 Graduation        Married  61074        0  65     FALSE
727  10591       1969 Graduation          Widow  43638        0  54     FALSE
728   9797       1956 Graduation        Married  58116        0  67     FALSE
729   9336       1969        PhD          Widow  62187        0  54     FALSE
730   2174       1954 Graduation         Single  46344        0  69     FALSE
731   3197       1980 Graduation        Married  77353        0  43     FALSE
732   9185       1966        PhD         Single  69759        1  57     FALSE
733  10858       1975 Graduation       Together  76532        0  48     FALSE
734   8925       1965     Master        Married  70053        0  58     FALSE
735   2499       1958   2n Cycle         Single  75342        0  65     FALSE
736    326       1973 Graduation        Married  51148        0  50     FALSE
737  10967       1963 Graduation       Divorced  33378        0  60     FALSE
738   5370       1973        PhD        Married  32644        0  50     FALSE
739   2098       1969        PhD        Married  33581        0  54     FALSE
740   5036       1984        PhD         Single  42710        0  39     FALSE
741   4856       1957   2n Cycle        Married  82347        0  66      TRUE
742   8722       1957   2n Cycle        Married  82347        1  66      TRUE
743  10151       1960 Graduation       Divorced  62204        0  63     FALSE
744  10473       1956        PhD          Widow  78028        1  67     FALSE
745   7079       1962 Graduation       Divorced  63887        0  61     FALSE
746   6875       1965        PhD       Together  32727        0  58     FALSE
747   2471       1965 Graduation        Married  61482        0  58     FALSE
748   6387       1976        PhD       Together  52190        0  47     FALSE
749   5866       1974 Graduation       Together  48186        0  49     FALSE
750   7901       1971     Master        Married  34109        0  52     FALSE
751  10242       1966        PhD       Together  47472        0  57     FALSE
752   4201       1962 Graduation         Single  57967        0  61     FALSE
753   5092       1949        PhD          Widow  51569        1  74     FALSE
754   6566       1954        PhD        Married  72550        0  69     FALSE
755   6613       1970     Master        Married  44511        0  53     FALSE
756   9094       1955   2n Cycle        Married  62972        1  68     FALSE
757   9847       1955   2n Cycle        Married  62972        0  68     FALSE
758  10767       1989        PhD       Together  77845        0  34     FALSE
759   7943       1975        PhD        Married  36663        0  48     FALSE
760   1055       1976     Master        Married  53204        0  47     FALSE
761   8402       1953     Master        Married  67087        0  70     FALSE
762   6246       1953 Graduation         Single  73892        1  70     FALSE
763   4654       1992 Graduation       Together  75114        0  31     FALSE
764   6103       1948 Graduation        Married  42192        0  75     FALSE
765   8147       1960 Graduation        Married  31454        0  63     FALSE
766  10219       1972 Graduation       Together  31590        0  51     FALSE
767   2176       1972 Graduation        Married  80134        1  51      TRUE
768   9121       1972 Graduation        Married  80134        1  51      TRUE
769    178       1956 Graduation        Married  62503        0  67     FALSE
770   2308       1954 Graduation        Married  46734        0  69     FALSE
771   7431       1991        PhD         Single  68126        1  32     FALSE
772   9405       1954        PhD        Married  52869        1  69     FALSE
773   7503       1976 Graduation         Single  75825        1  47     FALSE
774   8783       1950 Graduation        Married  57045        0  73     FALSE
775   1403       1975   2n Cycle       Together  34984        0  48     FALSE
776   3463       1975        PhD        Married  69283        0  48     FALSE
777   7010       1965   2n Cycle        Married  70924        0  58     FALSE
778   4767       1965   2n Cycle        Married  70924        0  58     FALSE
779   1927       1973   2n Cycle       Together  69401        0  50     FALSE
780    437       1976     Master       Divorced  75012        0  47     FALSE
781   4331       1978     Master       Together  85738        0  45      TRUE
782   4084       1975 Graduation       Together  60934        0  48     FALSE
783   9750       1961        PhD       Divorced  64325        0  62     FALSE
784  10581       1977 Graduation        Married  41124        0  46     FALSE
785   3710       1984        PhD         Single  39684        1  39     FALSE
786   5207       1963        PhD        Married  53378        1  60     FALSE
787   9360       1982 Graduation        Married  37040        0  41     FALSE
788   4679       1977     Master        Married  78710        0  46     FALSE
789   1340       1986 Graduation        Married  92910        0  37      TRUE
790  10839       1976 Graduation       Together  36283        0  47     FALSE
791   5303       1974        PhD       Together  79632        0  49     FALSE
792  10469       1981 Graduation       Together  88325        0  42      TRUE
793   3602       1958     Master        Married  51412        0  65     FALSE
794   4756       1952   2n Cycle       Divorced  63998        1  71     FALSE
795   8181       1978   2n Cycle         Single  38593        0  45     FALSE
796  10856       1980   2n Cycle         Single  45889        0  43     FALSE
797   3321       1967        PhD       Together  56575        0  56     FALSE
798    433       1958     Master          Alone  61331        0  65     FALSE
799   6320       1976     Master         Single  70893        0  47     FALSE
800   1867       1957 Graduation         Single  64849        1  66     FALSE
801   4324       1989 Graduation        Married  42387        0  34     FALSE
802   3661       1995   2n Cycle         Single  80617        0  28      TRUE
803    521       1985 Graduation       Together  54006        0  38     FALSE
804   7186       1966        PhD       Together  30843        0  57     FALSE
805   4394       1965        PhD        Married  81051        0  58      TRUE
806   1717       1988 Graduation         Single  39747        0  35     FALSE
807   1016       1959        PhD         Single  34554        0  64     FALSE
808   3783       1959        PhD        Married  52854        0  64     FALSE
809   5848       1970 Graduation       Together  81205        1  53      TRUE
810  10727       1970        PhD        Married  69084        0  53     FALSE
811   5299       1970        PhD        Married  69084        0  53     FALSE
812   6872       1974        PhD        Married  65352        0  49     FALSE
813  10381       1979 Graduation         Single  47691        0  44     FALSE
814   9145       1972 Graduation         Single  72504        0  51     FALSE
815   5267       1970 Graduation       Divorced  33986        0  53     FALSE
816   9738       1986     Master       Together  42386        0  37     FALSE
817  10212       1986     Master       Together  42386        0  37     FALSE
818  10010       1953        PhD       Divorced  36957        1  70     FALSE
819   2694       1967 Graduation        Married  42664        0  56     FALSE
820  10613       1958        PhD       Together  37334        0  65     FALSE
821   4646       1951   2n Cycle        Married  78497        0  72     FALSE
822   6935       1951   2n Cycle        Married  78497        0  72     FALSE
823   5596       1956   2n Cycle       Together  58821        0  67     FALSE
824   1044       1953 Graduation       Together  58398        0  70     FALSE
825   9274       1961     Master        Married  80950        0  62      TRUE
826   9076       1980        PhD        Married  30732        0  43     FALSE
827   4947       1966   2n Cycle         Single  89572        1  57      TRUE
828  10176       1968 Graduation         Single  57107        1  55     FALSE
829   3507       1970 Graduation         Single  76467        1  53     FALSE
830  10341       1948 Graduation       Together  51315        0  75     FALSE
831   2639       1966 Graduation         Single  43602        0  57     FALSE
832   6201       1978 Graduation         Single  38643        0  45     FALSE
833   7397       1951 Graduation         Single  49090        0  72     FALSE
834   2181       1970 Graduation        Married  70617        0  53     FALSE
835   1204       1970        PhD        Married  67536        0  53     FALSE
836   4690       1953 Graduation        Married  50725        0  70     FALSE
837  10821       1978 Graduation        Married  57113        0  45     FALSE
838   6543       1945     Master       Together  62847        0  78     FALSE
839   7119       1982 Graduation         Single  68627        0  41     FALSE
840   1245       1966 Graduation         Single  63810        0  57     FALSE
841   2561       1966 Graduation         Single  63810        0  57     FALSE
842   9624       1958        PhD       Together  65488        0  65     FALSE
843  10509       1955     Master         Single  36927        0  68     FALSE
844   7875       1949 Graduation        Married  72025        1  74     FALSE
845   2815       1975 Graduation        Married  33183        0  48     FALSE
846  10888       1961 Graduation         Single  45938        0  62     FALSE
847   6637       1988 Graduation         Single  66951        0  35     FALSE
848   5077       1979 Graduation       Together  77298        0  44     FALSE
849   6173       1979 Graduation       Together  77298        0  44     FALSE
850   3969       1974     Master       Together  43018        0  49     FALSE
851   4580       1969 Graduation        Married  75759        1  54     FALSE
852    663       1989        PhD         Single  33996        0  34     FALSE
853   8299       1989        PhD         Single  33996        0  34     FALSE
854   8945       1970 Graduation       Divorced  54137        0  53     FALSE
855  10870       1967 Graduation        Married  61223        0  56     FALSE
856   1184       1968        PhD       Divorced  69674        0  55     FALSE
857   6141       1972     Master         Single  49494        0  51     FALSE
858   8825       1962 Graduation       Together  51195        0  61     FALSE
859   2217       1975   2n Cycle        Married  37284        0  48     FALSE
860   4102       1975   2n Cycle        Married  37284        0  48     FALSE
861   4653       1978 Graduation       Together  42011        0  45     FALSE
862  10092       1954 Graduation       Divorced  70044        0  69     FALSE
863   5788       1972 Graduation       Together  46053        0  51     FALSE
864   6295       1977 Graduation        Married  54233        0  46     FALSE
865   7453       1954 Graduation         Single  36130        1  69     FALSE
866  10841       1975        PhD       Together  56559        0  48     FALSE
867    821       1992     Master         Single  92859        0  31      TRUE
868   3933       1980 Graduation       Together  44010        0  43     FALSE
869   1225       1963 Graduation        Married  80124        0  60      TRUE
870   7059       1963 Graduation        Married  80124        0  60      TRUE
871   5633       1980 Graduation        Married  50183        0  43     FALSE
872    843       1971 Graduation        Married  64722        0  52     FALSE
873   6211       1976        PhD       Together  37395        0  47     FALSE
874   6616       1975 Graduation       Together  59481        0  48     FALSE
875   6248       1947     Master         Single  91712        1  76      TRUE
876   7428       1975 Graduation       Together  80144        0  48      TRUE
877   3075       1972        PhD        Married  59973        0  51     FALSE
878   2937       1974        PhD         Single  68352        0  49     FALSE
879    203       1975     Master         Single  81169        0  48      TRUE
880   2021       1975 Graduation        Married  61456        0  48     FALSE
881   7011       1973 Graduation        Married  33471        0  50     FALSE
882   4184       1950        PhD       Together  52157        0  73     FALSE
883   7679       1985        PhD         Single  30298        0  38     FALSE
884   7485       1950        PhD          Widow  56551        0  73     FALSE
885   7530       1950        PhD          Widow  56551        0  73     FALSE
886   4369       1957     Master         Absurd  65487        0  66     FALSE
887  10652       1957     Master       Together  65487        0  66     FALSE
888    286       1952 Graduation         Single  44213        0  71     FALSE
889   5922       1974        PhD        Married  40344        0  49     FALSE
890   7250       1978 Graduation       Together  57867        0  45     FALSE
891   9214       1991 Graduation        Married  42691        0  32     FALSE
892    273       1970     Master        Married  36138        0  53     FALSE
893    851       1972     Master        Married  57136        0  51     FALSE
894   9729       1955 Graduation          Widow  58275        0  68     FALSE
895   9665       1957        PhD       Divorced  54237        0  66     FALSE
896   2620       1974        PhD        Married  34596        1  49     FALSE
897   8254       1974        PhD        Married  34596        0  49     FALSE
898   3852       1961     Master       Together  74881        0  62     FALSE
899   1000       1961     Master       Together  74881        0  62     FALSE
900   3099       1970 Graduation       Divorced  44267        0  53     FALSE
901   6318       1988 Graduation        Married  68487        0  35     FALSE
902   5396       1988 Graduation        Married  68487        0  35     FALSE
903   7966       1959 Graduation         Single  80982        0  64      TRUE
904    454       1980 Graduation       Together  69508        0  43     FALSE
905    309       1961        PhD       Together  63342        0  62     FALSE
906   3571       1961        PhD       Together  63342        1  62     FALSE
907   8395       1961 Graduation         Single  82014        1  62      TRUE
908   2591       1959 Graduation          Widow  76320        0  64     FALSE
909   1640       1954 Graduation       Divorced  64587        0  69     FALSE
910    810       1975 Graduation        Married  74190        0  48     FALSE
911   9423       1979     Master        Married  32765        0  44     FALSE
912   1215       1978 Graduation       Together  70440        0  45     FALSE
913   9283       1978 Graduation         Single  60199        0  45     FALSE
914   3120       1981 Graduation       Together  38547        0  42     FALSE
915   8143       1985        PhD         Single  37929        1  38     FALSE
916   7214       1957 Graduation        Married  62187        0  66     FALSE
917   5543       1966 Graduation       Together  57811        0  57     FALSE
918   9347       1956     Master       Together  50943        0  67     FALSE
919  10160       1956     Master       Together  50943        0  67     FALSE
920   1406       1975 Graduation         Single  53201        0  48     FALSE
921   7019       1963 Graduation       Together  54414        0  60     FALSE
922   8939       1959 Graduation       Divorced  61250        0  64     FALSE
923   1272       1965     Master         Single  55250        0  58     FALSE
924   3007       1966 Graduation       Together  37758        0  57     FALSE
925   5513       1966 Graduation       Together  37758        0  57     FALSE
926    679       1957        PhD        Married  37633        0  66     FALSE
927   8876       1963        PhD       Together  33629        0  60     FALSE
928  10827       1967        PhD        Married  36947        0  56     FALSE
929   7300       1952 Graduation       Divorced  69142        0  71     FALSE
930   4268       1959 Graduation        Married  53154        0  64     FALSE
931   4603       1960        PhD        Married  65695        0  63     FALSE
932   8659       1952        PhD       Together  69805        0  71     FALSE
933  10708       1978   2n Cycle         Single  36975        0  45     FALSE
934  10380       1972     Master        Married  37787        0  51     FALSE
935   7037       1974        PhD        Married  37087        0  49     FALSE
936  11096       1952   2n Cycle       Together  57247        0  71     FALSE
937   6374       1954        PhD        Married  36930        0  69     FALSE
938   5552       1963     Master       Divorced  48721        0  60     FALSE
939   2245       1969     Master        Married  43641        0  54     FALSE
940   6200       1951 Graduation        Married  75903        0  72     FALSE
941   9904       1956 Graduation        Married  71391        0  67     FALSE
942  10882       1976 Graduation        Married  53858        0  47     FALSE
943   5636       1963 Graduation         Single  30983        1  60     FALSE
944   8692       1952 Graduation       Together  43462        0  71     FALSE
945   8091       1956 Graduation        Married  63943        0  67     FALSE
946   8370       1976   2n Cycle       Together  75484        0  47     FALSE
947   4550       1966     Master       Together  33564        0  57     FALSE
948   3381       1953     Master        Married  54348        0  70     FALSE
949  10556       1959 Graduation        Married  54984        0  64     FALSE
950   9467       1984 Graduation         Single  34738        0  39     FALSE
951   2891       1963 Graduation       Divorced  68118        0  60     FALSE
952   5011       1963 Graduation       Divorced  68118        0  60     FALSE
953  11039       1975 Graduation        Married  51948        0  48     FALSE
954   5290       1964        PhD        Married  41551        0  59     FALSE
955   4128       1962        PhD       Together  56067        0  61     FALSE
956   8534       1952 Graduation        Married  67433        0  71     FALSE
957   8957       1952   2n Cycle         Single  64831        0  71     FALSE
958   9308       1954 Graduation        Married  62820        0  69     FALSE
959    544       1954 Graduation        Married  62820        0  69     FALSE
960   5989       1959   2n Cycle       Divorced  78353        0  64     FALSE
961    635       1966     Master        Married  57183        0  57     FALSE
962   1710       1978 Graduation         Single  30168        0  45     FALSE
963    523       1989 Graduation        Married  37155        0  34     FALSE
964   9736       1980 Graduation        Married  41850        0  43     FALSE
965   1544       1967     Master       Divorced  81380        0  56      TRUE
966   6575       1981 Graduation       Together  56386        0  42     FALSE
967   4769       1977     Master       Together  57954        0  46     FALSE
968   7540       1952 Graduation        Married  50300        0  71     FALSE
969   5247       1955        PhD        Married  38725        0  68     FALSE
970  10972       1949 Graduation          Widow  72298        0  74     FALSE
971   1399       1958 Graduation        Married  72905        0  65     FALSE
972   2698       1976 Graduation         Single  47025        0  47     FALSE
973   4107       1948        PhD       Together  46681        0  75     FALSE
974  10906       1948        PhD       Together  46681        0  75     FALSE
975   8786       1956     Master        Married  62058        0  67     FALSE
976   6119       1963        PhD         Single  36736        0  60     FALSE
977   1077       1974 Graduation       Together  56715        0  49     FALSE
978   4764       1952     Master       Together  40442        1  71     FALSE
979   2223       1965   2n Cycle       Divorced  64176        0  58     FALSE
980   5827       1958 Graduation       Divorced  35246        0  65     FALSE
981   4954       1956 Graduation        Married  48195        0  67     FALSE
982   3139       1982   2n Cycle         Single  74116        0  41     FALSE
983   9952       1947     Master       Together  78093        0  76     FALSE
984   8180       1952     Master       Divorced  59354        0  71     FALSE
985   3276       1976   2n Cycle       Together  36301        0  47     FALSE
986   4994       1943     Master         Single  77598        0  80     FALSE
987   3598       1972 Graduation        Married  62710        0  51     FALSE
988    945       1965 Graduation       Together  36317        0  58     FALSE
989   5048       1971        PhD         Single  42767        0  52     FALSE
990   6214       1982     Master        Married  43815        0  41     FALSE
991   6230       1971 Graduation       Divorced  44421        0  52     FALSE
992   2968       1943        PhD       Divorced  48948        1  80     FALSE
993   8800       1943        PhD       Divorced  48948        1  80     FALSE
994   1907       1950     Master       Divorced  63120        1  73     FALSE
995  10478       1950        PhD        Married  55517        1  73     FALSE
996   4188       1957 Graduation         Single  36864        1  66     FALSE
997   2225       1977 Graduation       Divorced  82582        1  46      TRUE
998   4790       1958 Graduation       Divorced  79803        0  65     FALSE
999   1131       1967        PhD         Single  52569        0  56     FALSE
1000   202       1948        PhD          Widow  82032        0  75      TRUE
1001  9589       1948        PhD          Widow  82032        0  75      TRUE
1002  3900       1972 Graduation        Married  65685        0  51     FALSE
1003  9958       1972 Graduation        Married  65685        0  51     FALSE
1004  8955       1957        PhD       Together  40451        0  66     FALSE
1005 10033       1973   2n Cycle       Divorced  31163        0  50     FALSE
1006  5751       1973   2n Cycle       Divorced  31163        0  50     FALSE
1007  3308       1952 Graduation        Married  35704        0  71     FALSE
1008  8008       1983 Graduation       Together  36075        0  40     FALSE
1009  1232       1982        PhD       Together  70038        0  41     FALSE
1010  2345       1982        PhD       Together  70038        0  41     FALSE
1011  1628       1971 Graduation       Together  71796        0  52     FALSE
1012  5081       1967   2n Cycle       Together  47821        0  56     FALSE
1013   839       1975        PhD        Married  45503        0  48     FALSE
1014  5154       1972     Master       Divorced  37760        0  51     FALSE
1015  8584       1952        PhD       Together  85431        0  71      TRUE
1016  6583       1955   2n Cycle        Married  72635        0  68     FALSE
1017  3433       1955   2n Cycle        Married  72635        0  68     FALSE
1018 10486       1948 Graduation        Married  77142        0  75     FALSE
1019  8687       1978 Graduation       Together  53172        0  45     FALSE
1020  7842       1968 Graduation         Single  36065        0  55     FALSE
1021  3749       1973 Graduation       Together  73926        0  50     FALSE
1022  1331       1977 Graduation         Single  35790        0  46     FALSE
1023  5995       1962 Graduation       Divorced  39552        1  61     FALSE
1024  8985       1964   2n Cycle       Together  68316        0  59     FALSE
1025  2798       1977        PhD       Together 102160        1  46      TRUE
1026  7108       1965     Master          Widow  51390        0  58     FALSE
1027  2781       1981 Graduation         Single  72066        1  42     FALSE
1028   194       1965 Graduation        Married  48006        0  58     FALSE
1029 10833       1975 Graduation        Married  65106        0  48     FALSE
1030  2315       1960 Graduation       Divorced  58401        0  63     FALSE
1031 10738       1951     Master         Single  49389        0  72     FALSE
1032  8286       1965        PhD       Together  51717        0  58     FALSE
1033  2166       1960   2n Cycle          Widow  46779        0  63     FALSE
1034  9739       1963 Graduation         Single  34377        0  60     FALSE
1035  1829       1961        PhD       Divorced  54959        1  62     FALSE
1036  6260       1955     Master       Together  82384        1  68      TRUE
1037 10448       1956 Graduation         Single  46998        0  67     FALSE
1038  1343       1968 Graduation       Together  58554        0  55     FALSE
1039  4749       1968 Graduation       Together  58554        0  55     FALSE
1040   531       1954        PhD       Divorced  57333        1  69     FALSE
1041  6905       1994 Graduation       Together  80685        0  29      TRUE
1042  1045       1965 Graduation       Together  52117        0  58     FALSE
1043  4012       1972        PhD       Together  62220        1  51     FALSE
1044  5529       1946        PhD       Together  64014        0  77     FALSE
1045  4001       1946        PhD       Together  64014        0  77     FALSE
1046 10420       1955     Master       Divorced  46390        0  68     FALSE
1047  7723       1979 Graduation       Together  75507        0  44     FALSE
1048  2963       1979 Graduation       Together  75507        0  44     FALSE
1049 10634       1951     Master        Married  59412        0  72     FALSE
1050  5180       1968        PhD       Divorced  50616        0  55     FALSE
1051  6866       1969     Master       Together  35924        0  54     FALSE
1052  1328       1982   2n Cycle        Married  57937        0  41     FALSE
1053  1139       1984        PhD        Married  73356        1  39     FALSE
1054  5177       1974     Master        Married  58494        0  49     FALSE
1055  2075       1969 Graduation        Married  72460        0  54     FALSE
1056  3428       1991        PhD       Together  68682        0  32     FALSE
1057  4500       1991        PhD       Together  68682        0  32     FALSE
1058  7369       1981     Master        Married  36959        0  42     FALSE
1059  4381       1971        PhD        Married  46463        0  52     FALSE
1060  9964       1979 Graduation         Single  61825        0  44     FALSE
1061  1630       1979 Graduation         Single  61825        0  44     FALSE
1062  7822       1976 Graduation       Together  54058        0  47     FALSE
1063 10156       1975 Graduation         Single  84196        0  48      TRUE
1064  3033       1963     Master       Together  38620        0  60     FALSE
1065  4119       1963     Master       Together  38620        0  60     FALSE
1066   332       1957 Graduation        Married  47743        0  66     FALSE
1067   737       1949        PhD        Married  80360        0  74      TRUE
1068 10319       1971 Graduation        Married  66303        0  52     FALSE
1069  2683       1969 Graduation        Married  52413        0  54     FALSE
1070  3445       1956 Graduation         Single  60714        1  67     FALSE
1071 10913       1984     Master         Single  31385        1  39     FALSE
1072  4427       1995   2n Cycle         Single  83257        1  28      TRUE
1073  8717       1975        PhD        Married  80427        0  48      TRUE
1074  2066       1949 Graduation       Together  38823        0  74     FALSE
1075  3340       1977 Graduation        Married  42014        1  46     FALSE
1076  8685       1977 Graduation        Married  42014        1  46     FALSE
1077  4149       1948        PhD       Together  76140        0  75     FALSE
1078  8726       1964   2n Cycle       Divorced  41713        0  59     FALSE
1079  2295       1954        PhD        Married  62670        0  69     FALSE
1080  3283       1972   2n Cycle        Married  70932        0  51     FALSE
1081  1915       1951        PhD        Married  78939        0  72     FALSE
1082   800       1960 Graduation       Together  44512        0  63     FALSE
1083  9166       1968 Graduation        Married  63967        0  55     FALSE
1084  5147       1948 Graduation         Single  90842        0  75      TRUE
1085  9381       1978 Graduation        Married  66373        0  45     FALSE
1086  9384       1978 Graduation        Married  66373        0  45     FALSE
1087  3560       1952 Graduation       Together  83844        0  71      TRUE
1088   241       1952 Graduation       Together  83844        0  71      TRUE
1089  7521       1952 Graduation       Together  83844        0  71      TRUE
1090  9799       1968        PhD       Divorced  83664        0  55      TRUE
1091   448       1978        PhD         Single  54880        0  45     FALSE
1092  4837       1965        PhD        Married  71322        0  58     FALSE
1093  9365       1976        PhD         Single  60000        0  47     FALSE
1094  8932       1969     Master       Together  65176        0  54     FALSE
1095  7055       1952        PhD       Together  61010        0  71     FALSE
1096  3537       1981 Graduation       Together  31089        0  42     FALSE
1097  4988       1948        PhD        Married  34469        0  75     FALSE
1098  5610       1965 Graduation       Together  33456        0  58     FALSE
1099  3526       1968        PhD        Married  38443        0  55     FALSE
1100  5136       1973 Graduation         Single  65333        0  50     FALSE
1101  1411       1952 Graduation       Divorced  82623        0  71      TRUE
1102   701       1971 Graduation        Married  73691        0  52     FALSE
1103  6203       1947 Graduation       Together  74485        0  76     FALSE
1104  7192       1955 Graduation       Together  65748        0  68     FALSE
1105  9220       1971 Graduation         Single  91700        1  52      TRUE
1106  7734       1993 Graduation         Absurd  79244        1  30     FALSE
1107 10446       1957        PhD        Married  82017        1  66      TRUE
1108  5524       1957 Graduation         Single  58138        1  66     FALSE
1109  3830       1953     Master        Married  59354        0  70     FALSE
1110  5186       1955        PhD        Married  58482        0  68     FALSE
1111  7165       1972 Graduation       Together  64474        0  51     FALSE
1112 10236       1975     Master         Single  31160        0  48     FALSE
1113  2392       1972 Graduation        Married  40321        0  51     FALSE
1114  1920       1972 Graduation        Married  40321        0  51     FALSE
1115  3673       1971 Graduation         Single  55239        0  52     FALSE
1116  1453       1943        PhD          Widow  57513        0  80     FALSE
1117  4518       1979 Graduation       Together  85693        0  44      TRUE
1118  8969       1977 Graduation        Married  71855        0  46     FALSE
1119  1079       1971        PhD        Married  71969        0  52     FALSE
1120  3434       1951 Graduation         Single  80872        0  72      TRUE
1121  5721       1956        PhD        Married  84117        0  67      TRUE
1122  8418       1958   2n Cycle         Single  38741        0  65     FALSE
1123  5300       1973     Master        Married  38961        0  50     FALSE
1124 10424       1968 Graduation         Single  75922        0  55     FALSE
1125 11171       1965     Master        Married  56962        0  58     FALSE
1126  1600       1965     Master        Married  56962        0  58     FALSE
1127  7851       1949 Graduation          Widow  70165        0  74     FALSE
1128 10701       1973 Graduation        Married  65308        0  50     FALSE
1129  6912       1967        PhD        Married  63246        0  56     FALSE
1130  5967       1952 Graduation       Together  33402        0  71     FALSE
1131  2109       1990 Graduation         Single  96843        1  33      TRUE
1132  6292       1986        PhD        Married  82333        1  37      TRUE
1133  8537       1949 Graduation          Widow  72643        1  74     FALSE
1134  9576       1982        PhD       Together  32313        0  41     FALSE
1135  5935       1956     Master         Single  55284        0  67     FALSE
1136  3202       1987        PhD        Married  51563        0  36     FALSE
1137  1103       1976     Master        Married  81929        1  47      TRUE
1138   610       1953        PhD       Together  53593        0  70     FALSE
1139  4480       1973     Master        Married  60432        0  50     FALSE
1140 10660       1957     Master        Married  66726        0  66     FALSE
1141  9353       1959 Graduation         Single  62450        0  64     FALSE
1142  4120       1975   2n Cycle         Single  49514        0  48     FALSE
1143  2836       1972        PhD        Married  43269        0  51     FALSE
1144  9579       1959        PhD        Married  33762        0  64     FALSE
1145  5841       1966 Graduation       Together  60894        0  57     FALSE
1146  3174       1959 Graduation       Together  87771        1  64      TRUE
1147  5536       1959 Graduation       Together  87771        1  64      TRUE
1148  2061       1955 Graduation        Married  50737        0  68     FALSE
1149   640       1951 Graduation        Married  57304        0  72     FALSE
1150  3828       1951 Graduation        Married  71107        0  72     FALSE
1151  4093       1975     Master       Together  53253        0  48     FALSE
1152  8624       1958 Graduation        Married  81320        0  65      TRUE
1153  2802       1992   2n Cycle        Married  87000        0  31      TRUE
1154   368       1974 Graduation        Married  40049        0  49     FALSE
1155  3599       1970 Graduation        Married  63684        0  53     FALSE
1156  3389       1970 Graduation        Married  69016        0  53     FALSE
1157  7118       1957 Graduation        Married  73803        1  66     FALSE
1158  4937       1973   2n Cycle        Married  46094        0  50     FALSE
1159  1127       1973        PhD        Married  85844        0  50      TRUE
1160   833       1955     Master        Married  38452        0  68     FALSE
1161  3565       1955     Master        Married  38452        0  68     FALSE
1162  6086       1955 Graduation        Married  80395        0  68      TRUE
1163  1763       1988 Graduation       Together  87679        1  35      TRUE
1164  4697       1949     Master       Divorced  35416        0  74     FALSE
1165   182       1946        PhD       Together  44124        0  77     FALSE
1166  1165       1958        PhD         Single  50729        0  65     FALSE
1167  5386       1953 Graduation       Together  94384        1  70      TRUE
1168  6024       1953 Graduation       Together  94384        1  70      TRUE
1169  2678       1990 Graduation         Single  34412        0  33     FALSE
1170  5790       1985 Graduation        Married  31158        0  38     FALSE
1171   236       1951 Graduation        Married  34838        0  72     FALSE
1172  6001       1979 Graduation        Married  56775        0  44     FALSE
1173  6250       1949        PhD          Widow  54356        1  74     FALSE
1174  1168       1978        PhD        Married  72159        0  45     FALSE
1175  2926       1952     Master       Together  55951        0  71     FALSE
1176   716       1949        PhD       Together  67911        0  74     FALSE
1177  6544       1949        PhD       Together  67911        0  74     FALSE
1178  5823       1970        PhD         Single  32303        0  53     FALSE
1179  8375       1968        PhD        Married  55954        0  55     FALSE
1180  5723       1976        PhD       Together  49187        0  47     FALSE
1181  5763       1972     Master       Together  49854        0  51     FALSE
1182  8727       1978 Graduation       Divorced  63693        0  45     FALSE
1183  3056       1978 Graduation       Divorced  63693        0  45     FALSE
1184  3712       1959 Graduation       Divorced  52332        0  64     FALSE
1185 10722       1973 Graduation       Together  55593        0  50     FALSE
1186  2406       1949 Graduation       Together  54591        0  74     FALSE
1187  7313       1949   2n Cycle          Widow  74859        0  74     FALSE
1188  2656       1971 Graduation       Divorced  40851        0  52     FALSE
1189  1993       1949        PhD        Married  58607        0  74     FALSE
1190  2928       1975        PhD         Single  52614        0  48     FALSE
1191  2920       1975        PhD         Single  52614        0  48     FALSE
1192  6661       1974 Graduation        Married  67445        0  49     FALSE
1193  5462       1974 Graduation        Married  67445        0  49     FALSE
1194 10897       1974 Graduation        Married  67445        0  49     FALSE
1195 10542       1968        PhD        Married  36778        0  55     FALSE
1196  5756       1983 Graduation       Together  39453        0  40     FALSE
1197  3570       1969        PhD       Together  42731        0  54     FALSE
1198  1072       1965        PhD         Single  40760        0  58     FALSE
1199  9606       1965        PhD        Married  69969        1  58     FALSE
1200  2730       1955 Graduation         Single  80317        0  68      TRUE
1201  2995       1957     Master       Together  66636        0  66     FALSE
1202  8210       1975     Master        Married  54730        0  48     FALSE
1203   773       1971     Master       Divorced  42835        0  52     FALSE
1204  5272       1965     Master        Married  53843        0  58     FALSE
1205  5125       1960 Graduation        Married  79530        0  63     FALSE
1206  4391       1968     Master       Divorced  63841        0  55     FALSE
1207  6283       1968     Master       Divorced  63841        0  55     FALSE
1208  3421       1968     Master       Divorced  63841        0  55     FALSE
1209  3919       1976     Master         Single  72309        1  47     FALSE
1210  6097       1959 Graduation         Single  50664        0  64     FALSE
1211 10479       1975        PhD        Married  76618        0  48     FALSE
1212  5966       1974        PhD        Married  45207        0  49     FALSE
1213  3439       1972 Graduation        Married  56721        0  51     FALSE
1214  9014       1975 Graduation        Married  37085        0  48     FALSE
1215  4050       1966     Master        Married  49605        0  57     FALSE
1216  8315       1995 Graduation         Single  34824        0  28     FALSE
1217  5184       1995 Graduation         Single  34824        0  28     FALSE
1218  3643       1974     Master        Married  63206        0  49     FALSE
1219  4887       1976        PhD       Divorced  55412        0  47     FALSE
1220 10104       1974 Graduation       Together  33590        0  49     FALSE
1221  3254       1971 Graduation        Married  70886        0  52     FALSE
1222  2004       1969 Graduation         Single  72679        0  54     FALSE
1223  6142       1943     Master        Married  65073        0  80     FALSE
1224  8553       1965 Graduation        Married  44300        0  58     FALSE
1225  9805       1953     Master       Together  56129        0  70     FALSE
1226   849       1953     Master       Together  56129        0  70     FALSE
1227  1606       1971 Graduation       Together  38590        0  52     FALSE
1228   125       1958   2n Cycle       Together  53083        0  65     FALSE
1229  9305       1976   2n Cycle         Single  79689        0  47     FALSE
1230  4706       1966 Graduation         Single  34704        0  57     FALSE
1231  4437       1962 Graduation        Married  65316        0  61     FALSE
1232  3081       1978        PhD        Married  41014        0  45     FALSE
1233  9707       1969        PhD        Married  55212        0  54     FALSE
1234 10872       1969        PhD        Married  55212        0  54     FALSE
1235  9058       1955 Graduation          Widow  79800        1  68     FALSE
1236  4640       1967 Graduation       Divorced  70647        0  56     FALSE
1237  2525       1974        PhD        Married  38410        1  49     FALSE
1238 10704       1969 Graduation         Single  54803        0  54     FALSE
1239  2669       1993 Graduation         Single  74293        0  30     FALSE
1240 10037       1993 Graduation         Single  74293        0  30     FALSE
1241  5680       1984   2n Cycle        Married  35684        0  39     FALSE
1242  3726       1986        PhD       Together  34320        0  37     FALSE
1243  4548       1981 Graduation         Single  41967        0  42     FALSE
1244  4599       1976     Master        Married  49681        0  47     FALSE
1245   879       1976     Master        Married  49681        0  47     FALSE
1246  7409       1970 Graduation       Together  53187        0  53     FALSE
1247  1964       1951 Graduation       Together  86610        0  72      TRUE
1248     0       1985 Graduation        Married  70951        0  38     FALSE
1249   425       1985 Graduation        Married  55357        0  38     FALSE
1250  9500       1959 Graduation        Married  58113        0  64     FALSE
1251  3074       1984        PhD        Married  70643        1  39     FALSE
1252  5140       1985        PhD        Married  64355        0  38     FALSE
1253  2611       1959     Master       Together  82576        0  64      TRUE
1254   916       1972        PhD         Single  41644        0  51     FALSE
1255 10413       1984 Graduation        Married  72570        0  39     FALSE
1256  3696       1965 Graduation       Divorced  30630        0  58     FALSE
1257  5113       1971        PhD       Divorced  86979        1  52      TRUE
1258  4597       1970        PhD       Together  82072        0  53      TRUE
1259   675       1973     Master       Divorced  52034        0  50     FALSE
1260  4483       1993 Graduation         Single  72354        0  30     FALSE
1261  4487       1969     Master         Single  39858        1  54     FALSE
1262  3412       1951     Master        Married  67381        0  72     FALSE
1263  5837       1967 Graduation        Married  51479        0  56     FALSE
1264  3422       1975 Graduation        Married  76068        0  48     FALSE
1265 10702       1984 Graduation         Single  52413        0  39     FALSE
1266  2115       1957 Graduation       Together  50116        0  66     FALSE
1267  4138       1962 Graduation         Single  76624        0  61     FALSE
1268 11091       1953 Graduation       Together  34587        0  70     FALSE
1269  7712       1946        PhD         Single  62159        0  77     FALSE
1270  3535       1965 Graduation         Single  66294        0  58     FALSE
1271  8749       1984 Graduation       Together  37235        0  39     FALSE
1272 10955       1964 Graduation          Widow  85620        1  59      TRUE
1273  5286       1987     Master         Single  41020        0  36     FALSE
1274  3409       1984 Graduation         Single  36108        0  39     FALSE
1275  2544       1951     Master       Divorced  57530        0  72     FALSE
1276  2118       1964   2n Cycle        Married  62905        0  59     FALSE
1277  9370       1945        PhD        Married  65846        0  78     FALSE
1278  4864       1977 Graduation        Married  34380        0  46     FALSE
1279   405       1964 Graduation       Divorced  41638        0  59     FALSE
1280 10513       1992 Graduation       Together  63207        0  31     FALSE
1281  8387       1957 Graduation        Married  43140        0  66     FALSE
1282   378       1971 Graduation        Married  52531        0  52     FALSE
1283  5846       1977 Graduation       Divorced  40246        0  46     FALSE
1284  8870       1984 Graduation       Together  35196        1  39     FALSE
1285 10340       1984 Graduation       Together  35196        0  39     FALSE
1286  7290       1985 Graduation         Single  70596        0  38     FALSE
1287  8895       1985 Graduation         Single  70596        0  38     FALSE
1288  3635       1962        PhD         Single  52597        0  61     FALSE
1289 11178       1972     Master         Single  42394        0  51     FALSE
1290  2410       1969 Graduation         Single  81657        0  54      TRUE
1291  3281       1960        PhD        Married  49154        0  63     FALSE
1292  9905       1952 Graduation       Together  34074        0  71     FALSE
1293  2565       1955     Master       Divorced  70638        0  68     FALSE
1294  7912       1978 Graduation        Married  38136        0  45     FALSE
1295  7072       1973 Graduation        Married  67432        0  50     FALSE
1296  1409       1951 Graduation       Together  40689        0  72     FALSE
1297  5314       1951 Graduation       Together  40689        0  72     FALSE
1298  7215       1983 Graduation         Single 101970        1  40      TRUE
1299  8858       1972        PhD        Married  44325        0  51     FALSE
1300   895       1948        PhD        Married  61467        0  75     FALSE
1301 10313       1975 Graduation        Married  48178        0  48     FALSE
1302  8504       1973 Graduation        Married  79593        0  50     FALSE
1303  1020       1973 Graduation        Married  79593        0  50     FALSE
1304  3717       1959 Graduation        Married  61180        0  64     FALSE
1305  7646       1989 Graduation         Single  64449        0  34     FALSE
1306  5796       1963 Graduation        Married  77437        0  60     FALSE
1307  5407       1954 Graduation       Together  53103        0  69     FALSE
1308  4356       1971 Graduation       Together  71819        0  52     FALSE
1309  2886       1971     Master       Divorced  74290        0  52     FALSE
1310 10057       1951 Graduation         Single  72282        1  72     FALSE
1311 10741       1951     Master       Together  47352        0  72     FALSE
1312  5491       1951     Master       Together  47352        0  72     FALSE
1313  4442       1961 Graduation         Single  46524        0  62     FALSE
1314  3972       1976 Graduation       Together  50200        0  47     FALSE
1315  7899       1952        PhD        Married  77610        0  71     FALSE
1316  9703       1970        PhD        Married  38097        1  53     FALSE
1317  6927       1968        PhD        Married  44377        0  55     FALSE
1318  7005       1981 Graduation         Single  58684        0  42     FALSE
1319   246       1965 Graduation        Married  66480        0  58     FALSE
1320  4796       1952 Graduation       Divorced  49638        0  71     FALSE
1321  4725       1950        PhD       Together  50616        0  73     FALSE
1322 10680       1986 Graduation       Together  33235        0  37     FALSE
1323  7327       1959        PhD        Married  36732        0  64     FALSE
1324  1553       1946 Graduation       Together  82657        0  77      TRUE
1325  1665       1964        PhD       Divorced  64140        1  59     FALSE
1326 10640       1974 Graduation       Together  44392        0  49     FALSE
1327  7761       1978   2n Cycle       Together  38702        0  45     FALSE
1328  5062       1963        PhD        Married  54072        0  60     FALSE
1329  6349       1987     Master       Divorced  61787        0  36     FALSE
1330  3386       1992 Graduation        Married  34935        0  31     FALSE
1331  8175       1992 Graduation        Married  34935        0  31     FALSE
1332  6245       1950        PhD       Together  59292        0  73     FALSE
1333  8780       1950        PhD       Together  59292        0  73     FALSE
1334  2276       1955 Graduation         Single  57959        0  68     FALSE
1335  1172       1983        PhD        Married  92491        1  40      TRUE
1336  3225       1984     Master        Married  42207        1  39     FALSE
1337  8629       1956 Graduation          Widow  46984        0  67     FALSE
1338   269       1963        PhD         Single  46757        0  60     FALSE
1339 10245       1986   2n Cycle         Single  80910        0  37      TRUE
1340  2447       1979 Graduation       Together  30545        0  44     FALSE
1341  9817       1970     Master         Single  44802        0  53     FALSE
1342  1371       1976 Graduation         Single  79941        0  47     FALSE
1343  8093       1969     Master        Married  79734        0  54     FALSE
1344   713       1977     Master        Married  50353        0  46     FALSE
1345 11051       1956        PhD       Together  77376        0  67     FALSE
1346  5545       1972        PhD        Married  78075        0  51     FALSE
1347  5283       1976        PhD         Single  42473        0  47     FALSE
1348  7495       1948        PhD        Married  56223        0  75     FALSE
1349  4368       1980 Graduation        Married  47850        0  43     FALSE
1350  6303       1986        PhD       Together  91820        0  37      TRUE
1351  1030       1965        PhD         Single  40637        0  58     FALSE
1352  6945       1952 Graduation         Single  84574        0  71      TRUE
1353  8562       1969 Graduation       Together  54165        0  54     FALSE
1354  9167       1956 Graduation        Married  67131        0  67     FALSE
1355  4743       1969        PhD        Married  56242        0  54     FALSE
1356 10742       1983        PhD        Married  86580        0  40      TRUE
1357 10965       1955 Graduation       Together  76005        0  68     FALSE
1358  7129       1962        PhD        Married  54693        0  61     FALSE
1359  3732       1955     Master        Married  52750        0  68     FALSE
1360  7124       1968 Graduation       Divorced  36997        0  55     FALSE
1361 10686       1965        PhD       Together  34230        0  58     FALSE
1362  7247       1960 Graduation          Widow  47916        0  63     FALSE
1363  1513       1979   2n Cycle       Together  60839        0  44     FALSE
1364   460       1972        PhD        Married  79930        0  51     FALSE
1365  6653       1970        PhD        Married  55158        1  53     FALSE
1366  9400       1958   2n Cycle         Single  85485        0  65      TRUE
1367  7106       1943        PhD        Married  75865        0  80     FALSE
1368  4252       1965 Graduation        Married  44375        0  58     FALSE
1369  9240       1971        PhD         Single  60504        0  52     FALSE
1370 10770       1959 Graduation        Married  65492        0  64     FALSE
1371   176       1980   2n Cycle         Single  67506        0  43     FALSE
1372  6870       1959        PhD       Divorced  68805        0  64     FALSE
1373   143       1970 Graduation         Single  61209        0  53     FALSE
1374  6445       1967 Graduation       Together  66825        0  56     FALSE
1375  4278       1983        PhD         Single  87188        1  40      TRUE
1376  6906       1953     Master          Widow  84953        1  70      TRUE
1377  4637       1954        PhD         Single  74637        0  69     FALSE
1378  8690       1962 Graduation        Married  86111        0  61      TRUE
1379  1173       1947     Master       Together  77632        1  76     FALSE
1380  1928       1973 Graduation        Married  31814        0  50     FALSE
1381  9029       1972        PhD        Married  70116        0  51     FALSE
1382 10299       1969        PhD         Single  48240        1  54     FALSE
1383  9246       1985     Master       Together  40101        0  38     FALSE
1384  4943       1953 Graduation        Married  70503        0  70     FALSE
1385  4122       1975 Graduation        Married  79205        1  48     FALSE
1386  2853       1980 Graduation         Single  51766        0  43     FALSE
1387   902       1980 Graduation       Together  62994        0  43     FALSE
1388  1672       1974        PhD       Together  65640        0  49     FALSE
1389  7254       1969 Graduation       Together  38361        0  54     FALSE
1390  8775       1969 Graduation       Together  38361        0  54     FALSE
1391  2894       1985 Graduation         Single  72903        1  38     FALSE
1392  5956       1948        PhD       Divorced  45072        0  75     FALSE
1393  1921       1967        PhD        Married  59062        0  56     FALSE
1394  5057       1961     Master        Married  61794        0  62     FALSE
1395 10260       1965     Master       Together  45143        0  58     FALSE
1396  2262       1965     Master       Together  45143        0  58     FALSE
1397  1461       1965        PhD       Divorced  36921        0  58     FALSE
1398  7514       1956   2n Cycle       Together  54342        0  67     FALSE
1399  6461       1969     Master         Single  62772        0  54     FALSE
1400   257       1959        PhD        Married  75032        0  64     FALSE
1401   367       1978   2n Cycle        Married  36550        0  45     FALSE
1402  9265       1953 Graduation        Married  75027        0  70     FALSE
1403  1990       1974        PhD         Single  63159        0  49     FALSE
1404  3594       1973     Master        Married  54108        0  50     FALSE
1405  9292       1952 Graduation        Married  81795        0  71      TRUE
1406  6218       1965 Graduation        Married  59594        0  58     FALSE
1407 10164       1958 Graduation         Single  94472        0  65      TRUE
1408  9937       1979 Graduation         Single  70337        0  44     FALSE
1409   274       1973 Graduation         Single  34853        0  50     FALSE
1410  6969       1982 Graduation       Together  50272        0  41     FALSE
1411  9974       1974 Graduation        Married  30631        0  49     FALSE
1412  7053       1966        PhD         Single  78420        0  57     FALSE
1413  3179       1980 Graduation         Single  81741        0  43      TRUE
1414  1362       1972 Graduation         Single  31907        0  51     FALSE
1415  6768       1962 Graduation       Divorced  37859        0  61     FALSE
1416  2375       1972 Graduation       Together  30261        0  51     FALSE
1417  4333       1954 Graduation       Together  32144        0  69     FALSE
1418  2948       1954     Master       Divorced  62637        0  69     FALSE
1419  7426       1971   2n Cycle        Married  54690        0  52     FALSE
1420  8360       1971   2n Cycle        Married  54690        0  52     FALSE
1421  4058       1955        PhD         Single  61284        0  68     FALSE
1422  8414       1962        PhD         Single  33419        0  61     FALSE
1423  6810       1983 Graduation       Divorced  82025        1  40      TRUE
1424  3483       1958 Graduation        Married  48192        1  65     FALSE
1425   238       1967   2n Cycle       Together  67309        0  56     FALSE
1426   591       1957 Graduation          Widow  66033        0  66     FALSE
1427  2258       1986 Graduation        Married  32880        0  37     FALSE
1428  5287       1973 Graduation        Married  34961        0  50     FALSE
1429  6457       1976 Graduation       Divorced  64892        0  47     FALSE
1430  5577       1983 Graduation       Together  43776        0  40     FALSE
1431   641       1967 Graduation         Single  52074        0  56     FALSE
1432  1834       1978     Master         Single  35544        0  45     FALSE
1433  8789       1989   2n Cycle        Married  59060        0  34     FALSE
1434 10584       1976 Graduation        Married  65665        0  47     FALSE
1435  6071       1989 Graduation         Single  81217        0  34      TRUE
1436   295       1989 Graduation         Single  81217        0  34      TRUE
1437  3968       1970   2n Cycle       Divorced  65706        1  53     FALSE
1438  4037       1976 Graduation       Divorced  31859        0  47     FALSE
1439  6932       1941        PhD        Married  93027        0  82      TRUE
1440 10159       1970 Graduation       Divorced  58710        0  53     FALSE
1441  1177       1966     Master       Together  49618        0  57     FALSE
1442  9426       1964     Master         Single  58308        0  59     FALSE
1443 10637       1964 Graduation        Married  40800        0  59     FALSE
1444 10992       1967 Graduation       Together  75702        0  56     FALSE
1445  6383       1971        PhD       Together  32892        0  52     FALSE
1446 10536       1971        PhD       Together  32892        0  52     FALSE
1447  6036       1959     Master       Together  89120        0  64      TRUE
1448   538       1989 Graduation         Single  46107        0  34     FALSE
1449 10022       1973        PhD         Single  54466        0  50     FALSE
1450 10157       1965 Graduation         Single  59686        0  58     FALSE
1451  3503       1950 Graduation       Divorced  82460        0  73      TRUE
1452   146       1960        PhD         Single  76045        0  63     FALSE
1453  5538       1975 Graduation       Divorced  83829        1  48      TRUE
1454  3910       1975 Graduation       Divorced  83829        1  48      TRUE
1455  4227       1968     Master       Together  32889        0  55     FALSE
1456  6634       1979     Master       Divorced  33462        0  44     FALSE
1457  8916       1975 Graduation       Divorced  36627        0  48     FALSE
1458  5883       1972 Graduation        Married  77981        0  51     FALSE
1459 10091       1956 Graduation         Single  60230        0  67     FALSE
1460   697       1969 Graduation       Together  74918        0  54     FALSE
1461  2607       1953 Graduation         Single  40464        0  70     FALSE
1462  8427       1956     Master         Single  64857        0  67     FALSE
1463   217       1956     Master         Single  64857        0  67     FALSE
1464  6202       1960 Graduation       Together  63381        0  63     FALSE
1465  3856       1960 Graduation       Together  63381        0  63     FALSE
1466 10648       1982   2n Cycle       Together  66664        0  41     FALSE
1467  5120       1982   2n Cycle       Together  66664        0  41     FALSE
1468  6749       1966 Graduation         Single  86358        0  57      TRUE
1469  1584       1977 Graduation        Married  41443        0  46     FALSE
1470  9559       1961        PhD        Married  57072        0  62     FALSE
1471   771       1967 Graduation       Together  54178        0  56     FALSE
1472  5237       1950        PhD         Single  48767        0  73     FALSE
1473  2461       1955     Master         Single  51124        0  68     FALSE
1474  5474       1970 Graduation         Single  43020        0  53     FALSE
1475  2895       1963 Graduation         Single  49980        0  60     FALSE
1476  7972       1955 Graduation         Single  72906        0  68     FALSE
1477   500       1977 Graduation       Together  96876        1  46      TRUE
1478   922       1979   2n Cycle        Married  31086        0  44     FALSE
1479   375       1954 Graduation       Divorced  76773        0  69     FALSE
1480 10936       1965 Graduation        Married  72190        0  58     FALSE
1481 10314       1948        PhD        Married  83837        1  75      TRUE
1482  2674       1958     Master         Single  75154        1  65     FALSE
1483  6999       1980     Master        Married  69661        0  43     FALSE
1484  5223       1966     Master       Together  45903        0  57     FALSE
1485  2952       1977     Master         Single  36273        0  46     FALSE
1486  7683       1968     Master        Married  70777        0  55     FALSE
1487  9907       1969     Master       Together  66476        0  54     FALSE
1488  5454       1979     Master        Married  45057        0  44     FALSE
1489  3798       1968 Graduation        Married  41120        0  55     FALSE
1490  6437       1985   2n Cycle         Single  41473        0  38     FALSE
1491  2488       1956   2n Cycle       Divorced  31395        0  67     FALSE
1492  3945       1947        PhD          Widow  68117        1  76     FALSE
1493   702       1975   2n Cycle          Widow  47682        0  48     FALSE
1494  9010       1972     Master        Married  83151        1  51      TRUE
1495  9710       1969        PhD       Divorced  58086        0  54     FALSE
1496  1509       1958        PhD       Together  84460        1  65      TRUE
1497  9120       1962 Graduation         Single  66565        0  61     FALSE
1498  5959       1968 Graduation         Single  35893        0  55     FALSE
1499  7441       1973 Graduation       Divorced  71128        0  50     FALSE
1500  4271       1989   2n Cycle       Together  38683        0  34     FALSE
1501  4095       1971 Graduation        Married  37150        0  52     FALSE
1502  8852       1976 Graduation        Married  61064        0  47     FALSE
1503  7698       1976        PhD        Married  51650        0  47     FALSE
1504  4174       1956     Master       Together  55249        0  67     FALSE
1505  3182       1973        PhD         Single  46854        1  50     FALSE
1506  5229       1969        PhD       Together  54132        0  54     FALSE
1507  5555       1975 Graduation       Divorced 153924        0  48      TRUE
1508  7732       1978 Graduation        Married  64813        0  45     FALSE
1509   310       1970     Master        Married  61872        0  53     FALSE
1510  6261       1979 Graduation        Married  58025        0  44     FALSE
1511  6274       1948     Master        Married  83790        0  75      TRUE
1512  1655       1979 Graduation       Together  34350        0  44     FALSE
1513  2740       1958        PhD          Widow  33438        0  65     FALSE
1514    17       1971        PhD        Married  60491        0  52     FALSE
1515  9153       1964        PhD        Married  59304        0  59     FALSE
1516   520       1974 Graduation        Married  34421        0  49     FALSE
1517  8372       1974 Graduation        Married  34421        0  49     FALSE
1518    73       1953        PhD         Single  51411        0  70     FALSE
1519  2002       1958 Graduation       Divorced  71964        0  65     FALSE
1520  6059       1953        PhD       Together  64504        1  70     FALSE
1521 11166       1961 Graduation        Married  49678        0  62     FALSE
1522  6257       1976     Master         Single  60482        0  47     FALSE
1523  9224       1972        PhD         Single  55260        0  51     FALSE
1524  8732       1969     Master          Widow  67369        1  54     FALSE
1525   955       1962     Master       Together  47175        1  61     FALSE
1526  4910       1967 Graduation       Divorced  68743        0  56     FALSE
1527   564       1981        PhD       Together  56937        1  42     FALSE
1528  8931       1986 Graduation       Together  83033        0  37      TRUE
1529  1998       1976 Graduation         Single  37697        0  47     FALSE
1530  1250       1976 Graduation         Single  37697        0  47     FALSE
1531  8397       1951 Graduation        Married  44689        0  72     FALSE
1532  2125       1959 Graduation       Divorced  63033        0  64     FALSE
1533  5975       1967        PhD         Single  40304        0  56     FALSE
1534   983       1984 Graduation        Married  40059        0  39     FALSE
1535  9938       1954 Graduation        Married  80067        0  69      TRUE
1536  4385       1981        PhD         Single  36038        0  42     FALSE
1537   803       1968 Graduation       Together  40521        0  55     FALSE
1538 10675       1956        PhD        Married  66334        1  67     FALSE
1539  4432       1976 Graduation       Divorced  31615        0  47     FALSE
1540  4475       1949        PhD        Married  69098        0  74     FALSE
1541 10868       1951 Graduation          Widow  70792        0  72     FALSE
1542   339       1972        PhD        Married  57091        1  51     FALSE
1543  8017       1981   2n Cycle        Married  51111        0  42     FALSE
1544  3722       1972 Graduation         Single  44503        0  51     FALSE
1545  7326       1971     Master        Married  56850        0  52     FALSE
1546  2416       1969        PhD         Single  66582        0  54     FALSE
1547  5278       1964 Graduation        Married  82224        0  59      TRUE
1548  5734       1974        PhD        Married  61917        0  49     FALSE
1549  4370       1966 Graduation       Together  43482        0  57     FALSE
1550  8405       1979 Graduation       Divorced  68274        0  44     FALSE
1551  7617       1974 Graduation         Single  42373        0  49     FALSE
1552  6376       1979 Graduation         Single  57537        0  44     FALSE
1553  2150       1958        PhD          Widow  80995        0  65      TRUE
1554  7386       1976 Graduation       Divorced  30992        0  47     FALSE
1555  3006       1976 Graduation       Divorced  30992        0  47     FALSE
1556 11088       1971        PhD       Together  78642        0  52     FALSE
1557  5185       1955 Graduation        Married  74268        0  68     FALSE
1558  3523       1962 Graduation       Together  75072        0  61     FALSE
1559    55       1963 Graduation       Together  56253        0  60     FALSE
1560  3807       1955 Graduation       Together  59925        0  68     FALSE
1561  2453       1960 Graduation       Together  62807        0  63     FALSE
1562  7787       1960 Graduation       Together  62807        0  63     FALSE
1563  8146       1976     Master       Together  46106        0  47     FALSE
1564   988       1965 Graduation        Married  81168        0  58      TRUE
1565   361       1969     Master        Married  43142        0  54     FALSE
1566  5939       1971 Graduation       Together  38232        0  52     FALSE
1567  9349       1985 Graduation        Married  92533        0  38      TRUE
1568   819       1945 Graduation          Widow  63285        0  78     FALSE
1569 10120       1955 Graduation       Together  38946        0  68     FALSE
1570  4541       1955 Graduation       Together  38946        0  68     FALSE
1571  2456       1975        PhD        Married  40233        0  48     FALSE
1572  2516       1969   2n Cycle        Married  46831        0  54     FALSE
1573 11013       1987 Graduation       Together  67605        0  36     FALSE
1574  9988       1976     Master         Single  70379        0  47     FALSE
1575  1627       1957   2n Cycle       Divorced  77297        0  66     FALSE
1576  1490       1962 Graduation        Married  55759        0  61     FALSE
1577  6710       1951     Master         Single  58217        0  72     FALSE
1578  7375       1976 Graduation       Together  51369        0  47     FALSE
1579 10144       1976 Graduation       Together  51369        0  47     FALSE
1580  3138       1956 Graduation         Single  91249        1  67      TRUE
1581  1440       1978   2n Cycle       Together  52513        0  45     FALSE
1582  4200       1970     Master        Married  44159        0  53     FALSE
1583  4998       1962 Graduation       Together  76081        0  61     FALSE
1584  7321       1962 Graduation       Together  76081        0  61     FALSE
1585  8663       1974 Graduation       Divorced  39996        0  49     FALSE
1586  1958       1973        PhD       Together  55012        0  50     FALSE
1587  6963       1947 Graduation         Single  77457        0  76     FALSE
1588  1065       1963 Graduation         Single  80695        0  60      TRUE
1589  2712       1956 Graduation        Married  71866        0  67     FALSE
1590  6049       1982     Master       Together  73450        0  41     FALSE
1591  6605       1944        PhD       Divorced  55614        0  79     FALSE
1592 11181       1949        PhD        Married 156924        0  74      TRUE
1593  5234       1967   2n Cycle       Together  30753        0  56     FALSE
1594  5253       1956     Master       Together  54603        0  67     FALSE
1595  6289       1951     Master       Together  59385        0  72     FALSE
1596  9743       1955 Graduation        Married  76998        0  68     FALSE
1597  9209       1971     Master       Together  80573        0  52      TRUE
1598  6417       1971     Master       Together  80573        0  52      TRUE
1599  6488       1959        PhD        Married  38829        0  64     FALSE
1600  3194       1974        PhD         Single  71466        0  49     FALSE
1601  9697       1951 Graduation        Married  53790        0  72     FALSE
1602  4676       1951     Master          Widow  73705        0  72     FALSE
1603 10505       1960     Master       Together  73113        0  63     FALSE
1604  2005       1990 Graduation        Married  35765        0  33     FALSE
1605  6940       1966        PhD         Single  46734        0  57     FALSE
1606  2304       1963        PhD       Together  66313        0  60     FALSE
1607  3170       1957     Master       Together  68148        0  66     FALSE
1608 10466       1965 Graduation        Married  44393        0  58     FALSE
1609  7325       1986        PhD       Together  38197        0  37     FALSE
1610   455       1946        PhD        Married  51012        0  77     FALSE
1611  7592       1946        PhD        Married  51012        0  77     FALSE
1612  6825       1953 Graduation       Together  41452        0  70     FALSE
1613  2961       1982 Graduation        Married  42081        0  41     FALSE
1614  2278       1985   2n Cycle         Single  33812        0  38     FALSE
1615 10703       1975     Master         Single  46098        0  48     FALSE
1616     9       1975     Master         Single  46098        0  48     FALSE
1617  2804       1975     Master         Single  46098        1  48     FALSE
1618  4915       1956   2n Cycle        Married  53230        0  67     FALSE
1619  3010       1989     Master       Together  88420        0  34      TRUE
1620  4279       1963   2n Cycle         Single  39548        0  60     FALSE
1621  2564       1953 Graduation       Together  61278        0  70     FALSE
1622  1137       1964 Graduation         Single  81246        0  59      TRUE
1623  5084       1975 Graduation          Widow  58330        0  48     FALSE
1624  7094       1975 Graduation          Widow  58330        0  48     FALSE
1625  6327       1967 Graduation       Together  65777        0  56     FALSE
1626  6131       1980   2n Cycle        Married  70829        0  43     FALSE
1627 10379       1962     Master         Single  59247        0  61     FALSE
1628  7801       1959 Graduation       Together  54753        0  64     FALSE
1629   550       1952 Graduation       Divorced  62335        0  71     FALSE
1630  4478       1979 Graduation        Married  63777        0  44     FALSE
1631  2350       1972 Graduation        Married  59666        0  51     FALSE
1632  1118       1956     Master        Married  50965        0  67     FALSE
1633  1491       1965   2n Cycle       Together  71488        0  58     FALSE
1634  4507       1952 Graduation         Single  72228        0  71     FALSE
1635  7023       1953        PhD         Single  46231        0  70     FALSE
1636  6977       1974 Graduation       Together  75702        0  49     FALSE
1637  4042       1971 Graduation       Divorced  43300        1  52     FALSE
1638  7274       1957 Graduation        Married  78618        0  66     FALSE
1639  9386       1962 Graduation       Together  50127        0  61     FALSE
1640 10323       1952 Graduation        Married  49413        0  71     FALSE
1641  4682       1958 Graduation        Married  51876        0  65     FALSE
1642  3083       1974 Graduation        Married  45837        0  49     FALSE
1643  8015       1962        PhD       Divorced  85696        1  61      TRUE
1644  1745       1962        PhD       Divorced  85696        1  61      TRUE
1645  3136       1962     Master       Divorced  59432        0  61     FALSE
1646  6991       1951 Graduation       Divorced  43185        0  72     FALSE
1647  8132       1975        PhD        Married  60631        0  48     FALSE
1648  8148       1956     Master       Together  50898        0  67     FALSE
1649  2736       1978 Graduation        Married  73807        0  45     FALSE
1650   692       1954 Graduation       Together  36807        0  69     FALSE
1651  7706       1975   2n Cycle       Together  46772        0  48     FALSE
1652  9298       1947        PhD       Together  81574        0  76      TRUE
1653  2986       1976 Graduation        Married  30772        0  47     FALSE
1654 10812       1978        PhD        Married  46377        0  45     FALSE
1655  2909       1974        PhD        Married  78128        0  49     FALSE
1656  6974       1972        PhD       Together  83443        0  51      TRUE
1657  9140       1960   2n Cycle       Together  50523        0  63     FALSE
1658  4554       1965 Graduation       Together  47009        0  58     FALSE
1659  7791       1967     Master        Married  37054        0  56     FALSE
1660  5455       1971        PhD        Married  32011        0  52     FALSE
1661  7960       1962   2n Cycle       Together  82122        0  61      TRUE
1662  3426       1975 Graduation       Divorced  70300        0  48     FALSE
1663  1404       1968 Graduation       Together  34916        0  55     FALSE
1664  8212       1971     Master        Married  39791        0  52     FALSE
1665  3233       1965        PhD        Married  62745        0  58     FALSE
1666  2975       1976 Graduation       Together  85606        0  47      TRUE
1667  3104       1961 Graduation         Single  82332        1  62      TRUE
1668 10854       1970        PhD        Married  38853        0  53     FALSE
1669  5558       1954        PhD         Single  90933        0  69      TRUE
1670   832       1966        PhD       Together  65814        0  57     FALSE
1671  4964       1958        PhD       Together  74250        0  65     FALSE
1672 11030       1976     Master        Married  33181        0  47     FALSE
1673  4587       1944     Master          Widow  45006        0  79     FALSE
1674   450       1958     Master       Together  42315        0  65     FALSE
1675 11031       1950        PhD        Married  48699        0  73     FALSE
1676  4990       1954 Graduation        Married  59111        0  69     FALSE
1677   221       1955 Graduation        Married  48726        0  68     FALSE
1678  4351       1955 Graduation       Divorced  37244        0  68     FALSE
1679  1357       1970 Graduation       Together  74854        0  53     FALSE
1680  5667       1964        PhD        Married  60896        1  59     FALSE
1681  8867       1988        PhD        Married  67546        0  35     FALSE
1682  2747       1988        PhD        Married  67546        0  35     FALSE
1683  7422       1987 Graduation         Single  46923        0  36     FALSE
1684  4148       1972 Graduation        Married  38988        0  51     FALSE
1685  9516       1971   2n Cycle       Divorced  49118        1  52     FALSE
1686  1833       1974        PhD         Single  39190        0  49     FALSE
1687  7270       1981 Graduation       Divorced  56981        0  42     FALSE
1688 10394       1984 Graduation        Married  90000        0  39      TRUE
1689  1142       1953        PhD        Married  55707        0  70     FALSE
1690  7128       1977        PhD         Single  42997        0  46     FALSE
1691 10678       1959 Graduation       Together  71232        0  64     FALSE
1692  7755       1954        PhD        Married  57744        0  69     FALSE
1693  4754       1966     Master        Married  33585        0  57     FALSE
1694    20       1965   2n Cycle        Married  46891        0  58     FALSE
1695  2246       1965   2n Cycle        Married  46891        0  58     FALSE
1696 10307       1956 Graduation        Married  50387        0  67     FALSE
1697  2147       1969 Graduation       Together  76653        0  54     FALSE
1698 10590       1956        PhD       Together  76542        0  67     FALSE
1699  6565       1949     Master        Married  76995        0  74     FALSE
1700  6619       1978 Graduation        Married  38415        0  45     FALSE
1701  4508       1952 Graduation         Single  75127        0  71     FALSE
1702  4843       1952 Graduation         Single  75127        0  71     FALSE
1703  9197       1953 Graduation        Married  39722        0  70     FALSE
1704  6515       1977 Graduation       Together  39771        0  46     FALSE
1705  5954       1972     Master       Divorced  42618        0  51     FALSE
1706  7938       1958        PhD       Together  51518        0  65     FALSE
1707   961       1972 Graduation        Married  74716        0  51     FALSE
1708  1764       1975 Graduation         Single  33955        0  48     FALSE
1709  1916       1954     Master        Married  45736        0  69     FALSE
1710  6941       1971 Graduation         Single  31632        0  52     FALSE
1711  5562       1974 Graduation        Married  60093        0  49     FALSE
1712  1517       1969 Graduation         Single  30822        0  54     FALSE
1713  7286       1968 Graduation       Together  41728        0  55     FALSE
1714  4687       1958     Master        Married  80739        0  65      TRUE
1715  5631       1991 Graduation         Single  49767        0  32     FALSE
1716  1951       1981      Basic        Married  34445        0  42     FALSE
1717   123       1951 Graduation          Widow  67046        0  72     FALSE
1718  9451       1965 Graduation        Married  73538        0  58     FALSE
1719  7396       1966 Graduation        Married  80398        0  57      TRUE
1720  3298       1956     Master        Married  52973        0  67     FALSE
1721  6730       1954 Graduation        Married  38998        0  69     FALSE
1722  9916       1954 Graduation        Married  38998        0  69     FALSE
1723  4094       1961 Graduation        Married  60544        0  62     FALSE
1724  8588       1961 Graduation        Married  60544        0  62     FALSE
1725  3916       1971        PhD       Together  49269        0  52     FALSE
1726  1755       1988   2n Cycle       Together  45204        0  35     FALSE
1727  2875       1978 Graduation        Married  67023        0  45     FALSE
1728  2008       1978 Graduation        Married  77583        0  45     FALSE
1729 10925       1983 Graduation        Married  76630        0  40     FALSE
1730  1604       1960     Master        Married  47353        0  63     FALSE
1731  5389       1964 Graduation        Married  48920        0  59     FALSE
1732  2878       1947        PhD        Married  67472        0  76     FALSE
1733  4440       1964     Master        Married  64100        0  59     FALSE
1734  1324       1988 Graduation        Married  38872        0  35     FALSE
1735  6262       1962     Master         Single  72217        0  61     FALSE
1736   322       1978 Graduation       Together  42554        0  45     FALSE
1737   175       1986 Graduation        Married  71952        0  37     FALSE
1738  6988       1986 Graduation        Married  71952        0  37     FALSE
1739  8204       1971   2n Cycle        Married  78041        0  52     FALSE
1740  7476       1964     Master         Single  63972        0  59     FALSE
1741  5221       1957 Graduation        Married  52852        0  66     FALSE
1742  8970       1972        PhD        Married  62010        0  51     FALSE
1743  9286       1960     Master       Together  83151        0  63      TRUE
1744  5831       1967 Graduation        Married  77870        1  56     FALSE
1745  1010       1977 Graduation       Together  46931        0  46     FALSE
1746 11074       1977 Graduation         Single  85072        0  46      TRUE
1747  5896       1987     Master        Married  73395        0  36     FALSE
1748  3515       1952 Graduation         Single  62307        0  71     FALSE
1749  5324       1981        PhD        Married  58293        0  42     FALSE
1750  6534       1974 Graduation       Together  47889        0  49     FALSE
1751  4501       1965     Master         Single  69882        0  58     FALSE
1752  9239       1961     Master        Married  61923        0  62     FALSE
1753  8953       1965     Master         Single  35791        0  58     FALSE
1754 10258       1965     Master         Single  35791        0  58     FALSE
1755  3520       1990     Master         Single  91172        1  33      TRUE
1756 10402       1967 Graduation        Married  35441        0  56     FALSE
1757  6055       1979 Graduation        Married  71626        0  44     FALSE
1758  4786       1977 Graduation        Married  75330        0  46     FALSE
1759  5015       1976     Master        Married  34529        0  47     FALSE
1760  8560       1992 Graduation         Single  48789        0  31     FALSE
1761  3469       1977        PhD       Divorced  34487        0  46     FALSE
1762  5885       1973   2n Cycle        Married  35688        0  50     FALSE
1763  3310       1973   2n Cycle        Married  35688        0  50     FALSE
1764  2134       1952 Graduation         Single  53700        0  71     FALSE
1765  2532       1987     Master         Single  73454        0  36     FALSE
1766  2579       1957 Graduation        Married  71113        0  66     FALSE
1767  5623       1980     Master        Married  31535        0  43     FALSE
1768  4789       1953 Graduation       Together  80812        0  70      TRUE
1769  9523       1982 Graduation       Together  40479        0  41     FALSE
1770  1545       1986 Graduation        Married  38508        0  37     FALSE
1771  2254       1983 Graduation        Married  69520        0  40     FALSE
1772  5847       1969 Graduation       Divorced  69901        0  54     FALSE
1773  5863       1953 Graduation        Married  47703        0  70     FALSE
1774   999       1991 Graduation         Single  86037        1  32      TRUE
1775  2931       1978 Graduation       Divorced  71847        0  45     FALSE
1776  1890       1971   2n Cycle       Together  42033        0  52     FALSE
1777  5589       1964 Graduation       Divorced  51983        0  59     FALSE
1778 10172       1988 Graduation         Single  68655        0  35     FALSE
1779  6729       1988 Graduation         Single  68655        0  35     FALSE
1780 10492       1959 Graduation       Together  38285        0  64     FALSE
1781  2939       1970     Master       Together  79419        0  53     FALSE
1782  5948       1975 Graduation         Single  57338        0  48     FALSE
1783   574       1964 Graduation        Married  42523        0  59     FALSE
1784  3266       1964 Graduation        Married  42523        0  59     FALSE
1785 10500       1984 Graduation        Married  31761        0  39     FALSE
1786  7987       1969 Graduation        Married  65747        0  54     FALSE
1787  1966       1965        PhD        Married  84618        0  58      TRUE
1788  7789       1965        PhD        Married  84618        0  58      TRUE
1789  3336       1948        PhD       Together  66375        0  75     FALSE
1790  5644       1957 Graduation       Together  42213        0  66     FALSE
1791  6663       1940        PhD         Single  51141        0  83     FALSE
1792  5748       1965 Graduation        Married  59754        1  58     FALSE
1793  8952       1953     Master        Married  65569        0  70     FALSE
1794  9826       1972        PhD         Single  86857        1  51      TRUE
1795  5830       1972        PhD         Single  86857        1  51      TRUE
1796  8310       1964 Graduation       Together  68142        0  59     FALSE
1797  6382       1953 Graduation       Together  48794        0  70     FALSE
1798  8439       1964 Graduation       Together  63404        0  59     FALSE
1799  7613       1974   2n Cycle       Together  49669        0  49     FALSE
1800    48       1964 Graduation       Together  55761        0  59     FALSE
1801  5046       1958 Graduation       Divorced  78331        0  65     FALSE
1802  3231       1973 Graduation        Married  37971        0  50     FALSE
1803  7181       1977 Graduation        Married  30368        0  46     FALSE
1804  1663       1978        PhD       Together  34043        0  45     FALSE
1805  5441       1965        PhD          Widow  54111        0  58     FALSE
1806  8602       1964 Graduation       Divorced  69932        0  59     FALSE
1807  9925       1981        PhD       Together  39665        0  42     FALSE
1808  9499       1954 Graduation        Married  93404        0  69      TRUE
1809  6568       1984 Graduation        Married  38680        0  39     FALSE
1810  5153       1967        PhD        Married  77766        1  56     FALSE
1811  4127       1967        PhD        Married  77766        1  56     FALSE
1812  9940       1958 Graduation       Together  64961        0  65     FALSE
1813  3406       1964 Graduation         Single  45989        0  59     FALSE
1814  6722       1954        PhD        Married  70421        0  69     FALSE
1815  8475       1973        PhD        Married 157243        0  50      TRUE
1816  8070       1973        PhD        Married  54222        0  50     FALSE
1817   313       1968 Graduation          Widow  73455        0  55     FALSE
1818  9757       1972 Graduation       Together  84906        0  51      TRUE
1819  2088       1972 Graduation       Together  84906        0  51      TRUE
1820  2320       1978   2n Cycle        Married  47025        0  45     FALSE
1821   966       1966 Graduation        Married  44529        0  57     FALSE
1822  9706       1974        PhD         Single  31560        0  49     FALSE
1823  3979       1983        PhD       Divorced  90687        1  40      TRUE
1824  5602       1989        PhD       Together  66973        0  34     FALSE
1825  2202       1978 Graduation       Together  41154        0  45     FALSE
1826  9645       1968 Graduation        Married  64590        0  55     FALSE
1827  7230       1960        PhD       Divorced  50611        1  63     FALSE
1828  5675       1960        PhD       Divorced  50611        0  63     FALSE
1829  4974       1970 Graduation         Single  83273        0  53      TRUE
1830  5687       1980 Graduation       Divorced  81702        0  43      TRUE
1831  3846       1974 Graduation        Married  42557        0  49     FALSE
1832  2831       1976 Graduation       Together  78416        0  47     FALSE
1833   868       1966 Graduation        Married  44794        0  57     FALSE
1834  7212       1966 Graduation        Married  44794        0  57     FALSE
1835  1743       1974 Graduation         Single  69719        0  49     FALSE
1836  2415       1962 Graduation       Together  62568        0  61     FALSE
1837  7947       1969 Graduation        Married  42231        0  54     FALSE
1838  8595       1973 Graduation          Widow  42429        0  50     FALSE
1839  7232       1973 Graduation          Widow  42429        0  50     FALSE
1840  7829       1900   2n Cycle       Divorced  36640        0 123     FALSE
1841  9977       1973 Graduation       Divorced  78901        0  50     FALSE
1842 10142       1976        PhD       Divorced  66476        0  47     FALSE
1843  5263       1977   2n Cycle        Married  31056        0  46     FALSE
1844    22       1976 Graduation       Divorced  46310        0  47     FALSE
1845   528       1978 Graduation        Married  65819        0  45     FALSE
1846  4070       1969        PhD        Married  94871        1  54      TRUE
     Average_Income
1          59160.31
2          59160.31
3          59160.31
4          59160.31
5          58550.27
6          57148.68
7          59160.31
8          58550.27
9          58550.27
10         57148.68
11         56839.70
12         58550.27
13         59160.31
14         59160.31
15         58550.27
16         57148.68
17         56839.70
18         56839.70
19         56839.70
20         56839.70
21         58550.27
22         59160.31
23         56839.70
24         59160.31
25         59160.31
26         58550.27
27         59160.31
28         58550.27
29         59160.31
30         58550.27
31         58550.27
32         58550.27
33         57148.68
34         56839.70
35         58550.27
36         59160.31
37         58550.27
38         57148.68
39         59160.31
40         59160.31
41         59160.31
42         56839.70
43         59160.31
44         59160.31
45         56839.70
46         57148.68
47         59160.31
48         59160.31
49         56839.70
50         58550.27
51         59160.31
52         59160.31
53         56839.70
54         58550.27
55         56839.70
56         59160.31
57         56839.70
58         57148.68
59         58550.27
60         58550.27
61         58550.27
62         57148.68
63         56839.70
64         59160.31
65         59160.31
66         59160.31
67         58550.27
68         56839.70
69         59160.31
70         59160.31
71         59160.31
72         58550.27
73         59160.31
74         57148.68
75         58550.27
76         59160.31
77         58550.27
78         58550.27
79         59160.31
80         56839.70
81         56839.70
82         56839.70
83         59160.31
84         58550.27
85         58550.27
86         59160.31
87         58550.27
88         58550.27
89         58550.27
90         56839.70
91         56839.70
92         58550.27
93         58550.27
94         57148.68
95         59160.31
96         59160.31
97         59160.31
98         59160.31
99         56839.70
100        59160.31
101        56839.70
102        56839.70
103        56839.70
104        59160.31
105        59160.31
106        59160.31
107        59160.31
108        59160.31
109        59160.31
110        59160.31
111        59160.31
112        56839.70
113        56839.70
114        59160.31
115        59160.31
116        56839.70
117        59160.31
118        59160.31
119        58550.27
120        57148.68
121        57148.68
122        59160.31
123        59160.31
124        58550.27
125        56839.70
126        56839.70
127        59160.31
128        59160.31
129        58550.27
130        58550.27
131        58550.27
132        56839.70
133        56839.70
134        56839.70
135        56839.70
136        59160.31
137        59160.31
138        59160.31
139        58550.27
140        58550.27
141        59160.31
142        57148.68
143        59160.31
144        56839.70
145        57148.68
146        59160.31
147        59160.31
148        56839.70
149        56839.70
150        59160.31
151        59160.31
152        59160.31
153        58550.27
154        59160.31
155        58550.27
156        56839.70
157        58550.27
158        59160.31
159        59160.31
160        58550.27
161        57148.68
162        58550.27
163        59160.31
164        59160.31
165        58550.27
166        58550.27
167        59160.31
168        58550.27
169        58550.27
170        59160.31
171        59160.31
172        59160.31
173        59160.31
174        59160.31
175        58550.27
176        59160.31
177        58550.27
178        58550.27
179        59160.31
180        58550.27
181        59160.31
182        59160.31
183        56839.70
184        56839.70
185        56839.70
186        59160.31
187        56839.70
188        58550.27
189        58550.27
190        58550.27
191        56839.70
192        58550.27
193        59160.31
194        59160.31
195        59160.31
196        56839.70
197        59160.31
198        59160.31
199        59160.31
200        58550.27
201        59160.31
202        57148.68
203        59160.31
204        59160.31
205        58550.27
206        59160.31
207        58550.27
208        59160.31
209        58550.27
210        58550.27
211        59160.31
212        59160.31
213        59160.31
214        56839.70
215        56839.70
216        59160.31
217        59160.31
218        59160.31
219        59160.31
220        59160.31
221        59160.31
222        58550.27
223        56839.70
224        56839.70
225        59160.31
226        59160.31
227        59160.31
228        56839.70
229        57148.68
230        58550.27
231        59160.31
232        58550.27
233        56839.70
234        59160.31
235        58550.27
236        59160.31
237        59160.31
238        59160.31
239        58550.27
240        58550.27
241        58550.27
242        59160.31
243        59160.31
244        59160.31
245        58550.27
246        56839.70
247        59160.31
248        59160.31
249        59160.31
250        59160.31
251        58550.27
252        59160.31
253        56839.70
254        56839.70
255        56839.70
256        58550.27
257        56839.70
258        59160.31
259        56839.70
260        59160.31
261        56839.70
262        58550.27
263        56839.70
264        56839.70
265        57148.68
266        57148.68
267        59160.31
268        58550.27
269        58550.27
270        56839.70
271        59160.31
272        57148.68
273        59160.31
274        57148.68
275        59160.31
276        56839.70
277        59160.31
278        58550.27
279        58550.27
280        59160.31
281        59160.31
282        59160.31
283        59160.31
284        59160.31
285        59160.31
286        58550.27
287        58550.27
288        59160.31
289        59160.31
290        59160.31
291        58550.27
292        57148.68
293        58550.27
294        56839.70
295        57148.68
296        59160.31
297        59160.31
298        59160.31
299        59160.31
300        56839.70
301        56839.70
302        57148.68
303        59160.31
304        58550.27
305        57148.68
306        59160.31
307        58550.27
308        59160.31
309        58550.27
310        56839.70
311        57148.68
312        59160.31
313        56839.70
314        59160.31
315        56839.70
316        59160.31
317        59160.31
318        56839.70
319        58550.27
320        56839.70
321        59160.31
322        59160.31
323        58550.27
324        59160.31
325        59160.31
326        58550.27
327        57148.68
328        58550.27
329        56839.70
330        59160.31
331        58550.27
332        59160.31
333        58550.27
334        59160.31
335        56839.70
336        59160.31
337        59160.31
338        58550.27
339        57148.68
340        58550.27
341        59160.31
342        59160.31
343        56839.70
344        57148.68
345        59160.31
346        59160.31
347        59160.31
348        58550.27
349        57148.68
350        59160.31
351        56839.70
352        57148.68
353        59160.31
354        59160.31
355        59160.31
356        56839.70
357        59160.31
358        59160.31
359        59160.31
360        59160.31
361        59160.31
362        56839.70
363        59160.31
364        57148.68
365        56839.70
366        59160.31
367        58550.27
368        59160.31
369        58550.27
370        59160.31
371        59160.31
372        59160.31
373        58550.27
374        58550.27
375        58550.27
376        58550.27
377        59160.31
378        57148.68
379        56839.70
380        58550.27
381        58550.27
382        59160.31
383        58550.27
384        56839.70
385        59160.31
386        57148.68
387        59160.31
388        59160.31
389        59160.31
390        56839.70
391        59160.31
392        56839.70
393        59160.31
394        58550.27
395        59160.31
396        59160.31
397        59160.31
398        59160.31
399        58550.27
400        58550.27
401        59160.31
402        59160.31
403        56839.70
404        59160.31
405        56839.70
406        56839.70
407        59160.31
408        59160.31
409        59160.31
410        59160.31
411        59160.31
412        59160.31
413        58550.27
414        56839.70
415        59160.31
416        59160.31
417        58550.27
418        56839.70
419        58550.27
420        58550.27
421        58550.27
422        59160.31
423        59160.31
424        58550.27
425        59160.31
426        56839.70
427        59160.31
428        58550.27
429        58550.27
430        58550.27
431        59160.31
432        57148.68
433        58550.27
434        56839.70
435        56839.70
436        56839.70
437        59160.31
438        59160.31
439        59160.31
440        59160.31
441        59160.31
442        58550.27
443        59160.31
444        59160.31
445        59160.31
446        58550.27
447        58550.27
448        59160.31
449        58550.27
450        58550.27
451        32623.00
452        56839.70
453        56839.70
454        58550.27
455        58550.27
456        59160.31
457        59160.31
458        56839.70
459        56839.70
460        58550.27
461        58550.27
462        56839.70
463        56839.70
464        59160.31
465        59160.31
466        59160.31
467        57148.68
468        56839.70
469        59160.31
470        59160.31
471        58550.27
472        58550.27
473        56839.70
474        56839.70
475        56839.70
476        59160.31
477        59160.31
478        58550.27
479        58550.27
480        56839.70
481        59160.31
482        58550.27
483        59160.31
484        59160.31
485        56839.70
486        59160.31
487        56839.70
488        59160.31
489        58550.27
490        59160.31
491        58550.27
492        59160.31
493        59160.31
494        57148.68
495        59160.31
496        56839.70
497        56839.70
498        59160.31
499        59160.31
500        58550.27
501        59160.31
502        59160.31
503        56839.70
504        59160.31
505        58550.27
506        56839.70
507        59160.31
508        56839.70
509        59160.31
510        59160.31
511        59160.31
512        59160.31
513        59160.31
514        56839.70
515        57148.68
516        57148.68
517        56839.70
518        57148.68
519        59160.31
520        59160.31
521        59160.31
522        59160.31
523        59160.31
524        59160.31
525        58550.27
526        59160.31
527        58550.27
528        58550.27
529        59160.31
530        59160.31
531        58550.27
532        59160.31
533        59160.31
534        56839.70
535        57148.68
536        59160.31
537        59160.31
538        58550.27
539        56839.70
540        59160.31
541        59160.31
542        59160.31
543        59160.31
544        59160.31
545        59160.31
546        59160.31
547        58550.27
548        59160.31
549        57148.68
550        59160.31
551        57148.68
552        58550.27
553        57148.68
554        59160.31
555        59160.31
556        59160.31
557        59160.31
558        59160.31
559        56839.70
560        59160.31
561        56839.70
562        59160.31
563        59160.31
564        56839.70
565        56839.70
566        59160.31
567        57148.68
568        59160.31
569        56839.70
570        56839.70
571        58550.27
572        59160.31
573        59160.31
574        59160.31
575        59160.31
576        59160.31
577        59160.31
578        59160.31
579        59160.31
580        58550.27
581        59160.31
582        59160.31
583        59160.31
584        59160.31
585        57148.68
586        59160.31
587        59160.31
588        57148.68
589        59160.31
590        56839.70
591        59160.31
592        59160.31
593        56839.70
594        59160.31
595        58550.27
596        59160.31
597        59160.31
598        58550.27
599        59160.31
600        59160.31
601        59160.31
602        56839.70
603        59160.31
604        59160.31
605        59160.31
606        56839.70
607        57148.68
608        59160.31
609        59160.31
610        59160.31
611        59160.31
612        58550.27
613        59160.31
614        59160.31
615        59160.31
616        58550.27
617        59160.31
618        57148.68
619        58550.27
620        58550.27
621        58550.27
622        59160.31
623        57148.68
624        59160.31
625        59160.31
626        57148.68
627        59160.31
628        59160.31
629        58550.27
630        58550.27
631        57148.68
632        59160.31
633        58550.27
634        58550.27
635        58550.27
636        59160.31
637        59160.31
638        59160.31
639        59160.31
640        59160.31
641        59160.31
642        59160.31
643        57148.68
644        56839.70
645        59160.31
646        59160.31
647        56839.70
648        56839.70
649        57148.68
650        59160.31
651        59160.31
652        59160.31
653        56839.70
654        59160.31
655        59160.31
656        59160.31
657        57148.68
658        59160.31
659        58550.27
660        58550.27
661        59160.31
662        59160.31
663        59160.31
664        59160.31
665        56839.70
666        56839.70
667        56839.70
668        59160.31
669        59160.31
670        59160.31
671        59160.31
672        59160.31
673        59160.31
674        56839.70
675        56839.70
676        59160.31
677        58550.27
678        59160.31
679        57148.68
680        59160.31
681        56839.70
682        59160.31
683        59160.31
684        59160.31
685        59160.31
686        59160.31
687        56839.70
688        59160.31
689        58550.27
690        58550.27
691        58550.27
692        58550.27
693        56839.70
694        58550.27
695        59160.31
696        59160.31
697        59160.31
698        58550.27
699        58550.27
700        58550.27
701        59160.31
702        56839.70
703        59160.31
704        56839.70
705        59160.31
706        59160.31
707        57148.68
708        58550.27
709        58550.27
710        58550.27
711        58550.27
712        58550.27
713        58550.27
714        56839.70
715        59160.31
716        59160.31
717        59160.31
718        59160.31
719        56839.70
720        56839.70
721        58550.27
722        59160.31
723        59160.31
724        58550.27
725        58550.27
726        59160.31
727        59160.31
728        59160.31
729        58550.27
730        59160.31
731        59160.31
732        58550.27
733        59160.31
734        56839.70
735        57148.68
736        59160.31
737        59160.31
738        58550.27
739        58550.27
740        58550.27
741        57148.68
742        57148.68
743        59160.31
744        58550.27
745        59160.31
746        58550.27
747        59160.31
748        58550.27
749        59160.31
750        56839.70
751        58550.27
752        59160.31
753        58550.27
754        58550.27
755        56839.70
756        57148.68
757        57148.68
758        58550.27
759        58550.27
760        56839.70
761        56839.70
762        59160.31
763        59160.31
764        59160.31
765        59160.31
766        59160.31
767        59160.31
768        59160.31
769        59160.31
770        59160.31
771        58550.27
772        58550.27
773        59160.31
774        59160.31
775        57148.68
776        58550.27
777        57148.68
778        57148.68
779        57148.68
780        56839.70
781        56839.70
782        59160.31
783        58550.27
784        59160.31
785        58550.27
786        58550.27
787        59160.31
788        56839.70
789        59160.31
790        59160.31
791        58550.27
792        59160.31
793        56839.70
794        57148.68
795        57148.68
796        57148.68
797        58550.27
798        56839.70
799        56839.70
800        59160.31
801        59160.31
802        57148.68
803        59160.31
804        58550.27
805        58550.27
806        59160.31
807        58550.27
808        58550.27
809        59160.31
810        58550.27
811        58550.27
812        58550.27
813        59160.31
814        59160.31
815        59160.31
816        56839.70
817        56839.70
818        58550.27
819        59160.31
820        58550.27
821        57148.68
822        57148.68
823        57148.68
824        59160.31
825        56839.70
826        58550.27
827        57148.68
828        59160.31
829        59160.31
830        59160.31
831        59160.31
832        59160.31
833        59160.31
834        59160.31
835        58550.27
836        59160.31
837        59160.31
838        56839.70
839        59160.31
840        59160.31
841        59160.31
842        58550.27
843        56839.70
844        59160.31
845        59160.31
846        59160.31
847        59160.31
848        59160.31
849        59160.31
850        56839.70
851        59160.31
852        58550.27
853        58550.27
854        59160.31
855        59160.31
856        58550.27
857        56839.70
858        59160.31
859        57148.68
860        57148.68
861        59160.31
862        59160.31
863        59160.31
864        59160.31
865        59160.31
866        58550.27
867        56839.70
868        59160.31
869        59160.31
870        59160.31
871        59160.31
872        59160.31
873        58550.27
874        59160.31
875        56839.70
876        59160.31
877        58550.27
878        58550.27
879        56839.70
880        59160.31
881        59160.31
882        58550.27
883        58550.27
884        58550.27
885        58550.27
886        56839.70
887        56839.70
888        59160.31
889        58550.27
890        59160.31
891        59160.31
892        56839.70
893        56839.70
894        59160.31
895        58550.27
896        58550.27
897        58550.27
898        56839.70
899        56839.70
900        59160.31
901        59160.31
902        59160.31
903        59160.31
904        59160.31
905        58550.27
906        58550.27
907        59160.31
908        59160.31
909        59160.31
910        59160.31
911        56839.70
912        59160.31
913        59160.31
914        59160.31
915        58550.27
916        59160.31
917        59160.31
918        56839.70
919        56839.70
920        59160.31
921        59160.31
922        59160.31
923        56839.70
924        59160.31
925        59160.31
926        58550.27
927        58550.27
928        58550.27
929        59160.31
930        59160.31
931        58550.27
932        58550.27
933        57148.68
934        56839.70
935        58550.27
936        57148.68
937        58550.27
938        56839.70
939        56839.70
940        59160.31
941        59160.31
942        59160.31
943        59160.31
944        59160.31
945        59160.31
946        57148.68
947        56839.70
948        56839.70
949        59160.31
950        59160.31
951        59160.31
952        59160.31
953        59160.31
954        58550.27
955        58550.27
956        59160.31
957        57148.68
958        59160.31
959        59160.31
960        57148.68
961        56839.70
962        59160.31
963        59160.31
964        59160.31
965        56839.70
966        59160.31
967        56839.70
968        59160.31
969        58550.27
970        59160.31
971        59160.31
972        59160.31
973        58550.27
974        58550.27
975        56839.70
976        58550.27
977        59160.31
978        56839.70
979        57148.68
980        59160.31
981        59160.31
982        57148.68
983        56839.70
984        56839.70
985        57148.68
986        56839.70
987        59160.31
988        59160.31
989        58550.27
990        56839.70
991        59160.31
992        58550.27
993        58550.27
994        56839.70
995        58550.27
996        59160.31
997        59160.31
998        59160.31
999        58550.27
1000       58550.27
1001       58550.27
1002       59160.31
1003       59160.31
1004       58550.27
1005       57148.68
1006       57148.68
1007       59160.31
1008       59160.31
1009       58550.27
1010       58550.27
1011       59160.31
1012       57148.68
1013       58550.27
1014       56839.70
1015       58550.27
1016       57148.68
1017       57148.68
1018       59160.31
1019       59160.31
1020       59160.31
1021       59160.31
1022       59160.31
1023       59160.31
1024       57148.68
1025       58550.27
1026       56839.70
1027       59160.31
1028       59160.31
1029       59160.31
1030       59160.31
1031       56839.70
1032       58550.27
1033       57148.68
1034       59160.31
1035       58550.27
1036       56839.70
1037       59160.31
1038       59160.31
1039       59160.31
1040       58550.27
1041       59160.31
1042       59160.31
1043       58550.27
1044       58550.27
1045       58550.27
1046       56839.70
1047       59160.31
1048       59160.31
1049       56839.70
1050       58550.27
1051       56839.70
1052       57148.68
1053       58550.27
1054       56839.70
1055       59160.31
1056       58550.27
1057       58550.27
1058       56839.70
1059       58550.27
1060       59160.31
1061       59160.31
1062       59160.31
1063       59160.31
1064       56839.70
1065       56839.70
1066       59160.31
1067       58550.27
1068       59160.31
1069       59160.31
1070       59160.31
1071       56839.70
1072       57148.68
1073       58550.27
1074       59160.31
1075       59160.31
1076       59160.31
1077       58550.27
1078       57148.68
1079       58550.27
1080       57148.68
1081       58550.27
1082       59160.31
1083       59160.31
1084       59160.31
1085       59160.31
1086       59160.31
1087       59160.31
1088       59160.31
1089       59160.31
1090       58550.27
1091       58550.27
1092       58550.27
1093       58550.27
1094       56839.70
1095       58550.27
1096       59160.31
1097       58550.27
1098       59160.31
1099       58550.27
1100       59160.31
1101       59160.31
1102       59160.31
1103       59160.31
1104       59160.31
1105       59160.31
1106       59160.31
1107       58550.27
1108       59160.31
1109       56839.70
1110       58550.27
1111       59160.31
1112       56839.70
1113       59160.31
1114       59160.31
1115       59160.31
1116       58550.27
1117       59160.31
1118       59160.31
1119       58550.27
1120       59160.31
1121       58550.27
1122       57148.68
1123       56839.70
1124       59160.31
1125       56839.70
1126       56839.70
1127       59160.31
1128       59160.31
1129       58550.27
1130       59160.31
1131       59160.31
1132       58550.27
1133       59160.31
1134       58550.27
1135       56839.70
1136       58550.27
1137       56839.70
1138       58550.27
1139       56839.70
1140       56839.70
1141       59160.31
1142       57148.68
1143       58550.27
1144       58550.27
1145       59160.31
1146       59160.31
1147       59160.31
1148       59160.31
1149       59160.31
1150       59160.31
1151       56839.70
1152       59160.31
1153       57148.68
1154       59160.31
1155       59160.31
1156       59160.31
1157       59160.31
1158       57148.68
1159       58550.27
1160       56839.70
1161       56839.70
1162       59160.31
1163       59160.31
1164       56839.70
1165       58550.27
1166       58550.27
1167       59160.31
1168       59160.31
1169       59160.31
1170       59160.31
1171       59160.31
1172       59160.31
1173       58550.27
1174       58550.27
1175       56839.70
1176       58550.27
1177       58550.27
1178       58550.27
1179       58550.27
1180       58550.27
1181       56839.70
1182       59160.31
1183       59160.31
1184       59160.31
1185       59160.31
1186       59160.31
1187       57148.68
1188       59160.31
1189       58550.27
1190       58550.27
1191       58550.27
1192       59160.31
1193       59160.31
1194       59160.31
1195       58550.27
1196       59160.31
1197       58550.27
1198       58550.27
1199       58550.27
1200       59160.31
1201       56839.70
1202       56839.70
1203       56839.70
1204       56839.70
1205       59160.31
1206       56839.70
1207       56839.70
1208       56839.70
1209       56839.70
1210       59160.31
1211       58550.27
1212       58550.27
1213       59160.31
1214       59160.31
1215       56839.70
1216       59160.31
1217       59160.31
1218       56839.70
1219       58550.27
1220       59160.31
1221       59160.31
1222       59160.31
1223       56839.70
1224       59160.31
1225       56839.70
1226       56839.70
1227       59160.31
1228       57148.68
1229       57148.68
1230       59160.31
1231       59160.31
1232       58550.27
1233       58550.27
1234       58550.27
1235       59160.31
1236       59160.31
1237       58550.27
1238       59160.31
1239       59160.31
1240       59160.31
1241       57148.68
1242       58550.27
1243       59160.31
1244       56839.70
1245       56839.70
1246       59160.31
1247       59160.31
1248       59160.31
1249       59160.31
1250       59160.31
1251       58550.27
1252       58550.27
1253       56839.70
1254       58550.27
1255       59160.31
1256       59160.31
1257       58550.27
1258       58550.27
1259       56839.70
1260       59160.31
1261       56839.70
1262       56839.70
1263       59160.31
1264       59160.31
1265       59160.31
1266       59160.31
1267       59160.31
1268       59160.31
1269       58550.27
1270       59160.31
1271       59160.31
1272       59160.31
1273       56839.70
1274       59160.31
1275       56839.70
1276       57148.68
1277       58550.27
1278       59160.31
1279       59160.31
1280       59160.31
1281       59160.31
1282       59160.31
1283       59160.31
1284       59160.31
1285       59160.31
1286       59160.31
1287       59160.31
1288       58550.27
1289       56839.70
1290       59160.31
1291       58550.27
1292       59160.31
1293       56839.70
1294       59160.31
1295       59160.31
1296       59160.31
1297       59160.31
1298       59160.31
1299       58550.27
1300       58550.27
1301       59160.31
1302       59160.31
1303       59160.31
1304       59160.31
1305       59160.31
1306       59160.31
1307       59160.31
1308       59160.31
1309       56839.70
1310       59160.31
1311       56839.70
1312       56839.70
1313       59160.31
1314       59160.31
1315       58550.27
1316       58550.27
1317       58550.27
1318       59160.31
1319       59160.31
1320       59160.31
1321       58550.27
1322       59160.31
1323       58550.27
1324       59160.31
1325       58550.27
1326       59160.31
1327       57148.68
1328       58550.27
1329       56839.70
1330       59160.31
1331       59160.31
1332       58550.27
1333       58550.27
1334       59160.31
1335       58550.27
1336       56839.70
1337       59160.31
1338       58550.27
1339       57148.68
1340       59160.31
1341       56839.70
1342       59160.31
1343       56839.70
1344       56839.70
1345       58550.27
1346       58550.27
1347       58550.27
1348       58550.27
1349       59160.31
1350       58550.27
1351       58550.27
1352       59160.31
1353       59160.31
1354       59160.31
1355       58550.27
1356       58550.27
1357       59160.31
1358       58550.27
1359       56839.70
1360       59160.31
1361       58550.27
1362       59160.31
1363       57148.68
1364       58550.27
1365       58550.27
1366       57148.68
1367       58550.27
1368       59160.31
1369       58550.27
1370       59160.31
1371       57148.68
1372       58550.27
1373       59160.31
1374       59160.31
1375       58550.27
1376       56839.70
1377       58550.27
1378       59160.31
1379       56839.70
1380       59160.31
1381       58550.27
1382       58550.27
1383       56839.70
1384       59160.31
1385       59160.31
1386       59160.31
1387       59160.31
1388       58550.27
1389       59160.31
1390       59160.31
1391       59160.31
1392       58550.27
1393       58550.27
1394       56839.70
1395       56839.70
1396       56839.70
1397       58550.27
1398       57148.68
1399       56839.70
1400       58550.27
1401       57148.68
1402       59160.31
1403       58550.27
1404       56839.70
1405       59160.31
1406       59160.31
1407       59160.31
1408       59160.31
1409       59160.31
1410       59160.31
1411       59160.31
1412       58550.27
1413       59160.31
1414       59160.31
1415       59160.31
1416       59160.31
1417       59160.31
1418       56839.70
1419       57148.68
1420       57148.68
1421       58550.27
1422       58550.27
1423       59160.31
1424       59160.31
1425       57148.68
1426       59160.31
1427       59160.31
1428       59160.31
1429       59160.31
1430       59160.31
1431       59160.31
1432       56839.70
1433       57148.68
1434       59160.31
1435       59160.31
1436       59160.31
1437       57148.68
1438       59160.31
1439       58550.27
1440       59160.31
1441       56839.70
1442       56839.70
1443       59160.31
1444       59160.31
1445       58550.27
1446       58550.27
1447       56839.70
1448       59160.31
1449       58550.27
1450       59160.31
1451       59160.31
1452       58550.27
1453       59160.31
1454       59160.31
1455       56839.70
1456       56839.70
1457       59160.31
1458       59160.31
1459       59160.31
1460       59160.31
1461       59160.31
1462       56839.70
1463       56839.70
1464       59160.31
1465       59160.31
1466       57148.68
1467       57148.68
1468       59160.31
1469       59160.31
1470       58550.27
1471       59160.31
1472       58550.27
1473       56839.70
1474       59160.31
1475       59160.31
1476       59160.31
1477       59160.31
1478       57148.68
1479       59160.31
1480       59160.31
1481       58550.27
1482       56839.70
1483       56839.70
1484       56839.70
1485       56839.70
1486       56839.70
1487       56839.70
1488       56839.70
1489       59160.31
1490       57148.68
1491       57148.68
1492       58550.27
1493       57148.68
1494       56839.70
1495       58550.27
1496       58550.27
1497       59160.31
1498       59160.31
1499       59160.31
1500       57148.68
1501       59160.31
1502       59160.31
1503       58550.27
1504       56839.70
1505       58550.27
1506       58550.27
1507       59160.31
1508       59160.31
1509       56839.70
1510       59160.31
1511       56839.70
1512       59160.31
1513       58550.27
1514       58550.27
1515       58550.27
1516       59160.31
1517       59160.31
1518       58550.27
1519       59160.31
1520       58550.27
1521       59160.31
1522       56839.70
1523       58550.27
1524       56839.70
1525       56839.70
1526       59160.31
1527       58550.27
1528       59160.31
1529       59160.31
1530       59160.31
1531       59160.31
1532       59160.31
1533       58550.27
1534       59160.31
1535       59160.31
1536       58550.27
1537       59160.31
1538       58550.27
1539       59160.31
1540       58550.27
1541       59160.31
1542       58550.27
1543       57148.68
1544       59160.31
1545       56839.70
1546       58550.27
1547       59160.31
1548       58550.27
1549       59160.31
1550       59160.31
1551       59160.31
1552       59160.31
1553       58550.27
1554       59160.31
1555       59160.31
1556       58550.27
1557       59160.31
1558       59160.31
1559       59160.31
1560       59160.31
1561       59160.31
1562       59160.31
1563       56839.70
1564       59160.31
1565       56839.70
1566       59160.31
1567       59160.31
1568       59160.31
1569       59160.31
1570       59160.31
1571       58550.27
1572       57148.68
1573       59160.31
1574       56839.70
1575       57148.68
1576       59160.31
1577       56839.70
1578       59160.31
1579       59160.31
1580       59160.31
1581       57148.68
1582       56839.70
1583       59160.31
1584       59160.31
1585       59160.31
1586       58550.27
1587       59160.31
1588       59160.31
1589       59160.31
1590       56839.70
1591       58550.27
1592       58550.27
1593       57148.68
1594       56839.70
1595       56839.70
1596       59160.31
1597       56839.70
1598       56839.70
1599       58550.27
1600       58550.27
1601       59160.31
1602       56839.70
1603       56839.70
1604       59160.31
1605       58550.27
1606       58550.27
1607       56839.70
1608       59160.31
1609       58550.27
1610       58550.27
1611       58550.27
1612       59160.31
1613       59160.31
1614       57148.68
1615       56839.70
1616       56839.70
1617       56839.70
1618       57148.68
1619       56839.70
1620       57148.68
1621       59160.31
1622       59160.31
1623       59160.31
1624       59160.31
1625       59160.31
1626       57148.68
1627       56839.70
1628       59160.31
1629       59160.31
1630       59160.31
1631       59160.31
1632       56839.70
1633       57148.68
1634       59160.31
1635       58550.27
1636       59160.31
1637       59160.31
1638       59160.31
1639       59160.31
1640       59160.31
1641       59160.31
1642       59160.31
1643       58550.27
1644       58550.27
1645       56839.70
1646       59160.31
1647       58550.27
1648       56839.70
1649       59160.31
1650       59160.31
1651       57148.68
1652       58550.27
1653       59160.31
1654       58550.27
1655       58550.27
1656       58550.27
1657       57148.68
1658       59160.31
1659       56839.70
1660       58550.27
1661       57148.68
1662       59160.31
1663       59160.31
1664       56839.70
1665       58550.27
1666       59160.31
1667       59160.31
1668       58550.27
1669       58550.27
1670       58550.27
1671       58550.27
1672       56839.70
1673       56839.70
1674       56839.70
1675       58550.27
1676       59160.31
1677       59160.31
1678       59160.31
1679       59160.31
1680       58550.27
1681       58550.27
1682       58550.27
1683       59160.31
1684       59160.31
1685       57148.68
1686       58550.27
1687       59160.31
1688       59160.31
1689       58550.27
1690       58550.27
1691       59160.31
1692       58550.27
1693       56839.70
1694       57148.68
1695       57148.68
1696       59160.31
1697       59160.31
1698       58550.27
1699       56839.70
1700       59160.31
1701       59160.31
1702       59160.31
1703       59160.31
1704       59160.31
1705       56839.70
1706       58550.27
1707       59160.31
1708       59160.31
1709       56839.70
1710       59160.31
1711       59160.31
1712       59160.31
1713       59160.31
1714       56839.70
1715       59160.31
1716       32623.00
1717       59160.31
1718       59160.31
1719       59160.31
1720       56839.70
1721       59160.31
1722       59160.31
1723       59160.31
1724       59160.31
1725       58550.27
1726       57148.68
1727       59160.31
1728       59160.31
1729       59160.31
1730       56839.70
1731       59160.31
1732       58550.27
1733       56839.70
1734       59160.31
1735       56839.70
1736       59160.31
1737       59160.31
1738       59160.31
1739       57148.68
1740       56839.70
1741       59160.31
1742       58550.27
1743       56839.70
1744       59160.31
1745       59160.31
1746       59160.31
1747       56839.70
1748       59160.31
1749       58550.27
1750       59160.31
1751       56839.70
1752       56839.70
1753       56839.70
1754       56839.70
1755       56839.70
1756       59160.31
1757       59160.31
1758       59160.31
1759       56839.70
1760       59160.31
1761       58550.27
1762       57148.68
1763       57148.68
1764       59160.31
1765       56839.70
1766       59160.31
1767       56839.70
1768       59160.31
1769       59160.31
1770       59160.31
1771       59160.31
1772       59160.31
1773       59160.31
1774       59160.31
1775       59160.31
1776       57148.68
1777       59160.31
1778       59160.31
1779       59160.31
1780       59160.31
1781       56839.70
1782       59160.31
1783       59160.31
1784       59160.31
1785       59160.31
1786       59160.31
1787       58550.27
1788       58550.27
1789       58550.27
1790       59160.31
1791       58550.27
1792       59160.31
1793       56839.70
1794       58550.27
1795       58550.27
1796       59160.31
1797       59160.31
1798       59160.31
1799       57148.68
1800       59160.31
1801       59160.31
1802       59160.31
1803       59160.31
1804       58550.27
1805       58550.27
1806       59160.31
1807       58550.27
1808       59160.31
1809       59160.31
1810       58550.27
1811       58550.27
1812       59160.31
1813       59160.31
1814       58550.27
1815       58550.27
1816       58550.27
1817       59160.31
1818       59160.31
1819       59160.31
1820       57148.68
1821       59160.31
1822       58550.27
1823       58550.27
1824       58550.27
1825       59160.31
1826       59160.31
1827       58550.27
1828       58550.27
1829       59160.31
1830       59160.31
1831       59160.31
1832       59160.31
1833       59160.31
1834       59160.31
1835       59160.31
1836       59160.31
1837       59160.31
1838       59160.31
1839       59160.31
1840       57148.68
1841       59160.31
1842       58550.27
1843       57148.68
1844       59160.31
1845       59160.31
1846       58550.27
> 