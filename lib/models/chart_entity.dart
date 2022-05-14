import 'price_time_model.dart';

/// prices : [[1392595200000,645.14],[1392681600000,625.01],[1392768000000,620.99],[1392854400000,593.89],[1392940800000,582.75],[1393027200000,571.06],[1393113600000,622.97],[1393200000000,572.39],[1393286400000,489.31],[1393372800000,567.25],[1393459200000,586.28],[1393545600000,567.2],[1393632000000,560.11],[1393718400000,561.35],[1393804800000,585.79],[1393891200000,675.0],[1393977600000,658.24],[1394064000000,654.55],[1394150400000,617.62],[1394236800000,610.37],[1394323200000,636.17],[1394409600000,621.17],[1394496000000,624.23],[1394582400000,638.07],[1394668800000,639.03],[1394755200000,629.67],[1394841600000,638.07],[1394928000000,629.55],[1395014400000,623.705],[1395100800000,612.622],[1395187200000,610.636],[1395273600000,592.07],[1395360000000,582.303],[1395446400000,561.22],[1395532800000,567.779],[1395619200000,571.418],[1395705600000,582.55],[1395792000000,584.442],[1395878400000,567.64],[1395964800000,503.661],[1396051200000,502.302],[1396137600000,469.938],[1396224000000,457.399],[1396310400000,478.7163],[1396396800000,437.515],[1396483200000,447.0822],[1396569600000,448.8792],[1396656000000,464.8259],[1396742400000,460.7028],[1396828800000,457.792],[1396915200000,450.4638],[1397001600000,440.1983],[1397088000000,360.8407],[1397174400000,420.0563],[1397260800000,420.66],[1397347200000,414.9495],[1397433600000,457.6338],[1397520000000,520.1233],[1397606400000,529.1625],[1397692800000,494.4],[1397779200000,478.2312],[1397865600000,501.5515],[1397952000000,497.3177],[1398038400000,492.6733],[1398124800000,484.8533],[1398211200000,487.525],[1398297600000,494.2733],[1398384000000,458.8067],[1398470400000,453.8],[1398556800000,437.9216],[1398643200000,436.92],[1398729600000,443.27],[1398816000000,444.9968],[1398902400000,455.0913],[1398988800000,443.4734],[1399075200000,434.0333],[1399161600000,433.9432],[1399248000000,429.0761],[1399334400000,426.7634],[1399420800000,439.3],[1399507200000,437.3633],[1399593600000,447.4933],[1399680000000,452.505],[1399766400000,436.2833],[1399852800000,439.19],[1399939200000,437.305],[1400025600000,444.2467],[1400112000000,444.25],[1400198400000,445.165],[1400284800000,445.8533],[1400371200000,444.2133],[1400457600000,443.87],[1400544000000,483.4167],[1400630400000,488.7717],[1400716800000,522.6083],[1400803200000,524.475],[1400889600000,523.1083],[1400976000000,569.3767],[1401062400000,579.6217],[1401148800000,569.475],[1401235200000,571.5533],[1401321600000,565.26],[1401408000000,621.1467],[1401494400000,620.5],[1401580800000,640.1617],[1401667200000,656.41],[1401753600000,667.3683],[1401840000000,641.1833],[1401926400000,658.1],[1402012800000,648.63],[1402099200000,651.7083],[1402185600000,649.8983],[1402272000000,643.905],[1402358400000,649.0567],[1402444800000,630.0367],[1402531200000,567.175],[1402617600000,594.6833],[1402704000000,570.0033],[1402790400000,583.41],[1402876800000,592.52],[1402963200000,607.1583],[1403049600000,604.19],[1403136000000,593.3883000000002],[1403222400000,590.055],[1403308800000,591.2567],[1403395200000,595.0367],[1403481600000,586.1482999999998],[1403568000000,582.4149999999998],[1403654400000,561.4716999999999],[1403740800000,579.5867],[1403827200000,598.2367],[1403913600000,594.8717000000001],[1404000000000,598.4883],[1404086400000,637.7549999999999],[1404172800000,643.9350000000001],[1404259200000,648.1075000000002],[1404345600000,640.2838000000003],[1404432000000,627.1288],[1404518400000,627.5812999999999],[1404604800000,631.0025],[1404691200000,619.4950000000002],[1404777600000,620.0474999999996],[1404864000000,620.16],[1404950400000,615.1275000000002],[1405036800000,630.8350000000002],[1405123200000,633.6389951679741],[1405209600000,627.4623228193354],[1405296000000,618.2050265064788],[1405382400000,618.9524999999999],[1405468800000,614.1474999999997],[1405555200000,622.8950000000001],[1405641600000,627.0188000000003],[1405728000000,626.1763000000001],[1405814400000,620.5138],[1405900800000,619.9088000000002],[1405987200000,619.0062999999999],[1406073600000,617.9425000000001],[1406160000000,599.8088],[1406246400000,600.0963000000002],[1406332800000,593.7750000000001],[1406419200000,590.3788],[1406505600000,585.2787999999998],[1406592000000,581.7138],[1406678400000,560.7912999999999],[1406764800000,583.1821057431899],[1406851200000,593.8655273953669],[1406937600000,588.2306991611412],[1407024000000,585.5731940766995],[1407110400000,586.3686859113967],[1407196800000,582.4186267649761],[1407283200000,583.3249999999999],[1407369600000,587.2031590188054],[1407456000000,590.9072702245192],[1407542400000,588.1078559835756],[1407628800000,588.5004825541756],[1407715200000,573.4063],[1407801600000,567.4023482208208],[1407888000000,543.6674999999999],[1407974400000,503.7087999999998],[1408060800000,492.2844982828295],[1408147200000,521.0463000000001],[1408233600000,494.7813],[1408320000000,459.8863000000001],[1408406400000,484.1549999999999],[1408492800000,514.1863000000001],[1408579200000,515.605],[1408665600000,515.8263000000001],[1408752000000,496.5688000000001],[1408838400000,508.1138],[1408924800000,500.3863],[1409011200000,510.6387999999999],[1409097600000,510.4463],[1409184000000,506.9150000000001],[1409270400000,508.0963],[1409356800000,501.5300000000001],[1409443200000,480.0262999999999],[1409529600000,475.8200000000002],[1409616000000,474.6938],[1409702400000,474.7263000000001],[1409788800000,489.5475000000001],[1409875200000,480.2425000000001],[1409961600000,482.3588],[1410048000000,480.6025],[1410134400000,471.1250000000001],[1410220800000,471.7538],[1410307200000,477.1138],[1410393600000,476.3775000000001],[1410480000000,473.6874999999999],[1410566400000,476.0013],[1410652800000,474.795],[1410739200000,473.0313],[1410825600000,462.5925],[1410912000000,454.6238000000001],[1410998400000,423.565],[1411084800000,393.2624999999999],[1411171200000,408.5025],[1411257600000,396.62],[1411344000000,398.3113000000001],[1411430400000,433.7512999999999],[1411516800000,420.92],[1411603200000,407.9775],[1411689600000,402.88],[1411776000000,398.0074999999999],[1411862400000,375.9887999999999],[1411948800000,373.0888],[1412035200000,387.3512999999999],[1412121600000,380.8949999999999],[1412208000000,371.8413],[1412294400000,356.1899999999999],[1412380800000,327.8813],[1412467200000,325.1099999999999],[1412553600000,328.73],[1412640000000,331.7238],[1412726400000,353.3901000000001],[1412812800000,358.395],[1412899200000,357.5549999999999],[1412985600000,359.515],[1413072000000,374.1675000000001],[1413158400000,387.0387999999999],[1413244800000,398.2888],[1413331200000,392.1900000000001],[1413417600000,379.3912999999999],[1413504000000,380.2925],[1413590400000,389.1163],[1413676800000,386.945],[1413763200000,379.7699999999999],[1413849600000,382.4137999999999],[1413936000000,379.4425000000001],[1414022400000,356.2000000000001],[1414108800000,354.3175000000001],[1414195200000,347.0304940564094],[1414281600000,350.1888000000001],[1414368000000,348.29],[1414454400000,351.5638000000001],[1414540800000,333.1474999999999],[1414627200000,343.6674999999999],[1414713600000,336.5879758057807],[1414800000000,323.9763],[1414886400000,323.9849999999999],[1414972800000,323.995],[1415059200000,328.0083],[1415145600000,337.5933],[1415232000000,347.8183],[1415318400000,341.2317],[1415404800000,344.1783],[1415491200000,363.4241291015933],[1415577600000,363.7649999999999],[1415664000000,366.15],[1415750400000,418.5783],[1415836800000,414.7083],[1415923200000,395.245],[1416009600000,377.3267],[1416096000000,387.6233],[1416182400000,384.9],[1416268800000,374.8683],[1416355200000,376.7883],[1416441600000,355.3888345541618],[1416528000000,349.3882854323945],[1416614400000,351.5500000000001],[1416700800000,366.7817],[1416787200000,377.7417],[1416873600000,375.248],[1416960000000,365.7660000000001],[1417046400000,368.448],[1417132800000,376.951],[1417219200000,374.9649999999999],[1417305600000,376.472],[1417392000000,379.489],[1417478400000,381.3768000000001],[1417564800000,374.103],[1417651200000,368.2282000000001],[1417737600000,376.379],[1417824000000,373.671],[1417910400000,374.448],[1417996800000,361.433],[1418083200000,350.9280000000001],[1418169600000,346.9798718363186],[1418256000000,346.9089999999999],[1418342400000,351.502],[1418428800000,347.484],[1418515200000,350.133],[1418601600000,344.615],[1418688000000,328.5340000000001],[1418774400000,318.828],[1418860800000,309.765],[1418947200000,317.54],[1419033600000,328.7740000000001],[1419120000000,319.501],[1419206400000,329.886],[1419292800000,333.97],[1419379200000,322.194],[1419465600000,318.166],[1419552000000,327.7169708710151],[1419638400000,314.568],[1419724800000,316.491],[1419811200000,312.6329999999999],[1419897600000,310.079],[1419984000000,317.379],[1420070400000,313.9920000000001],[1420156800000,314.446],[1420243200000,286.572],[1420329600000,260.936],[1420416000000,273.22],[1420502400000,285.3738000000001],[1420588800000,295.8725],[1420675200000,284.4525],[1420761600000,289.5738000000001],[1420848000000,274.533],[1420934400000,267.184],[1421020800000,268.353667700943],[1421107200000,221.436],[1421193600000,172.1479],[1421280000000,210.5559],[1421366400000,205.816],[1421452800000,199.4914],[1421539200000,208.9892],[1421625600000,214.545],[1421712000000,210.5137],[1421798400000,224.0451],[1421884800000,232.0423000000001],[1421971200000,232.898],[1422057600000,248.096],[1422144000000,253.8388999999999],[1422230400000,271.2882000000001],[1422316800000,259.2356],[1422489600000,232.5329422304941],[1422576000000,228.6354]]
/// market_caps : [[1392595200000,8005429360.0],[1392681600000,7758139753.0],[1392768000000,7711283048.0],[1392854400000,7377405511.0],[1392940800000,7241455462.0],[1393027200000,7098404288.0],[1393113600000,7746491782.0],[1393200000000,7120130927.0],[1393286400000,6088839080.0],[1393372800000,7061198906.0],[1393459200000,7300959497.0],[1393545600000,7065922360.0],[1393632000000,6979712746.0],[1393718400000,6997269851.0],[1393804800000,7304054418.0],[1393891200000,8418886875.0],[1393977600000,8212712376.0],[1394064000000,8169324004.0],[1394150400000,7711032022.0],[1394236800000,7623170337.0],[1394323200000,7947989895.0],[1394409600000,7763134192.0],[1394496000000,7803983008.0],[1394582400000,7979719372.0],[1394668800000,7994472985.0],[1394755200000,7879611671.0],[1394841600000,7987471922.0],[1394928000000,7883319532.0],[1395014400000,7812934238.0],[1395100800000,7676276184.0],[1395187200000,7653772688.0],[1395273600000,7423640092.0],[1395360000000,7303695511.0],[1395446400000,7041711523.0],[1395532800000,7127031703.0],[1395619200000,7175538679.0],[1395705600000,7317439677.0],[1395792000000,7343002343],[1395878400000,7133333206.0],[1395964800000,6331497248.0],[1396051200000,6317113200.0],[1396137600000,5912148997.0],[1396224000000,5756309240.0],[1396310400000,6023351178.0],[1396396800000,5506313797.0],[1396483200000,5604036051.0],[1396569600000,5641613449.0],[1396656000000,5824866676.0],[1396742400000,5808861023.0],[1396828800000,5775641210.0],[1396915200000,5718579640.0],[1397001600000,5589580215.0],[1397088000000,4611917257.0],[1397174400000,5318033925.0],[1397260800000,5321874506.0],[1397347200000,5234667259.0],[1397433600000,5802302128.0],[1397520000000,6522974948.0],[1397606400000,6674473792.0],[1397692800000,6278792387.0],[1397779200000,6074116360.0],[1397865600000,6353700029.0],[1397952000000,6312896984.0],[1398038400000,6284666435.0],[1398124800000,6187034895.0],[1398211200000,6231920621.0],[1398297600000,6350012525.0],[1398384000000,5857079867.0],[1398470400000,5822776642.0],[1398556800000,5542720307.0],[1398643200000,5593864954.0],[1398729600000,5683724524.0],[1398816000000,5690810165.0],[1398902400000,5821425472.0],[1398988800000,5716625927.0],[1399075200000,5570422954.0],[1399161600000,5554777406.0],[1399248000000,5518951942.0],[1399334400000,5463474513.0],[1399420800000,5590798951.0],[1399507200000,5609810850.0],[1399593600000,5730133343.0],[1399680000000,5795543101.0],[1399766400000,5598956479.0],[1399852800000,5633629021.0],[1399939200000,5625308533.0],[1400025600000,5669111766.0],[1400112000000,5712906334.0],[1400198400000,5725217915.0],[1400284800000,5737967927.0],[1400371200000,5706165793.0],[1400457600000,5706978471.0],[1400544000000,6214911439.0],[1400630400000,6294422409.0],[1400716800000,6716604600.0],[1400803200000,6662964359.0],[1400889600000,6727963028.0],[1400976000000,7325371780.0],[1401062400000,7479335238.0],[1401148800000,7325147499.0],[1401235200000,7402205099.0],[1401321600000,7290260762.0],[1401408000000,7897757908.0],[1401494400000,8007248676.0],[1401580800000,8094125581.0],[1401667200000,8487587033.0],[1401753600000,8580309812.0],[1401840000000,8249183077.0],[1401926400000,8478552324.0],[1402012800000,8409353268.0],[1402099200000,8428206589.0],[1402185600000,8445489607.0],[1402272000000,8290260777.375],[1402358400000,8359493314.815],[1402444800000,8116778557.0175],[1402531200000,7309311839.375],[1402617600000,7666330027.785],[1402704000000,7350662806.2225],[1402790400000,7526353631.25],[1402876800000,7646618730.0],[1402963200000,7838352937.170001],[1403049600000,7802403926.750001],[1403136000000,7665345555.277503],[1403222400000,7625133251.249999],[1403308800000,7643411863.58],[1403395200000,7694627830.545],[1403481600000,7582634214.4124975],[1403568000000,7537047075.374997],[1403654400000,7268686297.067499],[1403740800000,7505647765.0],[1403827200000,7750006889.325],[1403913600000,7709210052.5650015],[1404000000000,7758488114.8425],[1404086400000,8269625590.124999],[1404172800000,8351853048.375001],[1404259200000,8408206448.562503],[1404345600000,8308930858.410004],[1404432000000,8140821665.68],[1404518400000,8149049043.304998],[1404604800000,8195697095.937501],[1404691200000,8048556476.875003],[1404777600000,8058075305.249995],[1404864000000,8060033472.0],[1404950400000,7994627579.250003],[1405036800000,8198773244.500003],[1405123200000,8235215928.499609],[1405209600000,8154939570.986056],[1405296000000,8034625267.996753],[1405382400000,8044339956.749999],[1405468800000,7981890813.249996],[1405555200000,8095579446.500001],[1405641600000,8173252759.880004],[1405728000000,8165088481.480001],[1405814400000,8093609698.919999],[1405900800000,8088074095.3600025],[1405987200000,8078589320.669999],[1406073600000,8066930366.250001],[1406160000000,7832303310.4],[1406246400000,7837677745.410003],[1406332800000,7758026640.000001],[1406419200000,7715896688.72],[1406505600000,7651364384.369997],[1406592000000,7607013191.22],[1406678400000,7335781094.212499],[1406764800000,7630850376.333778],[1406851200000,7773046501.525218],[1406937600000,7701689838.349342],[1407024000000,7669135008.183718],[1407110400000,7681459103.873592],[1407196800000,7631722475.814864],[1407283200000,7645917854.374999],[1407369600000,7699128899.554043],[1407456000000,7749970439.220903],[1407542400000,7716004475.897311],[1407628800000,7723612745.649575],[1407715200000,7528222642.385],[1407801600000,7451879444.947211],[1407888000000,7142146355.812499],[1407974400000,6619438824.319998],[1408060800000,6470895123.240938],[1408147200000,6851511348.007502],[1408233600000,6508254263.94],[1408320000000,6051494358.652501],[1408406400000,6373125926.999999],[1408492800000,6770599523.880001],[1408579200000,6791368598.25],[1408665600000,6796320998.280002],[1408752000000,6544627813.360002],[1408838400000,6698642065.23],[1408924800000,6598469041.525],[1409011200000,6735887474.679998],[1409097600000,6735479301.2325],[1409184000000,6691049888.250001],[1409270400000,6708840033.1625],[1409356800000,6624308546.000001],[1409443200000,6342575501.242498],[1409529600000,6288710716.500003],[1409616000000,6275487638.035],[1409702400000,6277994218.035002],[1409788800000,6475917910.312501],[1409875200000,6354592772.125001],[1409961600000,6384706079.29],[1410048000000,6363333295.8125],[1410134400000,6239603056.250001],[1410220800000,6249605640.88],[1410307200000,6322521232.08],[1410393600000,6314752955.062501],[1410480000000,6280918617.187499],[1410566400000,6313764543.4275],[1410652800000,6299010306.0],[1410739200000,6278083239.3825],[1410825600000,6141505242.9375],[1410912000000,6037835956.610002],[1410998400000,5627251629.25],[1411084800000,5226301319.999999],[1411171200000,5430693510.375],[1411257600000,5274312253.0],[1411344000000,5298466363.772501],[1411430400000,5771559860.494999],[1411516800000,5602424154.0],[1411603200000,5431965426.5625],[1411689600000,5365475264.0],[1411776000000,5301867857.687499],[1411862400000,5009825166.719998],[1411948800000,4972406272.54],[1412035200000,5164012591.079999],[1412121600000,5079406227.749999],[1412208000000,4959944620.5375],[1412294400000,4752500693.999999],[1412380800000,4376051376.385],[1412467200000,4340421693.749999],[1412553600000,4390074094.5],[1412640000000,4431199692.78],[1412726400000,4721892499.170001],[1412812800000,4790047733.625],[1412899200000,4780224305.999999],[1412985600000,4807704216.25],[1413072000000,5005060917.937501],[1413158400000,5178714607.579999],[1413244800000,5330587769.78],[1413331200000,5250404406.000001],[1413417600000,5080504776.5599985],[1413504000000,5093875427.8125],[1413590400000,5213672024.625],[1413676800000,5185875584.5],[1413763200000,5090987746.499999],[1413849600000,5127920489.029999],[1413936000000,5089595057.375001],[1414022400000,4779135400.000001],[1414108800000,4755312883.375001],[1414195200000,4658797625.083782],[1414281600000,4702361470.560001],[1414368000000,4678274816.25],[1414454400000,4723453013.090001],[1414540800000,4477252539.374999],[1414627200000,4620136994.687499],[1414713600000,4526519245.630091],[1414800000000,4358250678.7125],[1414886400000,4359606956.999999],[1414972800000,4361102298.0],[1415059200000,4416492355.9725],[1415145600000,4546689684.735],[1415232000000,4685738573.94],[1415318400000,4598267773.35],[1415404800000,4639316977.02],[1415491200000,4900092960.69292],[1415577600000,4906043990.249999],[1415664000000,4939381807.5],[1415750400000,5648170006.71],[1415836800000,5597421602.175],[1415923200000,5336222507.25],[1416009600000,5095655585.9875],[1416096000000,5236180276.3025],[1416182400000,5200788045.0],[1416268800000,5066663712.555],[1416355200000,5093942323.3125],[1416441600000,4805825477.746428],[1416528000000,4725799744.63716],[1416614400000,4756418767.500001],[1416700800000,4963794289.2375],[1416787200000,5113527167.07],[1416873600000,5080998638.0],[1416960000000,4953852406.650002],[1417046400000,4991429534.4],[1417132800000,5108072424.775],[1417219200000,5082659949.124999],[1417305600000,5104546200.8],[1417392000000,5146696228.575],[1417478400000,5173729065.540001],[1417564800000,5076166196.7],[1417651200000,4997777244.500001],[1417737600000,5109881265.075],[1417824000000,5074368104.025],[1417910400000,5086108461.6],[1417996800000,4910799206.825],[1418083200000,4769269437.600001],[1418169600000,4716905099.220487],[1418256000000,4717173182.024999],[1418342400000,4780796277.1],[1418428800000,4727528507.1],[1418515200000,4764706150.575],[1418601600000,4690951072.25],[1418688000000,4473187530.400002],[1418774400000,4342046795.7],[1418860800000,4219673038.875],[1418947200000,4326569823.5],[1419033600000,4480153981.900002],[1419120000000,4353792201.85],[1419206400000,4498284260.25],[1419292800000,4555334101.5],[1419379200000,4395934387.5],[1419465600000,4342234118.2],[1419552000000,4473844613.694206],[1419638400000,4295536138.8],[1419724800000,4322768586.675],[1419811200000,4271645363.8499985],[1419897600000,4237996980.525],[1419984000000,4338943850.325],[1420070400000,4293958347.0000014],[1420156800000,4301448334.7],[1420243200000,3921358112.1],[1420329600000,3571639780.8],[1420416000000,3740880426.5],[1420502400000,3908408221.3500013],[1420588800000,4053238742.4375],[1420675200000,3897824162.25],[1420761600000,3968992614.2850013],[1420848000000,3763909199.925],[1420934400000,3664201453.6],[1421020800000,3681154854.371071],[1421107200000,3038251389.3],[1421193600000,2362639549.8525],[1421280000000,2890521922.995],[1421366400000,2826188131.0],[1421452800000,2740019366.285],[1421539200000,2871292169.34],[1421625600000,2948379298.875],[1421712000000,2893626589.035],[1421798400000,3080429686.665],[1421884800000,3191202338.1525016],[1421971200000,3203686663.5],[1422057600000,3413521852.0],[1422144000000,3493324595.8274984],[1422230400000,3734336330.6400013],[1422316800000,3568728002.06],[1422489600000,3203612158.433073],[1422576000000,3150704413.815]]
/// total_volumes : [[1392595200000,48516100.0],[1392681600000,22066400.0],[1392768000000,13276100.0],[1392854400000,35743400.0],[1392940800000,56059000.0],[1393027200000,21675800.0],[1393113600000,44590700.0],[1393200000000,47229500.0],[1393286400000,111102000.0],[1393372800000,75039300.0],[1393459200000,38219000.0],[1393545600000,24649000.0],[1393632000000,22903800.0],[1393718400000,11143900.0],[1393804800000,33049800.0],[1393891200000,86124600.0],[1393977600000,26946700.0],[1394064000000,16659800.0],[1394150400000,29823000.0],[1394236800000,21353000.0],[1394323200000,15489000.0],[1394409600000,16425700.0],[1394496000000,12542300.0],[1394582400000,20806300.0],[1394668800000,12866600.0],[1394755200000,11939800.0],[1394841600000,5963930.0],[1394928000000,4834240.0],[1395014400000,13371500.0],[1395100800000,23217800.0],[1395187200000,15227500.0],[1395273600000,20048500.0],[1395360000000,38053400.0],[1395446400000,17983700.0],[1395532800000,10283000.0],[1395619200000,17185800.0],[1395705600000,18634700.0],[1395792000000,17583200],[1395878400000,22316700.0],[1395964800000,79571600.0],[1396051200000,26810900.0],[1396137600000,17867800.0],[1396224000000,56838500.0],[1396310400000,35685800.0],[1396396800000,49647600.0],[1396483200000,40765500.0],[1396569600000,22925500.0],[1396656000000,13404500.0],[1396742400000,10241400.0],[1396828800000,9802770.0],[1396915200000,10921600.0],[1397001600000,13204400.0],[1397088000000,55868300.0],[1397174400000,62562800.0],[1397260800000,19226500.0],[1397347200000,22493500.0],[1397433600000,50730200.0],[1397520000000,49561000.0],[1397606400000,56480100.0],[1397692800000,34025500.0],[1397779200000,19042400.0],[1397865600000,19588200.0],[1397952000000,12103100.0],[1398038400000,15171400.0],[1398124800000,9770190.335015288],[1398211200000,8412033.043193607],[1398297600000,9512215.003743047],[1398384000000,44062361.80745845],[1398470400000,11997979.867558926],[1398556800000,9760121.834963577],[1398643200000,20781687.97683261],[1398729600000,15011935.551518673],[1398816000000,13054745.683608102],[1398902400000,11953625.134976294],[1398988800000,8165770.147874059],[1399075200000,9446958.635517636],[1399161600000,5229830.630972039],[1399248000000,8567756.392353557],[1399334400000,10822749.124633348],[1399420800000,16360711.036365218],[1399507200000,8491458.546028852],[1399593600000,8820053.293163313],[1399680000000,5529665.186791251],[1399766400000,11522907.034093864],[1399852800000,5903393.674349334],[1399939200000,5619474.108984868],[1400025600000,6764834.29138491],[1400112000000,6219944.38500291],[1400198400000,5292980.730698652],[1400284800000,2642092.2130057854],[1400371200000,7828552.781743507],[1400457600000,11697296.019628461],[1400544000000,59415447.482920215],[1400630400000,20125942.252461053],[1400716800000,28758404.007310245],[1400803200000,30253343.70043255],[1400889600000,10236386.684289353],[1400976000000,43762384.55551313],[1401062400000,26174591.715237826],[1401148800000,33059214.23635299],[1401235200000,15739188.285988351],[1401321600000,14362990.94411866],[1401408000000,42271699.63749006],[1401494400000,18656368.10083591],[1401580800000,53565199.679242626],[1401667200000,41153743.55147136],[1401753600000,37419432.11298669],[1401840000000,43722721.85640881],[1401926400000,24809749.5691626],[1402012800000,14032413.3666774],[1402099200000,12954147.496912882],[1402185600000,6819173.803153491],[1402272000000,15165258.001682783],[1402358400000,13698528.103743391],[1402444800000,20706208.81438605],[1402531200000,41032286.05220322],[1402617600000,37950646.151919045],[1402704000000,33752601.59059282],[1402790400000,19377536.876052536],[1402876800000,25803391.330629352],[1402963200000,14064824.78230287],[1403049600000,14955835.77044088],[1403136000000,11266428.30113169],[1403222400000,14899960.97248743],[1403308800000,8304999.789508111],[1403395200000,9952321.043074599],[1403481600000,11249420.61918756],[1403568000000,11613405.81708644],[1403654400000,18237241.345597345],[1403740800000,12733876.653646294],[1403827200000,19906418.825948466],[1403913600000,13624207.397432778],[1404000000000,8878656.403461741],[1404086400000,47015974.05882847],[1404172800000,38496541.685756736],[1404259200000,25992122.167154185],[1404345600000,18539083.74715486],[1404432000000,22418156.550761543],[1404518400000,9292051.769341238],[1404604800000,11187211.133814601],[1404691200000,18525910.64620546],[1404777600000,9269839.610474609],[1404864000000,9329941.299859986],[1404950400000,15009203.935868405],[1405036800000,15836826.82458833],[1405123200000,13267457.870885218],[1405209600000,11435029.121800043],[1405296000000,2646077079.3567286],[1405382400000,10776372.317991683],[1405468800000,13679053.322608326],[1405555200000,14637445.280315427],[1405641600000,14086517.690069783],[1405728000000,7640657.031253545],[1405814400000,4767570.26288198],[1405900800000,8225443.991691393],[1405987200000,7698580.9229142675],[1406073600000,9043046.013458895],[1406160000000,24703385.252356224],[1406246400000,20256797.398241412],[1406332800000,11443452.28870578],[1406419200000,9300140.74662901],[1406505600000,23117898.15816101],[1406592000000,11790372.332249207],[1406678400000,18397948.917774394],[1406764800000,23252091.391060743],[1406851200000,22927176.796534866],[1406937600000,9260582.608232379],[1407024000000,9179432.125804095],[1407110400000,11325982.78547038],[1407196800000,13046784.254992407],[1407283200000,12769922.201948395],[1407369600000,11942668.461052554],[1407456000000,12277588.527439365],[1407542400000,7934876.355063622],[1407628800000,8504716.676129557],[1407715200000,16394404.861505693],[1407801600000,15825348.317337945],[1407888000000,36644669.931792624],[1407974400000,46265624.62553175],[1408060800000,31123413.362281278],[1408147200000,27941383.427219495],[1408233600000,28596111.80240412],[1408320000000,60758484.534893334],[1408406400000,45173284.02810885],[1408492800000,55122051.107402146],[1408579200000,47111104.07847081],[1408665600000,34159957.60252427],[1408752000000,23986341.558129977],[1408838400000,18509793.266628254],[1408924800000,15737842.720394537],[1409011200000,21288943.923400816],[1409097600000,21505988.92038193],[1409184000000,18467248.48861226],[1409270400000,16001723.62834569],[1409356800000,10747408.658269238],[1409443200000,43358429.758384064],[1409529600000,19343751.807486504],[1409616000000,21083352.224831242],[1409702400000,14233663.71176932],[1409788800000,23597497.056552686],[1409875200000,14058803.04997312],[1409961600000,9776900.705157386],[1410048000000,7748654.382831849],[1410134400000,27618107.417669404],[1410220800000,20218609.30319999],[1410307200000,20792329.424092777],[1410393600000,14579193.13186878],[1410480000000,13395857.32409978],[1410566400000,14007703.004896387],[1410652800000,11468703.326540692],[1410739200000,12723496.884358438],[1410825600000,16956832.82370955],[1410912000000,23179362.991400693],[1410998400000,48338347.98438927],[1411084800000,47766762.1622319],[1411171200000,47847915.31720254],[1411257600000,32843840.15919743],[1411344000000,24225299.2144736],[1411430400000,57448184.246617585],[1411516800000,32689372.436466075],[1411603200000,30733509.96720748],[1411689600000,23707503.068168852],[1411776000000,16698720.05207724],[1411862400000,29504744.82791448],[1411948800000,37668363.03976922],[1412035200000,34519038.81008948],[1412121600000,26019381.155069035],[1412208000000,19867284.508463353],[1412294400000,29080111.339532],[1412380800000,44971218.61630971],[1412467200000,81809696.99023308],[1412553600000,75997580.13997829],[1412640000000,43924704.45993865],[1412726400000,50777426.825353265],[1412812800000,80036548.33990295],[1412899200000,42046080.75021416],[1412985600000,32266988.405666195],[1413072000000,30739066.019255087],[1413158400000,55435747.92234496],[1413244800000,71417120.06933361],[1413331200000,49257724.14281866],[1413417600000,48941848.6690588],[1413504000000,38063635.90178972],[1413590400000,43799624.062763646],[1413676800000,32870166.09728563],[1413763200000,32186402.177928016],[1413849600000,33195457.629108418],[1413936000000,22279085.760041673],[1414022400000,48354309.486003265],[1414108800000,32650701.35283577],[1414195200000,35098508.122770295],[1414281600000,27618300.827371847],[1414368000000,40322147.37977852],[1414454400000,26517269.319478102],[1414540800000,43376134.310925096],[1414627200000,59854847.07670034],[1414713600000,30524273.859307867],[1414800000000,38569972.59373859],[1414886400000,28711350.70534258],[1414972800000,40772300.42284785],[1415059200000,35073797.880440444],[1415145600000,44434915.106879316],[1415232000000,43131102.62856433],[1415318400000,40263476.29477718],[1415404800000,30212775.72296773],[1415491200000,51466025.86583119],[1415577600000,62274660.836041614],[1415664000000,45679773.63975148],[1415750400000,234617998.94235379],[1415836800000,338849744.1846642],[1415923200000,263499968.5892329],[1416009600000,99179350.3470273],[1416096000000,95731301.28432417],[1416182400000,152824089.08328944],[1416268800000,109440633.05073106],[1416355200000,84367865.3742223],[1416441600000,93722502.0366924],[1416528000000,100624477.55914839],[1416614400000,68856354.94119315],[1416700800000,71063869.31374641],[1416787200000,116848548.38822386],[1416873600000,115570302.47559404],[1416960000000,92282203.67741974],[1417046400000,70974036.26141815],[1417132800000,91254232.81791146],[1417219200000,100952560.51474999],[1417305600000,74926943.90674321],[1417392000000,64120830.50054466],[1417478400000,66841251.26995943],[1417564800000,74772912.71073525],[1417651200000,62639548.33058211],[1417737600000,57857463.42592923],[1417824000000,48428933.75856517],[1417910400000,38514374.875024594],[1417996800000,66593741.913184226],[1418083200000,88924869.65991856],[1418169600000,59696950.62553664],[1418256000000,118502898.82834333],[1418342400000,50698218.39649164],[1418428800000,38735004.41273056],[1418515200000,44354135.28957544],[1418601600000,30644200.622725755],[1418688000000,71798679.48126574],[1418774400000,76239460.27345972],[1418860800000,90976235.79233617],[1418947200000,60607669.3459044],[1419033600000,64328493.85057997],[1419120000000,58024786.31176],[1419206400000,51126866.96604784],[1419292800000,58571793.10819222],[1419379200000,37974791.61572064],[1419465600000,75362825.06098935],[1419552000000,93256490.21344973],[1419638400000,145862961.0588076],[1419724800000,67051620.38671447],[1419811200000,99471184.46915883],[1419897600000,71609763.01677348],[1419984000000,71036111.34880373],[1420070400000,46999364.08867299],[1420156800000,38855906.30053607],[1420243200000,118778941.40912902],[1420329600000,205500148.96968707],[1420416000000,155038125.45582142],[1420502400000,97002895.97640781],[1420588800000,110674232.97875299],[1420675200000,86570544.47058573],[1420761600000,83478400.2771182],[1420848000000,92683835.63260388],[1420934400000,73256737.91089578],[1421020800000,78982214.88677162],[1421107200000,215752219.9219919],[1421193600000,236006920.8178313],[1421280000000,257637517.29041365],[1421366400000,176217465.4940408],[1421452800000,106431481.13147792],[1421539200000,118664232.7276146],[1421625600000,105545327.33818196],[1421712000000,94312137.93638834],[1421798400000,99166469.19882473],[1421884800000,151229886.42783546],[1421971200000,126038219.2115576],[1422057600000,134933345.06544757],[1422144000000,142426844.88892275],[1422230400000,401755946.5274641],[1422316800000,339951744.7443284],[1422489600000,161971565.54864252],[1422576000000,105832532.60469383]]

class ChartEntity {
  ChartEntity({
      this.prices,
     });

  ChartEntity.fromJson(dynamic json) {
    prices = json['prices'] ?? [];
  }

  List<dynamic>? prices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['prices'] = prices;
    return map;
  }

}