"?Q
DDeviceIDLE"IDLE1?????ƠBA?????ƠBQ      ??Y      ???Unknown
BHostIDLE"IDLE1??????@A??????@a???P????i???P?????Unknown
tHost_FusedMatMul"sequential/m1_hidden1/Relu(1??????@9??????@A??????@I??????@a???[i??i?????D???Unknown
~HostMatMul"*gradient_tape/sequential/m1_hidden1/MatMul(133333c?@933333c?@A33333c?@I33333c?@aa?:[???iL?c??%???Unknown
^HostGatherV2"GatherV2(1?????G?@9?????G?@A?????G?@I?????G?@a??¦?^??i???????Unknown
uHostFlushSummaryWriter"FlushSummaryWriter(133333/?@933333/?@A33333/?@I33333/?@a,C@???i?й?????Unknown?
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1?????||@9?????||@A?????||@I?????||@aS3???։?i??|%M???Unknown
dHostDataset"Iterator::Model(1     `|@9     `|@A33333|@I33333|@a??
8Ph??iq?\f?}???Unknown
?	HostMatMul",gradient_tape/sequential/m1_hidden2/MatMul_1(1      y@9      y@A      y@I      y@a??B?Ԭ??iDށ??????Unknown
~
HostMatMul"*gradient_tape/sequential/m1_hidden2/MatMul(1?????p@9?????p@A?????p@I?????p@aG?NS?+}?iq{(?????Unknown
?Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1?????il@9?????il@A?????il@I?????il@a]???0?y?i?????F???Unknown
tHost_FusedMatMul"sequential/m1_hidden2/Relu(1??????f@9??????f@A??????f@I??????f@aR㊌?t?i? ???o???Unknown
?HostBiasAddGrad"7gradient_tape/sequential/m1_hidden1/BiasAdd/BiasAddGrad(1     ?d@9     ?d@A     ?d@I     ?d@ae??Ay?r?i?eb?,????Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden1/ReluGrad(1     @d@9     @d@A     @d@I     @d@a?Z???]r?i?\???????Unknown
tHost_FusedMatMul"sequential/m1_hidden3/Relu(1?????La@9?????La@A?????La@I?????La@alo}??ao?i???J????Unknown
?HostMatMul",gradient_tape/sequential/m1_hidden3/MatMul_1(1333333a@9333333a@A333333a@I333333a@a3?&?r3o?i? ?~????Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden2/ReluGrad(1????̌_@9????̌_@A????̌_@I????̌_@aɅ?l??l?ip??????Unknown
ZHostArgMax"ArgMax(1??????\@9??????\@A??????\@I??????\@a??X??i?iS?{/???Unknown
qHostSoftmax"sequential/m1_output/Softmax(1fffffZ@9fffffZ@AfffffZ@IfffffZ@a??^KԚg?i?MOO?F???Unknown
~HostMatMul"*gradient_tape/sequential/m1_hidden3/MatMul(1     ?Y@9     ?Y@A     ?Y@I     ?Y@an???=g?iJ?C?]???Unknown
?HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1fffffFX@9fffffFX@AfffffFX@IfffffFX@a?4)?}f?i(???s???Unknown
?HostResourceApplyAdam"$Adam/Adam/update_4/ResourceApplyAdam(1fffff&R@9fffff&R@Afffff&R@Ifffff&R@a????Nv`?iq`????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1??????J@9??????J@A??????J@I??????J@a?^?#W X?i?;p????Unknown
?HostBiasAddGrad"7gradient_tape/sequential/m1_hidden2/BiasAdd/BiasAddGrad(133333sG@933333sG@A33333sG@I33333sG@aJ.d??DU?i??C?????Unknown
?HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1333333E@9333333E@A333333E@I333333E@a?y?1:S?i????????Unknown
HostMatMul"+gradient_tape/sequential/m1_output/MatMul_1(1333333D@9333333D@A333333D@I333333D@an?%?MRR?i?B?٭???Unknown
lHostIteratorGetNext"IteratorGetNext(1333333B@9333333B@A333333B@I333333B@a63????P?i%????Unknown
iHostWriteSummary"WriteSummary(1      @@9      @@A      @@I      @@a?C/M?i???[????Unknown?
}HostMatMul")gradient_tape/sequential/m1_output/MatMul(1      :@9      :@A      :@I      :@a߶?A?G?i(s?@????Unknown
vHost_FusedMatMul"sequential/m1_output/BiasAdd(1      :@9      :@A      :@I      :@a߶?A?G?i??&????Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden3/ReluGrad(1?????L8@9?????L8@A?????L8@I?????L8@a|??K
F?i?	???????Unknown
` HostGatherV2"
GatherV2_1(1??????2@9??????2@A??????2@I??????2@a?Mq^??@?iJ??b?????Unknown
?!HostBiasAddGrad"6gradient_tape/sequential/m1_output/BiasAdd/BiasAddGrad(1??????0@9??????0@A??????0@I??????0@aP??p?y>?i?????????Unknown
?"HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff,@9ffffff,@Affffff,@Iffffff,@a?U?I?9?i+ 3??????Unknown
?#HostResourceApplyAdam"$Adam/Adam/update_7/ResourceApplyAdam(1      *@9      *@A      *@I      *@a߶?A?7?i?>???????Unknown
?$HostDataset"5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(1ffffff+@9ffffff+@A??????&@I??????&@aR㊌?4?i??,Cp????Unknown
?%HostBiasAddGrad"7gradient_tape/sequential/m1_hidden3/BiasAdd/BiasAddGrad(1ffffff#@9ffffff#@Affffff#@Iffffff#@a??ˋ??1?inI?T?????Unknown
?&HostResourceApplyAdam"$Adam/Adam/update_6/ResourceApplyAdam(1      !@9      !@A      !@I      !@a??y??.?i
?޽?????Unknown
?'HostResourceApplyAdam"$Adam/Adam/update_5/ResourceApplyAdam(1ffffff@9ffffff@Affffff@Iffffff@a??c???+?iHw??I????Unknown
s(HostDataset"Iterator::Model::ParallelMapV2(1333333@9333333@A333333@I333333@a??7#?
%?iȪ̖?????Unknown
[)HostAddV2"Adam/add(1ffffff@9ffffff@Affffff@Iffffff@a???? Q$?i?ܨ?????Unknown
?*HostDataset"/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(1      #@9      #@A      @I      @an?0_@?#?i????????Unknown
e+Host
LogicalAnd"
LogicalAnd(1      @9      @A      @I      @a6*?m?#"?i?ظ*A????Unknown?
?,HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1??????@9??????@A??????@I??????@a??3??i?4W?@????Unknown
[-HostPow"
Adam/Pow_1(1333333@9333333@A333333@I333333@a3?&?r3?i?%?/:????Unknown
t.HostAssignAddVariableOp"AssignAddVariableOp(1333333@9333333@A333333@I333333@a3?&?r3?i??3????Unknown
v/HostAssignAddVariableOp"AssignAddVariableOp_4(1??????@9??????@A??????@I??????@aP??p?y?i??'????Unknown
X0HostEqual"Equal(1??????@9??????@A??????@I??????@aP??p?y?i?#?f????Unknown
v1HostCast"$sparse_categorical_crossentropy/Cast(1??????@9??????@A??????@I??????@aP??p?y?iI?#4????Unknown
?2HostDataset"?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice(1      @9      @A      @I      @a?C/?i[?e?????Unknown
x3HostDataset"#Iterator::Model::ParallelMapV2::Zip(1      ;@9      ;@Affffff@Iffffff@a??c????i*6??????Unknown
~4HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1ffffff
@9ffffff
@Affffff
@Iffffff
@aQѠ????i1?8??????Unknown
X5HostCast"Cast_2(1      @9      @A      @I      @a?2?P???i?S?A????Unknown
?6HostReadVariableOp"+sequential/m1_output/BiasAdd/ReadVariableOp(1      @9      @A      @I      @a?2?P???iUn??????Unknown
?7HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(1      @9      @A      @I      @a?2?P???i爈??????Unknown
X8HostCast"Cast_3(1333333@9333333@A333333@I333333@a??7#?
?i???PF????Unknown
Y9HostPow"Adam/Pow(1      @9      @A      @I      @a6*?m?#?i ?o?????Unknown
v:HostAssignAddVariableOp"AssignAddVariableOp_2(1      @9      @A      @I      @a6*?m?#?i?p?h????Unknown
y;HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1333333@9333333@A333333@I333333@aR?t@j?iA?R??????Unknown
?<HostDataset"AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1ffffff@9ffffff??Affffff@Iffffff??an?[??i+by????Unknown
?=HostReadVariableOp",sequential/m1_hidden1/BiasAdd/ReadVariableOp(1??????@9??????@A??????@I??????@a??3??iJ??????Unknown
?>HostCast"bsparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast_1(1??????@9??????@A??????@I??????@a??3??ix??x????Unknown
o?HostReadVariableOp"Adam/ReadVariableOp(1?????? @9?????? @A?????? @I?????? @aP??p?y?iR;???????Unknown
?@HostReadVariableOp"+sequential/m1_hidden3/MatMul/ReadVariableOp(1?????? @9?????? @A?????? @I?????? @aP??p?y?i??T?l????Unknown
?AHostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1?????? @9?????? @A?????? @I?????? @aP??p?y?i????????Unknown
tBHostReadVariableOp"Adam/Cast/ReadVariableOp(1       @9       @A       @I       @a?C/?iטZ????Unknown
]CHostCast"Adam/Cast_1(1       @9       @A       @I       @a?C/?izr???????Unknown
VDHostSum"Sum_2(1       @9       @A       @I       @a?C/?i??O?B????Unknown
?EHostReadVariableOp"+sequential/m1_hidden1/MatMul/ReadVariableOp(1       @9       @A       @I       @a?C/?i<#??????Unknown
?FHostReadVariableOp"+sequential/m1_hidden2/MatMul/ReadVariableOp(1       @9       @A       @I       @a?C/?i?{??*????Unknown
?GHostReadVariableOp",sequential/m1_hidden2/BiasAdd/ReadVariableOp(1ffffff??9ffffff??Affffff??Iffffff??a??c????i,i{F?????Unknown
vHHostReadVariableOp"Adam/Cast_3/ReadVariableOp(1????????9????????A????????I????????a?o?`*
?i??$?????Unknown
bIHostDivNoNan"div_no_nan_1(1????????9????????A????????I????????a?o?`*
?i?n??j????Unknown
vJHostReadVariableOp"Adam/Cast_2/ReadVariableOp(1      ??9      ??A      ??I      ??a?2?P???i??[R?????Unknown
vKHostAssignAddVariableOp"AssignAddVariableOp_3(1      ??9      ??A      ??I      ??a?2?P???i:??d????Unknown
`LHostDivNoNan"
div_no_nan(1ffffff??9ffffff??Affffff??Iffffff??a???? Q?i??l?i????Unknown
wMHostReadVariableOp"div_no_nan_1/ReadVariableOp(1????????9????????A????????I????????a_)????iV7??????Unknown
?NHostReadVariableOp"*sequential/m1_output/MatMul/ReadVariableOp(1????????9????????A????????I????????a_)????i??a? ????Unknown
vOHostAssignAddVariableOp"AssignAddVariableOp_1(1????????9????????A????????I????????a??3??>i?:?p@????Unknown
TPHostMul"Mul(1      ??9      ??A      ??I      ??a?C/?>i.g'}z????Unknown
?QHostReadVariableOp",sequential/m1_hidden3/BiasAdd/ReadVariableOp(1????????9????????A????????I????????an?F?%8?>i??r??????Unknown
aRHostIdentity"Identity(1333333??9333333??A333333??I333333??aR?t@j?>i?>???????Unknown?
wSHostReadVariableOp"div_no_nan/ReadVariableOp_1(1333333??9333333??A333333??I333333??aR?t@j?>i?????????Unknown
uTHostReadVariableOp"div_no_nan/ReadVariableOp(1333333??9333333??A333333??I333333??aR?t@j?>i     ???Unknown*?O
tHost_FusedMatMul"sequential/m1_hidden1/Relu(1??????@9??????@A??????@I??????@a??h}???i??h}????Unknown
~HostMatMul"*gradient_tape/sequential/m1_hidden1/MatMul(133333c?@933333c?@A33333c?@I33333c?@a(?Ll????iUĄ?io???Unknown
^HostGatherV2"GatherV2(1?????G?@9?????G?@A?????G?@I?????G?@a????????i??F?&???Unknown
uHostFlushSummaryWriter"FlushSummaryWriter(133333/?@933333/?@A33333/?@I33333/?@a??EF?d??i~????3???Unknown?
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1?????||@9?????||@A?????||@I?????||@ajv??-??i?`ٙF???Unknown
dHostDataset"Iterator::Model(1     `|@9     `|@A33333|@I33333|@a-???????i??#?gT???Unknown
?HostMatMul",gradient_tape/sequential/m1_hidden2/MatMul_1(1      y@9      y@A      y@I      y@a??OQ'??i?j?3?E???Unknown
~HostMatMul"*gradient_tape/sequential/m1_hidden2/MatMul(1?????p@9?????p@A?????p@I?????p@aZ
?Ce??i???R?????Unknown
?	Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1?????il@9?????il@A?????il@I?????il@a????V"??i?G??i???Unknown
t
Host_FusedMatMul"sequential/m1_hidden2/Relu(1??????f@9??????f@A??????f@I??????f@a??
???i*??????Unknown
?HostBiasAddGrad"7gradient_tape/sequential/m1_hidden1/BiasAdd/BiasAddGrad(1     ?d@9     ?d@A     ?d@I     ?d@aߏ???̈?ii???;???Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden1/ReluGrad(1     @d@9     @d@A     @d@I     @d@a*l?il??i3?L?????Unknown
tHost_FusedMatMul"sequential/m1_hidden3/Relu(1?????La@9?????La@A?????La@I?????La@a?JZ?݄?i;p+?7????Unknown
?HostMatMul",gradient_tape/sequential/m1_hidden3/MatMul_1(1333333a@9333333a@A333333a@I333333a@a??????ir?oV2C???Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden2/ReluGrad(1????̌_@9????̌_@A????̌_@I????̌_@a]] ???i?q*M????Unknown
ZHostArgMax"ArgMax(1??????\@9??????\@A??????\@I??????\@a??.?H???i???MJ????Unknown
qHostSoftmax"sequential/m1_output/Softmax(1fffffZ@9fffffZ@AfffffZ@IfffffZ@aQ??=?c?i?wR???Unknown
~HostMatMul"*gradient_tape/sequential/m1_hidden3/MatMul(1     ?Y@9     ?Y@A     ?Y@I     ?Y@ae???~?i??LT?P???Unknown
?HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1fffffFX@9fffffFX@AfffffFX@IfffffFX@a????-G}?i??̮o????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_4/ResourceApplyAdam(1fffff&R@9fffff&R@Afffff&R@Ifffff&R@a?????u?i?EZ?7????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1??????J@9??????J@A??????J@I??????J@aC????
p?ij<?L????Unknown
?HostBiasAddGrad"7gradient_tape/sequential/m1_hidden2/BiasAdd/BiasAddGrad(133333sG@933333sG@A33333sG@I33333sG@a}?[?rHl?i+i!5?????Unknown
?HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1333333E@9333333E@A333333E@I333333E@aK3z??i?iv???&???Unknown
HostMatMul"+gradient_tape/sequential/m1_output/MatMul_1(1333333D@9333333D@A333333D@I333333D@a?k???\h?i??;??%???Unknown
lHostIteratorGetNext"IteratorGetNext(1333333B@9333333B@A333333B@I333333B@a?R?s?e?i??&_w;???Unknown
iHostWriteSummary"WriteSummary(1      @@9      @@A      @@I      @@a???-Lc?i??ˌ?N???Unknown?
}HostMatMul")gradient_tape/sequential/m1_output/MatMul(1      :@9      :@A      :@I      :@a#??+?[_?i?R?qq^???Unknown
vHost_FusedMatMul"sequential/m1_output/BiasAdd(1      :@9      :@A      :@I      :@a#??+?[_?i2 ?Vn???Unknown
?HostReluGrad",gradient_tape/sequential/m1_hidden3/ReluGrad(1?????L8@9?????L8@A?????L8@I?????L8@a?eR?N]?i?-???|???Unknown
`HostGatherV2"
GatherV2_1(1??????2@9??????2@A??????2@I??????2@a?p?nV?i5?'D?????Unknown
?HostBiasAddGrad"6gradient_tape/sequential/m1_output/BiasAdd/BiasAddGrad(1??????0@9??????0@A??????0@I??????0@a????/CT?i"[?????Unknown
? HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff,@9ffffff,@Affffff,@Iffffff,@a?/'?h Q?i?n_?????Unknown
?!HostResourceApplyAdam"$Adam/Adam/update_7/ResourceApplyAdam(1      *@9      *@A      *@I      *@a#??+?[O?ifU??????Unknown
?"HostDataset"5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(1ffffff+@9ffffff+@A??????&@I??????&@a??
?K?i, -?f????Unknown
?#HostBiasAddGrad"7gradient_tape/sequential/m1_hidden3/BiasAdd/BiasAddGrad(1ffffff#@9ffffff#@Affffff#@Iffffff#@aޅ?W?eG?iM?q@????Unknown
?$HostResourceApplyAdam"$Adam/Adam/update_6/ResourceApplyAdam(1      !@9      !@A      !@I      !@aR??~??D?i??"?`????Unknown
?%HostResourceApplyAdam"$Adam/Adam/update_5/ResourceApplyAdam(1ffffff@9ffffff@Affffff@Iffffff@a(r\+UB?i????????Unknown
s&HostDataset"Iterator::Model::ParallelMapV2(1333333@9333333@A333333@I333333@a?	?.B?;?i'??`u????Unknown
['HostAddV2"Adam/add(1ffffff@9ffffff@Affffff@Iffffff@a?#???;?i?p<?տ???Unknown
?(HostDataset"/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(1      #@9      #@A      @I      @a?0o¾?:?i?? '????Unknown
e)Host
LogicalAnd"
LogicalAnd(1      @9      @A      @I      @aBr?98?i?y6?*????Unknown?
?*HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1??????@9??????@A??????@I??????@a??%52:5?i?}-?????Unknown
[+HostPow"
Adam/Pow_1(1333333@9333333@A333333@I333333@a????4?i???j????Unknown
t,HostAssignAddVariableOp"AssignAddVariableOp(1333333@9333333@A333333@I333333@a????4?i?`??????Unknown
v-HostAssignAddVariableOp"AssignAddVariableOp_4(1??????@9??????@A??????@I??????@a????/C4?i?????????Unknown
X.HostEqual"Equal(1??????@9??????@A??????@I??????@a????/C4?i???????Unknown
v/HostCast"$sparse_categorical_crossentropy/Cast(1??????@9??????@A??????@I??????@a????/C4?i<8??????Unknown
?0HostDataset"?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice(1      @9      @A      @I      @a???-L3?i??n?????Unknown
x1HostDataset"#Iterator::Model::ParallelMapV2::Zip(1      ;@9      ;@Affffff@Iffffff@a(r\+U2?i=\?6O????Unknown
~2HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1ffffff
@9ffffff
@Affffff
@Iffffff
@a??OK?/?i?W??L????Unknown
X3HostCast"Cast_2(1      @9      @A      @I      @a??wD?,?i???????Unknown
?4HostReadVariableOp"+sequential/m1_output/BiasAdd/ReadVariableOp(1      @9      @A      @I      @a??wD?,?ie8??????Unknown
?5HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(1      @9      @A      @I      @a??wD?,?i??e?????Unknown
X6HostCast"Cast_3(1333333@9333333@A333333@I333333@a?	?.B?+?iE???y????Unknown
Y7HostPow"Adam/Pow(1      @9      @A      @I      @aBr?9(?i?r??????Unknown
v8HostAssignAddVariableOp"AssignAddVariableOp_2(1      @9      @A      @I      @aBr?9(?isP??}????Unknown
y9HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1333333@9333333@A333333@I333333@ah???6('?iL?7?????Unknown
?:HostDataset"AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1ffffff@9ffffff??Affffff@Iffffff??a??a}41&?if?^JS????Unknown
?;HostReadVariableOp",sequential/m1_hidden1/BiasAdd/ReadVariableOp(1??????@9??????@A??????@I??????@a??%52:%?i?ҁ??????Unknown
?<HostCast"bsparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast_1(1??????@9??????@A??????@I??????@a??%52:%?i%???????Unknown
o=HostReadVariableOp"Adam/ReadVariableOp(1?????? @9?????? @A?????? @I?????? @a????/C$?i????>????Unknown
?>HostReadVariableOp"+sequential/m1_hidden3/MatMul/ReadVariableOp(1?????? @9?????? @A?????? @I?????? @a????/C$?iZ¢??????Unknown
??HostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1?????? @9?????? @A?????? @I?????? @a????/C$?i???)?????Unknown
t@HostReadVariableOp"Adam/Cast/ReadVariableOp(1       @9       @A       @I       @a???-L#?i??{??????Unknown
]AHostCast"Adam/Cast_1(1       @9       @A       @I       @a???-L#?i?&V?0????Unknown
VBHostSum"Sum_2(1       @9       @A       @I       @a???-L#?i?q0re????Unknown
?CHostReadVariableOp"+sequential/m1_hidden1/MatMul/ReadVariableOp(1       @9       @A       @I       @a???-L#?it?
5?????Unknown
?DHostReadVariableOp"+sequential/m1_hidden2/MatMul/ReadVariableOp(1       @9       @A       @I       @a???-L#?iS???????Unknown
?EHostReadVariableOp",sequential/m1_hidden2/BiasAdd/ReadVariableOp(1ffffff??9ffffff??Affffff??Iffffff??a(r\+U"?itΚJ?????Unknown
vFHostReadVariableOp"Adam/Cast_3/ReadVariableOp(1????????9????????A????????I????????aN)6)^!?i?,-
????Unknown
bGHostDivNoNan"div_no_nan_1(1????????9????????A????????I????????aN)6)^!?i:U? ????Unknown
vHHostReadVariableOp"Adam/Cast_2/ReadVariableOp(1      ??9      ??A      ??I      ??a??wD??ia??????Unknown
vIHostAssignAddVariableOp"AssignAddVariableOp_3(1      ??9      ??A      ??I      ??a??wD??i??4?????Unknown
`JHostDivNoNan"
div_no_nan(1ffffff??9ffffff??Affffff??Iffffff??a?#????i??V?????Unknown
wKHostReadVariableOp"div_no_nan_1/ReadVariableOp(1????????9????????A????????I????????aXV;?i????????Unknown
?LHostReadVariableOp"*sequential/m1_output/MatMul/ReadVariableOp(1????????9????????A????????I????????aXV;?iG[??X????Unknown
vMHostAssignAddVariableOp"AssignAddVariableOp_1(1????????9????????A????????I????????a??%52:?iuK?????Unknown
TNHostMul"Mul(1      ??9      ??A      ??I      ??a???-L?i?)???????Unknown
?OHostReadVariableOp",sequential/m1_hidden3/BiasAdd/ReadVariableOp(1????????9????????A????????I????????a6?|I??i?G?m????Unknown
aPHostIdentity"Identity(1333333??9333333??A333333??I333333??ah???6(?iN^?u????Unknown?
wQHostReadVariableOp"div_no_nan/ReadVariableOp_1(1333333??9333333??A333333??I333333??ah???6(?i?t???????Unknown
uRHostReadVariableOp"div_no_nan/ReadVariableOp(1333333??9333333??A333333??I333333??ah???6(?>i?????????Unknown