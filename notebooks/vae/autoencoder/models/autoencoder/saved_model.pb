պ
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628�
�
Adam/decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/decoder_output/bias/v
�
.Adam/decoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_output/bias/v*
_output_shapes
:*
dtype0
�
Adam/decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/decoder_output/kernel/v
�
0Adam/decoder_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_output/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/v
�
2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
: *
dtype0
�
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_2/kernel/v
�
4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_1/bias/v
�
2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*1
shared_name" Adam/conv2d_transpose_1/kernel/v
�
4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/conv2d_transpose/bias/v
�
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*/
shared_name Adam/conv2d_transpose/kernel/v
�
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*(
_output_shapes
:��*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/encoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/encoder_output/bias/v
�
.Adam/encoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_output/bias/v*
_output_shapes
:*
dtype0
�
Adam/encoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/encoder_output/kernel/v
�
0Adam/encoder_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_output/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_2/kernel/v
�
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/decoder_output/bias/m
�
.Adam/decoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_output/bias/m*
_output_shapes
:*
dtype0
�
Adam/decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/decoder_output/kernel/m
�
0Adam/decoder_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_output/kernel/m*&
_output_shapes
: *
dtype0
�
Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/m
�
2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
: *
dtype0
�
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_2/kernel/m
�
4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_1/bias/m
�
2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*1
shared_name" Adam/conv2d_transpose_1/kernel/m
�
4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/conv2d_transpose/bias/m
�
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*/
shared_name Adam/conv2d_transpose/kernel/m
�
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*(
_output_shapes
:��*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/encoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/encoder_output/bias/m
�
.Adam/encoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_output/bias/m*
_output_shapes
:*
dtype0
�
Adam/encoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/encoder_output/kernel/m
�
0Adam/encoder_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_output/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_2/kernel/m
�
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
~
decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedecoder_output/bias
w
'decoder_output/bias/Read/ReadVariableOpReadVariableOpdecoder_output/bias*
_output_shapes
:*
dtype0
�
decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_namedecoder_output/kernel
�
)decoder_output/kernel/Read/ReadVariableOpReadVariableOpdecoder_output/kernel*&
_output_shapes
: *
dtype0
�
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
: *
dtype0
�
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_2/kernel
�
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
: @*
dtype0
�
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�**
shared_nameconv2d_transpose_1/kernel
�
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*'
_output_shapes
:@�*
dtype0
�
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:�*
dtype0
�
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*(
shared_nameconv2d_transpose/kernel
�
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
~
encoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameencoder_output/bias
w
'encoder_output/bias/Read/ReadVariableOpReadVariableOpencoder_output/bias*
_output_shapes
:*
dtype0
�
encoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameencoder_output/kernel
�
)encoder_output/kernel/Read/ReadVariableOpReadVariableOpencoder_output/kernel*
_output_shapes
:	�*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@�*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
�
serving_default_encoder_inputPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_encoder_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdense/kernel
dense/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasdecoder_output/kerneldecoder_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_16268

NoOpNoOp
�|
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�{
value�{B�{ B�{
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
�
:layer-0
;layer_with_weights-0
;layer-1
<layer-2
=layer_with_weights-1
=layer-3
>layer_with_weights-2
>layer-4
?layer_with_weights-3
?layer-5
@layer_with_weights-4
@layer-6
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses*
�
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17*
�
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17*
* 
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Vtrace_0
Wtrace_1* 

Xtrace_0
Ytrace_1* 
* 
�
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem�m� m�!m�)m�*m�8m�9m�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�v�v� v�!v�)v�*v�8v�9v�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�*

_serving_default* 

0
1*

0
1*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

etrace_0* 

ftrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

 0
!1*

 0
!1*
* 
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ltrace_0* 

mtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

)0
*1*

)0
*1*
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 

80
91*

80
91*
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEencoder_output/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEencoder_output/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Gkernel
Hbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ikernel
Jbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Kkernel
Lbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Mkernel
Nbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Okernel
Pbias
!�_jit_compiled_convolution_op*
J
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9*
J
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
LF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_transpose/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdecoder_output/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdecoder_output/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

�0*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

I0
J1*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

O0
P1*

O0
P1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
5
:0
;1
<2
=3
>4
?5
@6*
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/encoder_output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/encoder_output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/decoder_output/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/decoder_output/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/encoder_output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/encoder_output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/decoder_output/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/decoder_output/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdense/kernel
dense/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasdecoder_output/kerneldecoder_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/encoder_output/kernel/mAdam/encoder_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/mAdam/decoder_output/kernel/mAdam/decoder_output/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/encoder_output/kernel/vAdam/encoder_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/vAdam/decoder_output/kernel/vAdam/decoder_output/bias/vConst*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_16933
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdense/kernel
dense/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasdecoder_output/kerneldecoder_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/encoder_output/kernel/mAdam/encoder_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/mAdam/decoder_output/kernel/mAdam/decoder_output/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/encoder_output/kernel/vAdam/encoder_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/vAdam/decoder_output/kernel/vAdam/decoder_output/bias/v*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_17125��
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_16012

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_15933
decoder_input
unknown:	�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�$
	unknown_3:@�
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_15883w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name15929:%	!

_user_specified_name15927:%!

_user_specified_name15925:%!

_user_specified_name15923:%!

_user_specified_name15921:%!

_user_specified_name15919:%!

_user_specified_name15917:%!

_user_specified_name15915:%!

_user_specified_name15913:%!

_user_specified_name15911:V R
'
_output_shapes
:���������
'
_user_specified_namedecoder_input
�
�
'__inference_model_1_layer_call_fn_15908
decoder_input
unknown:	�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�$
	unknown_3:@�
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_15853w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name15904:%	!

_user_specified_name15902:%!

_user_specified_name15900:%!

_user_specified_name15898:%!

_user_specified_name15896:%!

_user_specified_name15894:%!

_user_specified_name15892:%!

_user_specified_name15890:%!

_user_specified_name15888:%!

_user_specified_name15886:V R
'
_output_shapes
:���������
'
_user_specified_namedecoder_input
�
�
(__inference_conv2d_2_layer_call_fn_16317

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16001x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16313:%!

_user_specified_name16311:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
2__inference_conv2d_transpose_1_layer_call_fn_16448

inputs"
unknown:@�
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15736�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16444:%!

_user_specified_name16442:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_16333

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16012a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_15800

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16439

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,����������������������������|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
2__inference_conv2d_transpose_2_layer_call_fn_16491

inputs!
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15779�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16487:%!

_user_specified_name16485:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
I__inference_encoder_output_layer_call_and_return_conditional_losses_16023

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_16138
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7:	�
	unknown_8:	�%
	unknown_9:��

unknown_10:	�%

unknown_11:@�

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16051w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16134:%!

_user_specified_name16132:%!

_user_specified_name16130:%!

_user_specified_name16128:%!

_user_specified_name16126:%!

_user_specified_name16124:%!

_user_specified_name16122:%!

_user_specified_name16120:%
!

_user_specified_name16118:%	!

_user_specified_name16116:%!

_user_specified_name16114:%!

_user_specified_name16112:%!

_user_specified_name16110:%!

_user_specified_name16108:%!

_user_specified_name16106:%!

_user_specified_name16104:%!

_user_specified_name16102:%!

_user_specified_name16100:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�'
�
B__inference_model_2_layer_call_and_return_conditional_losses_16051
encoder_input&
conv2d_15970: 
conv2d_15972: (
conv2d_1_15986: @
conv2d_1_15988:@)
conv2d_2_16002:@�
conv2d_2_16004:	�'
encoder_output_16024:	�"
encoder_output_16026: 
model_1_16029:	�
model_1_16031:	�)
model_1_16033:��
model_1_16035:	�(
model_1_16037:@�
model_1_16039:@'
model_1_16041: @
model_1_16043: '
model_1_16045: 
model_1_16047:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCall�model_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_15970conv2d_15972*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15969�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_15986conv2d_1_15988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15985�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16002conv2d_2_16004*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16001�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16012�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16024encoder_output_16026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16023�
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16029model_1_16031model_1_16033model_1_16035model_1_16037model_1_16039model_1_16041model_1_16043model_1_16045model_1_16047*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_15853
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:%!

_user_specified_name16047:%!

_user_specified_name16045:%!

_user_specified_name16043:%!

_user_specified_name16041:%!

_user_specified_name16039:%!

_user_specified_name16037:%!

_user_specified_name16035:%!

_user_specified_name16033:%
!

_user_specified_name16031:%	!

_user_specified_name16029:%!

_user_specified_name16026:%!

_user_specified_name16024:%!

_user_specified_name16004:%!

_user_specified_name16002:%!

_user_specified_name15988:%!

_user_specified_name15986:%!

_user_specified_name15972:%!

_user_specified_name15970:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�
�
#__inference_signature_wrapper_16268
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7:	�
	unknown_8:	�%
	unknown_9:��

unknown_10:	�%

unknown_11:@�

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_15659w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16264:%!

_user_specified_name16262:%!

_user_specified_name16260:%!

_user_specified_name16258:%!

_user_specified_name16256:%!

_user_specified_name16254:%!

_user_specified_name16252:%!

_user_specified_name16250:%
!

_user_specified_name16248:%	!

_user_specified_name16246:%!

_user_specified_name16244:%!

_user_specified_name16242:%!

_user_specified_name16240:%!

_user_specified_name16238:%!

_user_specified_name16236:%!

_user_specified_name16234:%!

_user_specified_name16232:%!

_user_specified_name16230:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�"
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15693

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,����������������������������|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
^
B__inference_reshape_layer_call_and_return_conditional_losses_15819

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_16179
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7:	�
	unknown_8:	�%
	unknown_9:��

unknown_10:	�%

unknown_11:@�

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16097w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16175:%!

_user_specified_name16173:%!

_user_specified_name16171:%!

_user_specified_name16169:%!

_user_specified_name16167:%!

_user_specified_name16165:%!

_user_specified_name16163:%!

_user_specified_name16161:%
!

_user_specified_name16159:%	!

_user_specified_name16157:%!

_user_specified_name16155:%!

_user_specified_name16153:%!

_user_specified_name16151:%!

_user_specified_name16149:%!

_user_specified_name16147:%!

_user_specified_name16145:%!

_user_specified_name16143:%!

_user_specified_name16141:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�
�
.__inference_encoder_output_layer_call_fn_16348

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16023o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16344:%!

_user_specified_name16342:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_conv2d_transpose_layer_call_fn_16405

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15693�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16401:%!

_user_specified_name16399:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�$
�
B__inference_model_1_layer_call_and_return_conditional_losses_15883
decoder_input
dense_15856:	�
dense_15858:	�2
conv2d_transpose_15862:��%
conv2d_transpose_15864:	�3
conv2d_transpose_1_15867:@�&
conv2d_transpose_1_15869:@2
conv2d_transpose_2_15872: @&
conv2d_transpose_2_15874: .
decoder_output_15877: "
decoder_output_15879:
identity��(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�dense/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_15856dense_15858*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15800�
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15819�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_15862conv2d_transpose_15864*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15693�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_15867conv2d_transpose_1_15869*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15736�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_15872conv2d_transpose_2_15874*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15779�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_15877decoder_output_15879*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_15846�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:%
!

_user_specified_name15879:%	!

_user_specified_name15877:%!

_user_specified_name15874:%!

_user_specified_name15872:%!

_user_specified_name15869:%!

_user_specified_name15867:%!

_user_specified_name15864:%!

_user_specified_name15862:%!

_user_specified_name15858:%!

_user_specified_name15856:V R
'
_output_shapes
:���������
'
_user_specified_namedecoder_input
�"
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16482

inputsC
(conv2d_transpose_readvariableop_resource:@�-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_16367

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15800p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16363:%!

_user_specified_name16361:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
I__inference_encoder_output_layer_call_and_return_conditional_losses_16358

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16525

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_16339

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_16377

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
^
B__inference_reshape_layer_call_and_return_conditional_losses_16396

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_16297

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15985w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16293:%!

_user_specified_name16291:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
I__inference_decoder_output_layer_call_and_return_conditional_losses_16545

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������  b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_15969

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16328

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16001

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
I__inference_decoder_output_layer_call_and_return_conditional_losses_15846

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������  b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�$
�
B__inference_model_1_layer_call_and_return_conditional_losses_15853
decoder_input
dense_15801:	�
dense_15803:	�2
conv2d_transpose_15821:��%
conv2d_transpose_15823:	�3
conv2d_transpose_1_15826:@�&
conv2d_transpose_1_15828:@2
conv2d_transpose_2_15831: @&
conv2d_transpose_2_15833: .
decoder_output_15847: "
decoder_output_15849:
identity��(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�&decoder_output/StatefulPartitionedCall�dense/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_15801dense_15803*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15800�
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15819�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_15821conv2d_transpose_15823*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15693�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_15826conv2d_transpose_1_15828*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15736�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_15831conv2d_transpose_2_15833*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15779�
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_15847decoder_output_15849*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_15846�
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:%
!

_user_specified_name15849:%	!

_user_specified_name15847:%!

_user_specified_name15833:%!

_user_specified_name15831:%!

_user_specified_name15828:%!

_user_specified_name15826:%!

_user_specified_name15823:%!

_user_specified_name15821:%!

_user_specified_name15803:%!

_user_specified_name15801:V R
'
_output_shapes
:���������
'
_user_specified_namedecoder_input
�"
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15736

inputsC
(conv2d_transpose_readvariableop_resource:@�-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_15659
encoder_inputG
-model_2_conv2d_conv2d_readvariableop_resource: <
.model_2_conv2d_biasadd_readvariableop_resource: I
/model_2_conv2d_1_conv2d_readvariableop_resource: @>
0model_2_conv2d_1_biasadd_readvariableop_resource:@J
/model_2_conv2d_2_conv2d_readvariableop_resource:@�?
0model_2_conv2d_2_biasadd_readvariableop_resource:	�H
5model_2_encoder_output_matmul_readvariableop_resource:	�D
6model_2_encoder_output_biasadd_readvariableop_resource:G
4model_2_model_1_dense_matmul_readvariableop_resource:	�D
5model_2_model_1_dense_biasadd_readvariableop_resource:	�e
Imodel_2_model_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:��O
@model_2_model_1_conv2d_transpose_biasadd_readvariableop_resource:	�f
Kmodel_2_model_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@�P
Bmodel_2_model_1_conv2d_transpose_1_biasadd_readvariableop_resource:@e
Kmodel_2_model_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @P
Bmodel_2_model_1_conv2d_transpose_2_biasadd_readvariableop_resource: W
=model_2_model_1_decoder_output_conv2d_readvariableop_resource: L
>model_2_model_1_decoder_output_biasadd_readvariableop_resource:
identity��%model_2/conv2d/BiasAdd/ReadVariableOp�$model_2/conv2d/Conv2D/ReadVariableOp�'model_2/conv2d_1/BiasAdd/ReadVariableOp�&model_2/conv2d_1/Conv2D/ReadVariableOp�'model_2/conv2d_2/BiasAdd/ReadVariableOp�&model_2/conv2d_2/Conv2D/ReadVariableOp�-model_2/encoder_output/BiasAdd/ReadVariableOp�,model_2/encoder_output/MatMul/ReadVariableOp�7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp�@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp�9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp�Bmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp�Bmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�5model_2/model_1/decoder_output/BiasAdd/ReadVariableOp�4model_2/model_1/decoder_output/Conv2D/ReadVariableOp�,model_2/model_1/dense/BiasAdd/ReadVariableOp�+model_2/model_1/dense/MatMul/ReadVariableOp�
$model_2/conv2d/Conv2D/ReadVariableOpReadVariableOp-model_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_2/conv2d/Conv2DConv2Dencoder_input,model_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
%model_2/conv2d/BiasAdd/ReadVariableOpReadVariableOp.model_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_2/conv2d/BiasAddBiasAddmodel_2/conv2d/Conv2D:output:0-model_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� v
model_2/conv2d/ReluRelumodel_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
&model_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_2/conv2d_1/Conv2DConv2D!model_2/conv2d/Relu:activations:0.model_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'model_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_1/BiasAddBiasAdd model_2/conv2d_1/Conv2D:output:0/model_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@z
model_2/conv2d_1/ReluRelu!model_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
&model_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model_2/conv2d_2/Conv2DConv2D#model_2/conv2d_1/Relu:activations:0.model_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
'model_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_2/conv2d_2/BiasAddBiasAdd model_2/conv2d_2/Conv2D:output:0/model_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������{
model_2/conv2d_2/ReluRelu!model_2/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:����������f
model_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/flatten/ReshapeReshape#model_2/conv2d_2/Relu:activations:0model_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
,model_2/encoder_output/MatMul/ReadVariableOpReadVariableOp5model_2_encoder_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_2/encoder_output/MatMulMatMul model_2/flatten/Reshape:output:04model_2/encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-model_2/encoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_2_encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/encoder_output/BiasAddBiasAdd'model_2/encoder_output/MatMul:product:05model_2/encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+model_2/model_1/dense/MatMul/ReadVariableOpReadVariableOp4model_2_model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_2/model_1/dense/MatMulMatMul'model_2/encoder_output/BiasAdd:output:03model_2/model_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,model_2/model_1/dense/BiasAdd/ReadVariableOpReadVariableOp5model_2_model_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_2/model_1/dense/BiasAddBiasAdd&model_2/model_1/dense/MatMul:product:04model_2/model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_2/model_1/reshape/ShapeShape&model_2/model_1/dense/BiasAdd:output:0*
T0*
_output_shapes
::��u
+model_2/model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-model_2/model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-model_2/model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%model_2/model_1/reshape/strided_sliceStridedSlice&model_2/model_1/reshape/Shape:output:04model_2/model_1/reshape/strided_slice/stack:output:06model_2/model_1/reshape/strided_slice/stack_1:output:06model_2/model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'model_2/model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :i
'model_2/model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
'model_2/model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
%model_2/model_1/reshape/Reshape/shapePack.model_2/model_1/reshape/strided_slice:output:00model_2/model_1/reshape/Reshape/shape/1:output:00model_2/model_1/reshape/Reshape/shape/2:output:00model_2/model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model_2/model_1/reshape/ReshapeReshape&model_2/model_1/dense/BiasAdd:output:0.model_2/model_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
&model_2/model_1/conv2d_transpose/ShapeShape(model_2/model_1/reshape/Reshape:output:0*
T0*
_output_shapes
::��~
4model_2/model_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6model_2/model_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/model_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.model_2/model_1/conv2d_transpose/strided_sliceStridedSlice/model_2/model_1/conv2d_transpose/Shape:output:0=model_2/model_1/conv2d_transpose/strided_slice/stack:output:0?model_2/model_1/conv2d_transpose/strided_slice/stack_1:output:0?model_2/model_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(model_2/model_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(model_2/model_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
(model_2/model_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :��
&model_2/model_1/conv2d_transpose/stackPack7model_2/model_1/conv2d_transpose/strided_slice:output:01model_2/model_1/conv2d_transpose/stack/1:output:01model_2/model_1/conv2d_transpose/stack/2:output:01model_2/model_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:�
6model_2/model_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8model_2/model_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8model_2/model_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model_2/model_1/conv2d_transpose/strided_slice_1StridedSlice/model_2/model_1/conv2d_transpose/stack:output:0?model_2/model_1/conv2d_transpose/strided_slice_1/stack:output:0Amodel_2/model_1/conv2d_transpose/strided_slice_1/stack_1:output:0Amodel_2/model_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
1model_2/model_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput/model_2/model_1/conv2d_transpose/stack:output:0Hmodel_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0(model_2/model_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(model_2/model_1/conv2d_transpose/BiasAddBiasAdd:model_2/model_1/conv2d_transpose/conv2d_transpose:output:0?model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
%model_2/model_1/conv2d_transpose/ReluRelu1model_2/model_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
(model_2/model_1/conv2d_transpose_1/ShapeShape3model_2/model_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
::���
6model_2/model_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8model_2/model_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8model_2/model_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model_2/model_1/conv2d_transpose_1/strided_sliceStridedSlice1model_2/model_1/conv2d_transpose_1/Shape:output:0?model_2/model_1/conv2d_transpose_1/strided_slice/stack:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice/stack_1:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_2/model_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :l
*model_2/model_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :l
*model_2/model_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
(model_2/model_1/conv2d_transpose_1/stackPack9model_2/model_1/conv2d_transpose_1/strided_slice:output:03model_2/model_1/conv2d_transpose_1/stack/1:output:03model_2/model_1/conv2d_transpose_1/stack/2:output:03model_2/model_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:�
8model_2/model_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:model_2/model_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:model_2/model_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model_2/model_1/conv2d_transpose_1/strided_slice_1StridedSlice1model_2/model_1/conv2d_transpose_1/stack:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack:output:0Cmodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0Cmodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpKmodel_2_model_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
3model_2/model_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput1model_2/model_1/conv2d_transpose_1/stack:output:0Jmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:03model_2/model_1/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
*model_2/model_1/conv2d_transpose_1/BiasAddBiasAdd<model_2/model_1/conv2d_transpose_1/conv2d_transpose:output:0Amodel_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
'model_2/model_1/conv2d_transpose_1/ReluRelu3model_2/model_1/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
(model_2/model_1/conv2d_transpose_2/ShapeShape5model_2/model_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
::���
6model_2/model_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8model_2/model_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8model_2/model_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model_2/model_1/conv2d_transpose_2/strided_sliceStridedSlice1model_2/model_1/conv2d_transpose_2/Shape:output:0?model_2/model_1/conv2d_transpose_2/strided_slice/stack:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice/stack_1:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_2/model_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : l
*model_2/model_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : l
*model_2/model_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
(model_2/model_1/conv2d_transpose_2/stackPack9model_2/model_1/conv2d_transpose_2/strided_slice:output:03model_2/model_1/conv2d_transpose_2/stack/1:output:03model_2/model_1/conv2d_transpose_2/stack/2:output:03model_2/model_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:�
8model_2/model_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:model_2/model_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:model_2/model_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model_2/model_1/conv2d_transpose_2/strided_slice_1StridedSlice1model_2/model_1/conv2d_transpose_2/stack:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack:output:0Cmodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0Cmodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpKmodel_2_model_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
3model_2/model_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput1model_2/model_1/conv2d_transpose_2/stack:output:0Jmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:05model_2/model_1/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
*model_2/model_1/conv2d_transpose_2/BiasAddBiasAdd<model_2/model_1/conv2d_transpose_2/conv2d_transpose:output:0Amodel_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
'model_2/model_1/conv2d_transpose_2/ReluRelu3model_2/model_1/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
4model_2/model_1/decoder_output/Conv2D/ReadVariableOpReadVariableOp=model_2_model_1_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
%model_2/model_1/decoder_output/Conv2DConv2D5model_2/model_1/conv2d_transpose_2/Relu:activations:0<model_2/model_1/decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
5model_2/model_1/decoder_output/BiasAdd/ReadVariableOpReadVariableOp>model_2_model_1_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&model_2/model_1/decoder_output/BiasAddBiasAdd.model_2/model_1/decoder_output/Conv2D:output:0=model_2/model_1/decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
&model_2/model_1/decoder_output/SigmoidSigmoid/model_2/model_1/decoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
IdentityIdentity*model_2/model_1/decoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp&^model_2/conv2d/BiasAdd/ReadVariableOp%^model_2/conv2d/Conv2D/ReadVariableOp(^model_2/conv2d_1/BiasAdd/ReadVariableOp'^model_2/conv2d_1/Conv2D/ReadVariableOp(^model_2/conv2d_2/BiasAdd/ReadVariableOp'^model_2/conv2d_2/Conv2D/ReadVariableOp.^model_2/encoder_output/BiasAdd/ReadVariableOp-^model_2/encoder_output/MatMul/ReadVariableOp8^model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOpA^model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:^model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpC^model_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:^model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpC^model_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp6^model_2/model_1/decoder_output/BiasAdd/ReadVariableOp5^model_2/model_1/decoder_output/Conv2D/ReadVariableOp-^model_2/model_1/dense/BiasAdd/ReadVariableOp,^model_2/model_1/dense/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2N
%model_2/conv2d/BiasAdd/ReadVariableOp%model_2/conv2d/BiasAdd/ReadVariableOp2L
$model_2/conv2d/Conv2D/ReadVariableOp$model_2/conv2d/Conv2D/ReadVariableOp2R
'model_2/conv2d_1/BiasAdd/ReadVariableOp'model_2/conv2d_1/BiasAdd/ReadVariableOp2P
&model_2/conv2d_1/Conv2D/ReadVariableOp&model_2/conv2d_1/Conv2D/ReadVariableOp2R
'model_2/conv2d_2/BiasAdd/ReadVariableOp'model_2/conv2d_2/BiasAdd/ReadVariableOp2P
&model_2/conv2d_2/Conv2D/ReadVariableOp&model_2/conv2d_2/Conv2D/ReadVariableOp2^
-model_2/encoder_output/BiasAdd/ReadVariableOp-model_2/encoder_output/BiasAdd/ReadVariableOp2\
,model_2/encoder_output/MatMul/ReadVariableOp,model_2/encoder_output/MatMul/ReadVariableOp2r
7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp2�
@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2v
9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2�
Bmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpBmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2v
9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2�
Bmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpBmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2n
5model_2/model_1/decoder_output/BiasAdd/ReadVariableOp5model_2/model_1/decoder_output/BiasAdd/ReadVariableOp2l
4model_2/model_1/decoder_output/Conv2D/ReadVariableOp4model_2/model_1/decoder_output/Conv2D/ReadVariableOp2\
,model_2/model_1/dense/BiasAdd/ReadVariableOp,model_2/model_1/dense/BiasAdd/ReadVariableOp2Z
+model_2/model_1/dense/MatMul/ReadVariableOp+model_2/model_1/dense/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15985

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16308

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_16288

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�'
�
B__inference_model_2_layer_call_and_return_conditional_losses_16097
encoder_input&
conv2d_16054: 
conv2d_16056: (
conv2d_1_16059: @
conv2d_1_16061:@)
conv2d_2_16064:@�
conv2d_2_16066:	�'
encoder_output_16070:	�"
encoder_output_16072: 
model_1_16075:	�
model_1_16077:	�)
model_1_16079:��
model_1_16081:	�(
model_1_16083:@�
model_1_16085:@'
model_1_16087: @
model_1_16089: '
model_1_16091: 
model_1_16093:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�&encoder_output/StatefulPartitionedCall�model_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_16054conv2d_16056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15969�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_16059conv2d_1_16061*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15985�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16064conv2d_2_16066*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16001�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16012�
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16070encoder_output_16072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16023�
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16075model_1_16077model_1_16079model_1_16081model_1_16083model_1_16085model_1_16087model_1_16089model_1_16091model_1_16093*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_15883
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:%!

_user_specified_name16093:%!

_user_specified_name16091:%!

_user_specified_name16089:%!

_user_specified_name16087:%!

_user_specified_name16085:%!

_user_specified_name16083:%!

_user_specified_name16081:%!

_user_specified_name16079:%
!

_user_specified_name16077:%	!

_user_specified_name16075:%!

_user_specified_name16072:%!

_user_specified_name16070:%!

_user_specified_name16066:%!

_user_specified_name16064:%!

_user_specified_name16061:%!

_user_specified_name16059:%!

_user_specified_name16056:%!

_user_specified_name16054:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameencoder_input
�
�
&__inference_conv2d_layer_call_fn_16277

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15969w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16273:%!

_user_specified_name16271:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�"
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15779

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�:
__inference__traced_save_16933
file_prefix>
$read_disablecopyonread_conv2d_kernel: 2
$read_1_disablecopyonread_conv2d_bias: B
(read_2_disablecopyonread_conv2d_1_kernel: @4
&read_3_disablecopyonread_conv2d_1_bias:@C
(read_4_disablecopyonread_conv2d_2_kernel:@�5
&read_5_disablecopyonread_conv2d_2_bias:	�A
.read_6_disablecopyonread_encoder_output_kernel:	�:
,read_7_disablecopyonread_encoder_output_bias:8
%read_8_disablecopyonread_dense_kernel:	�2
#read_9_disablecopyonread_dense_bias:	�M
1read_10_disablecopyonread_conv2d_transpose_kernel:��>
/read_11_disablecopyonread_conv2d_transpose_bias:	�N
3read_12_disablecopyonread_conv2d_transpose_1_kernel:@�?
1read_13_disablecopyonread_conv2d_transpose_1_bias:@M
3read_14_disablecopyonread_conv2d_transpose_2_kernel: @?
1read_15_disablecopyonread_conv2d_transpose_2_bias: I
/read_16_disablecopyonread_decoder_output_kernel: ;
-read_17_disablecopyonread_decoder_output_bias:-
#read_18_disablecopyonread_adam_iter:	 /
%read_19_disablecopyonread_adam_beta_1: /
%read_20_disablecopyonread_adam_beta_2: .
$read_21_disablecopyonread_adam_decay: 6
,read_22_disablecopyonread_adam_learning_rate: )
read_23_disablecopyonread_total: )
read_24_disablecopyonread_count: H
.read_25_disablecopyonread_adam_conv2d_kernel_m: :
,read_26_disablecopyonread_adam_conv2d_bias_m: J
0read_27_disablecopyonread_adam_conv2d_1_kernel_m: @<
.read_28_disablecopyonread_adam_conv2d_1_bias_m:@K
0read_29_disablecopyonread_adam_conv2d_2_kernel_m:@�=
.read_30_disablecopyonread_adam_conv2d_2_bias_m:	�I
6read_31_disablecopyonread_adam_encoder_output_kernel_m:	�B
4read_32_disablecopyonread_adam_encoder_output_bias_m:@
-read_33_disablecopyonread_adam_dense_kernel_m:	�:
+read_34_disablecopyonread_adam_dense_bias_m:	�T
8read_35_disablecopyonread_adam_conv2d_transpose_kernel_m:��E
6read_36_disablecopyonread_adam_conv2d_transpose_bias_m:	�U
:read_37_disablecopyonread_adam_conv2d_transpose_1_kernel_m:@�F
8read_38_disablecopyonread_adam_conv2d_transpose_1_bias_m:@T
:read_39_disablecopyonread_adam_conv2d_transpose_2_kernel_m: @F
8read_40_disablecopyonread_adam_conv2d_transpose_2_bias_m: P
6read_41_disablecopyonread_adam_decoder_output_kernel_m: B
4read_42_disablecopyonread_adam_decoder_output_bias_m:H
.read_43_disablecopyonread_adam_conv2d_kernel_v: :
,read_44_disablecopyonread_adam_conv2d_bias_v: J
0read_45_disablecopyonread_adam_conv2d_1_kernel_v: @<
.read_46_disablecopyonread_adam_conv2d_1_bias_v:@K
0read_47_disablecopyonread_adam_conv2d_2_kernel_v:@�=
.read_48_disablecopyonread_adam_conv2d_2_bias_v:	�I
6read_49_disablecopyonread_adam_encoder_output_kernel_v:	�B
4read_50_disablecopyonread_adam_encoder_output_bias_v:@
-read_51_disablecopyonread_adam_dense_kernel_v:	�:
+read_52_disablecopyonread_adam_dense_bias_v:	�T
8read_53_disablecopyonread_adam_conv2d_transpose_kernel_v:��E
6read_54_disablecopyonread_adam_conv2d_transpose_bias_v:	�U
:read_55_disablecopyonread_adam_conv2d_transpose_1_kernel_v:@�F
8read_56_disablecopyonread_adam_conv2d_transpose_1_bias_v:@T
:read_57_disablecopyonread_adam_conv2d_transpose_2_kernel_v: @F
8read_58_disablecopyonread_adam_conv2d_transpose_2_bias_v: P
6read_59_disablecopyonread_adam_decoder_output_kernel_v: B
4read_60_disablecopyonread_adam_decoder_output_bias_v:
savev2_const
identity_123��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0v

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�l

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead.read_6_disablecopyonread_encoder_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp.read_6_disablecopyonread_encoder_output_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_encoder_output_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_encoder_output_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_8/DisableCopyOnReadDisableCopyOnRead%read_8_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp%read_8_disablecopyonread_dense_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�w
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_dense_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_10/DisableCopyOnReadDisableCopyOnRead1read_10_disablecopyonread_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp1read_10_disablecopyonread_conv2d_transpose_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_11/DisableCopyOnReadDisableCopyOnRead/read_11_disablecopyonread_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp/read_11_disablecopyonread_conv2d_transpose_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_12/DisableCopyOnReadDisableCopyOnRead3read_12_disablecopyonread_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp3read_12_disablecopyonread_conv2d_transpose_1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp1read_13_disablecopyonread_conv2d_transpose_1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_14/DisableCopyOnReadDisableCopyOnRead3read_14_disablecopyonread_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp3read_14_disablecopyonread_conv2d_transpose_2_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_conv2d_transpose_2_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_decoder_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_decoder_output_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_decoder_output_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_decoder_output_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_18/DisableCopyOnReadDisableCopyOnRead#read_18_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp#read_18_disablecopyonread_adam_iter^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_adam_beta_1^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_adam_beta_2^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_21/DisableCopyOnReadDisableCopyOnRead$read_21_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp$read_21_disablecopyonread_adam_decay^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead,read_22_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp,read_22_disablecopyonread_adam_learning_rate^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_total^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_24/DisableCopyOnReadDisableCopyOnReadread_24_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOpread_24_disablecopyonread_count^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_conv2d_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_conv2d_kernel_m^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead,read_26_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp,read_26_disablecopyonread_adam_conv2d_bias_m^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_conv2d_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_conv2d_1_kernel_m^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_conv2d_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_conv2d_1_bias_m^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_conv2d_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_conv2d_2_kernel_m^Read_29/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_conv2d_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_conv2d_2_bias_m^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_31/DisableCopyOnReadDisableCopyOnRead6read_31_disablecopyonread_adam_encoder_output_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp6read_31_disablecopyonread_adam_encoder_output_kernel_m^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_32/DisableCopyOnReadDisableCopyOnRead4read_32_disablecopyonread_adam_encoder_output_bias_m"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp4read_32_disablecopyonread_adam_encoder_output_bias_m^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_dense_kernel_m^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_34/DisableCopyOnReadDisableCopyOnRead+read_34_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp+read_34_disablecopyonread_adam_dense_bias_m^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_35/DisableCopyOnReadDisableCopyOnRead8read_35_disablecopyonread_adam_conv2d_transpose_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp8read_35_disablecopyonread_adam_conv2d_transpose_kernel_m^Read_35/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_36/DisableCopyOnReadDisableCopyOnRead6read_36_disablecopyonread_adam_conv2d_transpose_bias_m"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp6read_36_disablecopyonread_adam_conv2d_transpose_bias_m^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead:read_37_disablecopyonread_adam_conv2d_transpose_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp:read_37_disablecopyonread_adam_conv2d_transpose_1_kernel_m^Read_37/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_38/DisableCopyOnReadDisableCopyOnRead8read_38_disablecopyonread_adam_conv2d_transpose_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp8read_38_disablecopyonread_adam_conv2d_transpose_1_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_39/DisableCopyOnReadDisableCopyOnRead:read_39_disablecopyonread_adam_conv2d_transpose_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp:read_39_disablecopyonread_adam_conv2d_transpose_2_kernel_m^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_40/DisableCopyOnReadDisableCopyOnRead8read_40_disablecopyonread_adam_conv2d_transpose_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp8read_40_disablecopyonread_adam_conv2d_transpose_2_bias_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_41/DisableCopyOnReadDisableCopyOnRead6read_41_disablecopyonread_adam_decoder_output_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp6read_41_disablecopyonread_adam_decoder_output_kernel_m^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_42/DisableCopyOnReadDisableCopyOnRead4read_42_disablecopyonread_adam_decoder_output_bias_m"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp4read_42_disablecopyonread_adam_decoder_output_bias_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_conv2d_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_conv2d_kernel_v^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_44/DisableCopyOnReadDisableCopyOnRead,read_44_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp,read_44_disablecopyonread_adam_conv2d_bias_v^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_45/DisableCopyOnReadDisableCopyOnRead0read_45_disablecopyonread_adam_conv2d_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp0read_45_disablecopyonread_adam_conv2d_1_kernel_v^Read_45/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_46/DisableCopyOnReadDisableCopyOnRead.read_46_disablecopyonread_adam_conv2d_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp.read_46_disablecopyonread_adam_conv2d_1_bias_v^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_47/DisableCopyOnReadDisableCopyOnRead0read_47_disablecopyonread_adam_conv2d_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp0read_47_disablecopyonread_adam_conv2d_2_kernel_v^Read_47/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_conv2d_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_conv2d_2_bias_v^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_49/DisableCopyOnReadDisableCopyOnRead6read_49_disablecopyonread_adam_encoder_output_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp6read_49_disablecopyonread_adam_encoder_output_kernel_v^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_50/DisableCopyOnReadDisableCopyOnRead4read_50_disablecopyonread_adam_encoder_output_bias_v"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp4read_50_disablecopyonread_adam_encoder_output_bias_v^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead-read_51_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp-read_51_disablecopyonread_adam_dense_kernel_v^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_52/DisableCopyOnReadDisableCopyOnRead+read_52_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp+read_52_disablecopyonread_adam_dense_bias_v^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_53/DisableCopyOnReadDisableCopyOnRead8read_53_disablecopyonread_adam_conv2d_transpose_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp8read_53_disablecopyonread_adam_conv2d_transpose_kernel_v^Read_53/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_54/DisableCopyOnReadDisableCopyOnRead6read_54_disablecopyonread_adam_conv2d_transpose_bias_v"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp6read_54_disablecopyonread_adam_conv2d_transpose_bias_v^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_55/DisableCopyOnReadDisableCopyOnRead:read_55_disablecopyonread_adam_conv2d_transpose_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp:read_55_disablecopyonread_adam_conv2d_transpose_1_kernel_v^Read_55/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0y
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�p
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_56/DisableCopyOnReadDisableCopyOnRead8read_56_disablecopyonread_adam_conv2d_transpose_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp8read_56_disablecopyonread_adam_conv2d_transpose_1_bias_v^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_57/DisableCopyOnReadDisableCopyOnRead:read_57_disablecopyonread_adam_conv2d_transpose_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp:read_57_disablecopyonread_adam_conv2d_transpose_2_kernel_v^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_58/DisableCopyOnReadDisableCopyOnRead8read_58_disablecopyonread_adam_conv2d_transpose_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp8read_58_disablecopyonread_adam_conv2d_transpose_2_bias_v^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_59/DisableCopyOnReadDisableCopyOnRead6read_59_disablecopyonread_adam_decoder_output_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp6read_59_disablecopyonread_adam_decoder_output_kernel_v^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_60/DisableCopyOnReadDisableCopyOnRead4read_60_disablecopyonread_adam_decoder_output_bias_v"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp4read_60_disablecopyonread_adam_decoder_output_bias_v^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*�
value�B�>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*�
value�B�>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *L
dtypesB
@2>	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_122Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_123IdentityIdentity_122:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_123Identity_123:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
~: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=>9

_output_shapes
: 

_user_specified_nameConst::=6
4
_user_specified_nameAdam/decoder_output/bias/v:<<8
6
_user_specified_nameAdam/decoder_output/kernel/v:>;:
8
_user_specified_name Adam/conv2d_transpose_2/bias/v:@:<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/v:>9:
8
_user_specified_name Adam/conv2d_transpose_1/bias/v:@8<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/v:<78
6
_user_specified_nameAdam/conv2d_transpose/bias/v:>6:
8
_user_specified_name Adam/conv2d_transpose/kernel/v:15-
+
_user_specified_nameAdam/dense/bias/v:34/
-
_user_specified_nameAdam/dense/kernel/v::36
4
_user_specified_nameAdam/encoder_output/bias/v:<28
6
_user_specified_nameAdam/encoder_output/kernel/v:410
.
_user_specified_nameAdam/conv2d_2/bias/v:602
0
_user_specified_nameAdam/conv2d_2/kernel/v:4/0
.
_user_specified_nameAdam/conv2d_1/bias/v:6.2
0
_user_specified_nameAdam/conv2d_1/kernel/v:2-.
,
_user_specified_nameAdam/conv2d/bias/v:4,0
.
_user_specified_nameAdam/conv2d/kernel/v::+6
4
_user_specified_nameAdam/decoder_output/bias/m:<*8
6
_user_specified_nameAdam/decoder_output/kernel/m:>):
8
_user_specified_name Adam/conv2d_transpose_2/bias/m:@(<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/m:>':
8
_user_specified_name Adam/conv2d_transpose_1/bias/m:@&<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/m:<%8
6
_user_specified_nameAdam/conv2d_transpose/bias/m:>$:
8
_user_specified_name Adam/conv2d_transpose/kernel/m:1#-
+
_user_specified_nameAdam/dense/bias/m:3"/
-
_user_specified_nameAdam/dense/kernel/m::!6
4
_user_specified_nameAdam/encoder_output/bias/m:< 8
6
_user_specified_nameAdam/encoder_output/kernel/m:40
.
_user_specified_nameAdam/conv2d_2/bias/m:62
0
_user_specified_nameAdam/conv2d_2/kernel/m:40
.
_user_specified_nameAdam/conv2d_1/bias/m:62
0
_user_specified_nameAdam/conv2d_1/kernel/m:2.
,
_user_specified_nameAdam/conv2d/bias/m:40
.
_user_specified_nameAdam/conv2d/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:3/
-
_user_specified_namedecoder_output/bias:51
/
_user_specified_namedecoder_output/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:*
&
$
_user_specified_name
dense/bias:,	(
&
_user_specified_namedense/kernel:3/
-
_user_specified_nameencoder_output/bias:51
/
_user_specified_nameencoder_output/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
.__inference_decoder_output_layer_call_fn_16534

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_15846w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16530:%!

_user_specified_name16528:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
C
'__inference_reshape_layer_call_fn_16382

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15819i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
Ρ
�(
!__inference__traced_restore_17125
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel: @.
 assignvariableop_3_conv2d_1_bias:@=
"assignvariableop_4_conv2d_2_kernel:@�/
 assignvariableop_5_conv2d_2_bias:	�;
(assignvariableop_6_encoder_output_kernel:	�4
&assignvariableop_7_encoder_output_bias:2
assignvariableop_8_dense_kernel:	�,
assignvariableop_9_dense_bias:	�G
+assignvariableop_10_conv2d_transpose_kernel:��8
)assignvariableop_11_conv2d_transpose_bias:	�H
-assignvariableop_12_conv2d_transpose_1_kernel:@�9
+assignvariableop_13_conv2d_transpose_1_bias:@G
-assignvariableop_14_conv2d_transpose_2_kernel: @9
+assignvariableop_15_conv2d_transpose_2_bias: C
)assignvariableop_16_decoder_output_kernel: 5
'assignvariableop_17_decoder_output_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: B
(assignvariableop_25_adam_conv2d_kernel_m: 4
&assignvariableop_26_adam_conv2d_bias_m: D
*assignvariableop_27_adam_conv2d_1_kernel_m: @6
(assignvariableop_28_adam_conv2d_1_bias_m:@E
*assignvariableop_29_adam_conv2d_2_kernel_m:@�7
(assignvariableop_30_adam_conv2d_2_bias_m:	�C
0assignvariableop_31_adam_encoder_output_kernel_m:	�<
.assignvariableop_32_adam_encoder_output_bias_m::
'assignvariableop_33_adam_dense_kernel_m:	�4
%assignvariableop_34_adam_dense_bias_m:	�N
2assignvariableop_35_adam_conv2d_transpose_kernel_m:��?
0assignvariableop_36_adam_conv2d_transpose_bias_m:	�O
4assignvariableop_37_adam_conv2d_transpose_1_kernel_m:@�@
2assignvariableop_38_adam_conv2d_transpose_1_bias_m:@N
4assignvariableop_39_adam_conv2d_transpose_2_kernel_m: @@
2assignvariableop_40_adam_conv2d_transpose_2_bias_m: J
0assignvariableop_41_adam_decoder_output_kernel_m: <
.assignvariableop_42_adam_decoder_output_bias_m:B
(assignvariableop_43_adam_conv2d_kernel_v: 4
&assignvariableop_44_adam_conv2d_bias_v: D
*assignvariableop_45_adam_conv2d_1_kernel_v: @6
(assignvariableop_46_adam_conv2d_1_bias_v:@E
*assignvariableop_47_adam_conv2d_2_kernel_v:@�7
(assignvariableop_48_adam_conv2d_2_bias_v:	�C
0assignvariableop_49_adam_encoder_output_kernel_v:	�<
.assignvariableop_50_adam_encoder_output_bias_v::
'assignvariableop_51_adam_dense_kernel_v:	�4
%assignvariableop_52_adam_dense_bias_v:	�N
2assignvariableop_53_adam_conv2d_transpose_kernel_v:��?
0assignvariableop_54_adam_conv2d_transpose_bias_v:	�O
4assignvariableop_55_adam_conv2d_transpose_1_kernel_v:@�@
2assignvariableop_56_adam_conv2d_transpose_1_bias_v:@N
4assignvariableop_57_adam_conv2d_transpose_2_kernel_v: @@
2assignvariableop_58_adam_conv2d_transpose_2_bias_v: J
0assignvariableop_59_adam_decoder_output_kernel_v: <
.assignvariableop_60_adam_decoder_output_bias_v:
identity_62��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*�
value�B�>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*�
value�B�>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp(assignvariableop_6_encoder_output_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp&assignvariableop_7_encoder_output_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp+assignvariableop_10_conv2d_transpose_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp)assignvariableop_11_conv2d_transpose_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_conv2d_transpose_2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_conv2d_transpose_2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_decoder_output_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_decoder_output_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_mIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_mIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_1_kernel_mIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_1_bias_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_2_kernel_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_2_bias_mIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp0assignvariableop_31_adam_encoder_output_kernel_mIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_encoder_output_bias_mIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_mIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_mIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_conv2d_transpose_kernel_mIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp0assignvariableop_36_adam_conv2d_transpose_bias_mIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_conv2d_transpose_1_kernel_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_conv2d_transpose_1_bias_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_conv2d_transpose_2_kernel_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_conv2d_transpose_2_bias_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_decoder_output_kernel_mIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_decoder_output_bias_mIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_kernel_vIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv2d_bias_vIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_1_kernel_vIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_1_bias_vIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_conv2d_2_kernel_vIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv2d_2_bias_vIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp0assignvariableop_49_adam_encoder_output_kernel_vIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp.assignvariableop_50_adam_encoder_output_bias_vIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_kernel_vIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_dense_bias_vIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp2assignvariableop_53_adam_conv2d_transpose_kernel_vIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp0assignvariableop_54_adam_conv2d_transpose_bias_vIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp4assignvariableop_55_adam_conv2d_transpose_1_kernel_vIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp2assignvariableop_56_adam_conv2d_transpose_1_bias_vIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_conv2d_transpose_2_kernel_vIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp2assignvariableop_58_adam_conv2d_transpose_2_bias_vIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp0assignvariableop_59_adam_decoder_output_kernel_vIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_decoder_output_bias_vIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_62IdentityIdentity_61:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_62Identity_62:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp::=6
4
_user_specified_nameAdam/decoder_output/bias/v:<<8
6
_user_specified_nameAdam/decoder_output/kernel/v:>;:
8
_user_specified_name Adam/conv2d_transpose_2/bias/v:@:<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/v:>9:
8
_user_specified_name Adam/conv2d_transpose_1/bias/v:@8<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/v:<78
6
_user_specified_nameAdam/conv2d_transpose/bias/v:>6:
8
_user_specified_name Adam/conv2d_transpose/kernel/v:15-
+
_user_specified_nameAdam/dense/bias/v:34/
-
_user_specified_nameAdam/dense/kernel/v::36
4
_user_specified_nameAdam/encoder_output/bias/v:<28
6
_user_specified_nameAdam/encoder_output/kernel/v:410
.
_user_specified_nameAdam/conv2d_2/bias/v:602
0
_user_specified_nameAdam/conv2d_2/kernel/v:4/0
.
_user_specified_nameAdam/conv2d_1/bias/v:6.2
0
_user_specified_nameAdam/conv2d_1/kernel/v:2-.
,
_user_specified_nameAdam/conv2d/bias/v:4,0
.
_user_specified_nameAdam/conv2d/kernel/v::+6
4
_user_specified_nameAdam/decoder_output/bias/m:<*8
6
_user_specified_nameAdam/decoder_output/kernel/m:>):
8
_user_specified_name Adam/conv2d_transpose_2/bias/m:@(<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/m:>':
8
_user_specified_name Adam/conv2d_transpose_1/bias/m:@&<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/m:<%8
6
_user_specified_nameAdam/conv2d_transpose/bias/m:>$:
8
_user_specified_name Adam/conv2d_transpose/kernel/m:1#-
+
_user_specified_nameAdam/dense/bias/m:3"/
-
_user_specified_nameAdam/dense/kernel/m::!6
4
_user_specified_nameAdam/encoder_output/bias/m:< 8
6
_user_specified_nameAdam/encoder_output/kernel/m:40
.
_user_specified_nameAdam/conv2d_2/bias/m:62
0
_user_specified_nameAdam/conv2d_2/kernel/m:40
.
_user_specified_nameAdam/conv2d_1/bias/m:62
0
_user_specified_nameAdam/conv2d_1/kernel/m:2.
,
_user_specified_nameAdam/conv2d/bias/m:40
.
_user_specified_nameAdam/conv2d/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:3/
-
_user_specified_namedecoder_output/bias:51
/
_user_specified_namedecoder_output/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:*
&
$
_user_specified_name
dense/bias:,	(
&
_user_specified_namedense/kernel:3/
-
_user_specified_nameencoder_output/bias:51
/
_user_specified_nameencoder_output/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
O
encoder_input>
serving_default_encoder_input:0���������  C
model_18
StatefulPartitionedCall:0���������  tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
�
:layer-0
;layer_with_weights-0
;layer-1
<layer-2
=layer_with_weights-1
=layer-3
>layer_with_weights-2
>layer-4
?layer_with_weights-3
?layer-5
@layer_with_weights-4
@layer-6
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_network
�
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17"
trackable_list_wrapper
�
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Vtrace_0
Wtrace_12�
'__inference_model_2_layer_call_fn_16138
'__inference_model_2_layer_call_fn_16179�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0zWtrace_1
�
Xtrace_0
Ytrace_12�
B__inference_model_2_layer_call_and_return_conditional_losses_16051
B__inference_model_2_layer_call_and_return_conditional_losses_16097�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0zYtrace_1
�B�
 __inference__wrapped_model_15659encoder_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem�m� m�!m�)m�*m�8m�9m�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�v�v� v�!v�)v�*v�8v�9v�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�"
	optimizer
,
_serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
etrace_02�
&__inference_conv2d_layer_call_fn_16277�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0
�
ftrace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_16288�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
':% 2conv2d/kernel
: 2conv2d/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ltrace_02�
(__inference_conv2d_1_layer_call_fn_16297�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0
�
mtrace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16308�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
):' @2conv2d_1/kernel
:@2conv2d_1/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
strace_02�
(__inference_conv2d_2_layer_call_fn_16317�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
�
ttrace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16328�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0
*:(@�2conv2d_2/kernel
:�2conv2d_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_02�
'__inference_flatten_layer_call_fn_16333�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
�
{trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_16339�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_encoder_output_layer_call_fn_16348�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_encoder_output_layer_call_and_return_conditional_losses_16358�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(:&	�2encoder_output/kernel
!:2encoder_output/bias
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ikernel
Jbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Kkernel
Lbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Mkernel
Nbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Okernel
Pbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
f
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9"
trackable_list_wrapper
f
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_model_1_layer_call_fn_15908
'__inference_model_1_layer_call_fn_15933�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_model_1_layer_call_and_return_conditional_losses_15853
B__inference_model_1_layer_call_and_return_conditional_losses_15883�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
:	�2dense/kernel
:�2
dense/bias
3:1��2conv2d_transpose/kernel
$:"�2conv2d_transpose/bias
4:2@�2conv2d_transpose_1/kernel
%:#@2conv2d_transpose_1/bias
3:1 @2conv2d_transpose_2/kernel
%:# 2conv2d_transpose_2/bias
/:- 2decoder_output/kernel
!:2decoder_output/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_2_layer_call_fn_16138encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_2_layer_call_fn_16179encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_16051encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_16097encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_16268encoder_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_conv2d_layer_call_fn_16277inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_16288inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_1_layer_call_fn_16297inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16308inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_2_layer_call_fn_16317inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16328inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_flatten_layer_call_fn_16333inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_16339inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_encoder_output_layer_call_fn_16348inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_encoder_output_layer_call_and_return_conditional_losses_16358inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_16367�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_16377�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_reshape_layer_call_fn_16382�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_reshape_layer_call_and_return_conditional_losses_16396�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_conv2d_transpose_layer_call_fn_16405�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16439�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_conv2d_transpose_1_layer_call_fn_16448�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16482�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_conv2d_transpose_2_layer_call_fn_16491�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16525�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_decoder_output_layer_call_fn_16534�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_decoder_output_layer_call_and_return_conditional_losses_16545�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
Q
:0
;1
<2
=3
>4
?5
@6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_1_layer_call_fn_15908decoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_1_layer_call_fn_15933decoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_15853decoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_15883decoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_dense_layer_call_fn_16367inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_16377inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_reshape_layer_call_fn_16382inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_reshape_layer_call_and_return_conditional_losses_16396inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_conv2d_transpose_layer_call_fn_16405inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16439inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_conv2d_transpose_1_layer_call_fn_16448inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16482inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_conv2d_transpose_2_layer_call_fn_16491inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16525inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_decoder_output_layer_call_fn_16534inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_decoder_output_layer_call_and_return_conditional_losses_16545inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
/:-@�2Adam/conv2d_2/kernel/m
!:�2Adam/conv2d_2/bias/m
-:+	�2Adam/encoder_output/kernel/m
&:$2Adam/encoder_output/bias/m
$:"	�2Adam/dense/kernel/m
:�2Adam/dense/bias/m
8:6��2Adam/conv2d_transpose/kernel/m
):'�2Adam/conv2d_transpose/bias/m
9:7@�2 Adam/conv2d_transpose_1/kernel/m
*:(@2Adam/conv2d_transpose_1/bias/m
8:6 @2 Adam/conv2d_transpose_2/kernel/m
*:( 2Adam/conv2d_transpose_2/bias/m
4:2 2Adam/decoder_output/kernel/m
&:$2Adam/decoder_output/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
/:-@�2Adam/conv2d_2/kernel/v
!:�2Adam/conv2d_2/bias/v
-:+	�2Adam/encoder_output/kernel/v
&:$2Adam/encoder_output/bias/v
$:"	�2Adam/dense/kernel/v
:�2Adam/dense/bias/v
8:6��2Adam/conv2d_transpose/kernel/v
):'�2Adam/conv2d_transpose/bias/v
9:7@�2 Adam/conv2d_transpose_1/kernel/v
*:(@2Adam/conv2d_transpose_1/bias/v
8:6 @2 Adam/conv2d_transpose_2/kernel/v
*:( 2Adam/conv2d_transpose_2/bias/v
4:2 2Adam/decoder_output/kernel/v
&:$2Adam/decoder_output/bias/v�
 __inference__wrapped_model_15659� !)*89GHIJKLMNOP>�;
4�1
/�,
encoder_input���������  
� "9�6
4
model_1)�&
model_1���������  �
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16308s !7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
(__inference_conv2d_1_layer_call_fn_16297h !7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16328t)*7�4
-�*
(�%
inputs���������@
� "5�2
+�(
tensor_0����������
� �
(__inference_conv2d_2_layer_call_fn_16317i)*7�4
-�*
(�%
inputs���������@
� "*�'
unknown�����������
A__inference_conv2d_layer_call_and_return_conditional_losses_16288s7�4
-�*
(�%
inputs���������  
� "4�1
*�'
tensor_0��������� 
� �
&__inference_conv2d_layer_call_fn_16277h7�4
-�*
(�%
inputs���������  
� ")�&
unknown��������� �
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16482�KLJ�G
@�=
;�8
inputs,����������������������������
� "F�C
<�9
tensor_0+���������������������������@
� �
2__inference_conv2d_transpose_1_layer_call_fn_16448�KLJ�G
@�=
;�8
inputs,����������������������������
� ";�8
unknown+���������������������������@�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16525�MNI�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+��������������������������� 
� �
2__inference_conv2d_transpose_2_layer_call_fn_16491�MNI�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+��������������������������� �
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16439�IJJ�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
0__inference_conv2d_transpose_layer_call_fn_16405�IJJ�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
I__inference_decoder_output_layer_call_and_return_conditional_losses_16545sOP7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������  
� �
.__inference_decoder_output_layer_call_fn_16534hOP7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������  �
@__inference_dense_layer_call_and_return_conditional_losses_16377dGH/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
%__inference_dense_layer_call_fn_16367YGH/�,
%�"
 �
inputs���������
� ""�
unknown�����������
I__inference_encoder_output_layer_call_and_return_conditional_losses_16358d890�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
.__inference_encoder_output_layer_call_fn_16348Y890�-
&�#
!�
inputs����������
� "!�
unknown����������
B__inference_flatten_layer_call_and_return_conditional_losses_16339i8�5
.�+
)�&
inputs����������
� "-�*
#� 
tensor_0����������
� �
'__inference_flatten_layer_call_fn_16333^8�5
.�+
)�&
inputs����������
� ""�
unknown�����������
B__inference_model_1_layer_call_and_return_conditional_losses_15853�
GHIJKLMNOP>�;
4�1
'�$
decoder_input���������
p

 
� "4�1
*�'
tensor_0���������  
� �
B__inference_model_1_layer_call_and_return_conditional_losses_15883�
GHIJKLMNOP>�;
4�1
'�$
decoder_input���������
p 

 
� "4�1
*�'
tensor_0���������  
� �
'__inference_model_1_layer_call_fn_15908w
GHIJKLMNOP>�;
4�1
'�$
decoder_input���������
p

 
� ")�&
unknown���������  �
'__inference_model_1_layer_call_fn_15933w
GHIJKLMNOP>�;
4�1
'�$
decoder_input���������
p 

 
� ")�&
unknown���������  �
B__inference_model_2_layer_call_and_return_conditional_losses_16051� !)*89GHIJKLMNOPF�C
<�9
/�,
encoder_input���������  
p

 
� "4�1
*�'
tensor_0���������  
� �
B__inference_model_2_layer_call_and_return_conditional_losses_16097� !)*89GHIJKLMNOPF�C
<�9
/�,
encoder_input���������  
p 

 
� "4�1
*�'
tensor_0���������  
� �
'__inference_model_2_layer_call_fn_16138� !)*89GHIJKLMNOPF�C
<�9
/�,
encoder_input���������  
p

 
� ")�&
unknown���������  �
'__inference_model_2_layer_call_fn_16179� !)*89GHIJKLMNOPF�C
<�9
/�,
encoder_input���������  
p 

 
� ")�&
unknown���������  �
B__inference_reshape_layer_call_and_return_conditional_losses_16396i0�-
&�#
!�
inputs����������
� "5�2
+�(
tensor_0����������
� �
'__inference_reshape_layer_call_fn_16382^0�-
&�#
!�
inputs����������
� "*�'
unknown�����������
#__inference_signature_wrapper_16268� !)*89GHIJKLMNOPO�L
� 
E�B
@
encoder_input/�,
encoder_input���������  "9�6
4
model_1)�&
model_1���������  