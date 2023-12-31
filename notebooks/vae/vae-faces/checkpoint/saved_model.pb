��<
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
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
,
Exp
x"T
y"T"
Ttype:

2
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��4
�
Adam/conv2d_transpose_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_5/bias/v
�
2Adam/conv2d_transpose_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_5/bias/v*
_output_shapes
:*
dtype0
�
 Adam/conv2d_transpose_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_5/kernel/v
�
4Adam/conv2d_transpose_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_5/kernel/v*&
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_10/beta/v
�
6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_10/gamma/v
�
7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_4/bias/v
�
2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_4/kernel/v
�
4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/v
�
5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/v
�
6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/v
�
2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_3/kernel/v
�
4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/v
�
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/v
�
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/v
�
2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_2/kernel/v
�
4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/v
�
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/v
�
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:@*
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
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_1/kernel/v
�
4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_6/beta/v
�
5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_6/gamma/v
�
6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv2d_transpose/bias/v
�
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv2d_transpose/kernel/v
�
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_5/beta/v
�
5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_5/gamma/v
�
6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:�*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/z_log_var/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/z_log_var/bias/v
|
)Adam/z_log_var/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/z_log_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/z_log_var/kernel/v
�
+Adam/z_log_var/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/v* 
_output_shapes
:
��*
dtype0
}
Adam/z_mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/z_mean/bias/v
v
&Adam/z_mean/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*%
shared_nameAdam/z_mean/kernel/v

(Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/v* 
_output_shapes
:
��*
dtype0
�
!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_4/beta/v
�
5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_4/gamma/v
�
6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/v
�
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_3/beta/v
�
5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_3/gamma/v
�
6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/v
�
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_2/beta/v
�
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_2/gamma/v
�
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_2/kernel/v
�
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/v
�
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/v
�
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:@*
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
shape:@@*'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/v
�
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:@*
dtype0
�
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/v
�
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_5/bias/m
�
2Adam/conv2d_transpose_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_5/bias/m*
_output_shapes
:*
dtype0
�
 Adam/conv2d_transpose_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_5/kernel/m
�
4Adam/conv2d_transpose_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_5/kernel/m*&
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_10/beta/m
�
6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
:@*
dtype0
�
#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_10/gamma/m
�
7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_4/bias/m
�
2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_4/kernel/m
�
4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/m
�
5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/m
�
6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/m
�
2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_3/kernel/m
�
4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/m
�
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/m
�
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/m
�
2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_2/kernel/m
�
4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/m
�
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/m
�
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:@*
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
dtype0*
shape:@@*1
shared_name" Adam/conv2d_transpose_1/kernel/m
�
4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_6/beta/m
�
5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_6/gamma/m
�
6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv2d_transpose/bias/m
�
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv2d_transpose/kernel/m
�
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_5/beta/m
�
5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_5/gamma/m
�
6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:�*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/z_log_var/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/z_log_var/bias/m
|
)Adam/z_log_var/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/z_log_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/z_log_var/kernel/m
�
+Adam/z_log_var/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/m* 
_output_shapes
:
��*
dtype0
}
Adam/z_mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/z_mean/bias/m
v
&Adam/z_mean/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*%
shared_nameAdam/z_mean/kernel/m

(Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/m* 
_output_shapes
:
��*
dtype0
�
!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_4/beta/m
�
5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_4/gamma/m
�
6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/m
�
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_3/beta/m
�
5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_3/gamma/m
�
6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/m
�
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_2/beta/m
�
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_2/gamma/m
�
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_2/kernel/m
�
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:@@*
dtype0
�
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/m
�
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/m
�
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:@*
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
shape:@@*'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/m
�
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:@*
dtype0
�
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/m
�
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
conv2d_transpose_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_5/bias

+conv2d_transpose_5/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_5/kernel
�
-conv2d_transpose_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/kernel*&
_output_shapes
:@*
dtype0
�
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_10/moving_variance
�
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_10/moving_mean
�
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_10/beta
�
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_10/gamma
�
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:@*
dtype0
�
conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_4/bias

+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameconv2d_transpose_4/kernel
�
-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_9/moving_variance
�
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_9/moving_mean
�
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_9/beta
�
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_9/gamma
�
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:@*
dtype0
�
conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_3/bias

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameconv2d_transpose_3/kernel
�
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_8/moving_variance
�
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_8/moving_mean
�
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_8/beta
�
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_8/gamma
�
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:@*
dtype0
�
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameconv2d_transpose_2/kernel
�
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_7/moving_variance
�
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_7/moving_mean
�
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_7/beta
�
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_7/gamma
�
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:@*
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
dtype0*
shape:@@**
shared_nameconv2d_transpose_1/kernel
�
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_6/moving_variance
�
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_6/moving_mean
�
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_6/beta
�
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_6/gamma
�
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:@*
dtype0
�
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameconv2d_transpose/kernel
�
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_5/moving_variance
�
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_5/moving_mean
�
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_5/beta
�
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_5/gamma
�
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
u
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namez_log_var/bias
n
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes	
:�*
dtype0
~
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namez_log_var/kernel
w
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel* 
_output_shapes
:
��*
dtype0
o
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namez_mean/bias
h
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes	
:�*
dtype0
x
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namez_mean/kernel
q
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel* 
_output_shapes
:
��*
dtype0
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:@*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
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
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������@@*
dtype0*$
shape:���������@@
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense/kernel
dense/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_transpose_4/kernelconv2d_transpose_4/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_5/kernelconv2d_transpose_5/bias*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:����������:����������:���������@@*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_217523

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ɖ
value��B�� B��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

total_loss_tracker
reconstruction_loss_tracker
kl_loss_tracker
	optimizer
loss

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18
#19
$20
%21
&22
'23
(24
)25
*26
+27
,28
-29
.30
/31
032
133
234
335
436
537
638
739
840
941
:42
;43
<44
=45
>46
?47
@48
A49
B50
C51
D52
E53
F54
G55
H56
I57
J58
K59
L60
M61
N62
O63
P64
Q65
R66
S67
T68
U69
V70
W71
X72
Y73
Z74
[75
\76
]77*
�
0
1
2
3
4
5
6
7
8
9
10
11
"12
#13
$14
%15
(16
)17
*18
+19
.20
/21
022
123
224
325
426
527
828
929
:30
;31
>32
?33
@34
A35
D36
E37
F38
G39
J40
K41
L42
M43
P44
Q45
R46
S47
V48
W49*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ctrace_0
dtrace_1* 

etrace_0
ftrace_1* 
* 
�
glayer-0
hlayer_with_weights-0
hlayer-1
ilayer_with_weights-1
ilayer-2
jlayer-3
klayer_with_weights-2
klayer-4
llayer_with_weights-3
llayer-5
mlayer-6
nlayer_with_weights-4
nlayer-7
olayer_with_weights-5
olayer-8
player-9
qlayer_with_weights-6
qlayer-10
rlayer_with_weights-7
rlayer-11
slayer-12
tlayer_with_weights-8
tlayer-13
ulayer_with_weights-9
ulayer-14
vlayer-15
wlayer-16
xlayer_with_weights-10
xlayer-17
ylayer_with_weights-11
ylayer-18
zlayer-19
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses*
�
�layer-0
�layer_with_weights-0
�layer-1
�layer_with_weights-1
�layer-2
�layer-3
�layer-4
�layer_with_weights-2
�layer-5
�layer_with_weights-3
�layer-6
�layer-7
�layer_with_weights-4
�layer-8
�layer_with_weights-5
�layer-9
�layer-10
�layer_with_weights-6
�layer-11
�layer_with_weights-7
�layer-12
�layer-13
�layer_with_weights-8
�layer-14
�layer_with_weights-9
�layer-15
�layer-16
�layer_with_weights-10
�layer-17
�layer_with_weights-11
�layer-18
�layer-19
�layer_with_weights-12
�layer-20
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
:
�	variables
�	keras_api
	Xtotal
	Ycount*
:
�	variables
�	keras_api
	Ztotal
	[count*
:
�	variables
�	keras_api
	\total
	]count*
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�m�m�m�m�m�m�m�m�m�m�"m�#m�$m�%m�(m�)m�*m�+m�.m�/m�0m�1m�2m�3m�4m�5m�8m�9m�:m�;m�>m�?m�@m�Am�Dm�Em�Fm�Gm�Jm�Km�Lm�Mm�Pm�Qm�Rm�Sm�Vm�Wm�v�v�v�v�v�v�v�v�v�v�v�v�"v�#v�$v�%v�(v�)v�*v�+v�.v�/v�0v�1v�2v�3v�4v�5v�8v�9v�:v�;v�>v�?v�@v�Av�Dv�Ev�Fv�Gv�Jv�Kv�Lv�Mv�Pv�Qv�Rv�Sv�Vv�Wv�*
* 

�serving_default* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEbatch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_2/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_2/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_3/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_3/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_3/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_3/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_4/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_4/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_4/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_4/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_4/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_4/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEz_mean/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEz_mean/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEz_log_var/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEz_log_var/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_5/gamma'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_5/beta'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_transpose/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_6/gamma'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_6/beta'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_6/moving_mean'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_6/moving_variance'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_1/kernel'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_1/bias'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_7/gamma'variables/48/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_7/beta'variables/49/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_8/gamma'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_8/beta'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_8/moving_mean'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_8/moving_variance'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_3/kernel'variables/58/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_3/bias'variables/59/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_9/gamma'variables/60/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_9/beta'variables/61/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_9/moving_mean'variables/62/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_9/moving_variance'variables/63/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_4/kernel'variables/64/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_4/bias'variables/65/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_10/gamma'variables/66/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_10/beta'variables/67/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_10/moving_mean'variables/68/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_10/moving_variance'variables/69/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_5/kernel'variables/70/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_5/bias'variables/71/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_2'variables/72/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_2'variables/73/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEtotal_1'variables/74/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEcount_1'variables/75/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEtotal'variables/76/.ATTRIBUTES/VARIABLE_VALUE*
F@
VARIABLE_VALUEcount'variables/77/.ATTRIBUTES/VARIABLE_VALUE*
�
0
1
2
3
 4
!5
&6
'7
,8
-9
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
X22
Y23
Z24
[25
\26
]27*

0
	1*


0
1
2*
* 
:


total_loss
reconstruction_loss
kl_loss*
* 
* 
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
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

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
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

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
 moving_mean
!moving_variance*
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

"kernel
#bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	$gamma
%beta
&moving_mean
'moving_variance*
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

(kernel
)bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta
,moving_mean
-moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel
/bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18
#19
$20
%21
&22
'23
(24
)25
*26
+27
,28
-29
.30
/31
032
133*
�
0
1
2
3
4
5
6
7
8
9
10
11
"12
#13
$14
%15
(16
)17
*18
+19
.20
/21
022
123*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	4gamma
5beta
6moving_mean
7moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

8kernel
9bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	:gamma
;beta
<moving_mean
=moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

>kernel
?bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel
Kbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Vkernel
Wbias
!�_jit_compiled_convolution_op*
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
D18
E19
F20
G21
H22
I23
J24
K25
L26
M27
N28
O29
P30
Q31
R32
S33
T34
U35
V36
W37*
�
20
31
42
53
84
95
:6
;7
>8
?9
@10
A11
D12
E13
F14
G15
J16
K17
L18
M19
P20
Q21
R22
S23
V24
W25*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 

X0
Y1*

�	variables*

Z0
[1*

�	variables*

\0
]1*

�	variables*
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

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
 2
!3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
$0
%1
&2
'3*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
*0
+1
,2
-3*

*0
+1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
J
0
1
2
3
 4
!5
&6
'7
,8
-9*
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17
y18
z19*
* 
* 
* 
* 
* 
* 
* 

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
40
51
62
73*

40
51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

80
91*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
:0
;1
<2
=3*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
@0
A1
B2
C3*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
F0
G1
H2
I3*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
L0
M1
N2
O3*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

P0
Q1*

P0
Q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
R0
S1
T2
U3*

R0
S1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
Z
60
71
<2
=3
B4
C5
H6
I7
N8
O9
T10
U11*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20*
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
0
1*
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
0
1*
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
 0
!1*
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
&0
'1*
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
,0
-1*
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
* 
* 
* 
* 
* 
* 
* 
* 

60
71*
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
<0
=1*
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
B0
C1*
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
H0
I1*
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
N0
O1*
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
T0
U1*
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
pj
VARIABLE_VALUEAdam/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/batch_normalization/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/batch_normalization/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_1/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_1/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_2/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_3/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_3/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_3/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_4/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_4/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_4/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/z_mean/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/z_mean/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/z_log_var/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/z_log_var/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_5/beta/mCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/mCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_6/beta/mCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mCvariables/48/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mCvariables/49/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mCvariables/52/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mCvariables/53/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mCvariables/54/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mCvariables/55/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/mCvariables/58/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/mCvariables/59/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mCvariables/60/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_9/beta/mCvariables/61/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/mCvariables/64/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/mCvariables/65/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mCvariables/66/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_10/beta/mCvariables/67/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_5/kernel/mCvariables/70/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_5/bias/mCvariables/71/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/batch_normalization/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/batch_normalization/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_1/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d_1/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_2/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_3/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_3/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_3/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_4/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_4/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_4/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/z_mean/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/z_mean/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/z_log_var/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/z_log_var/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_5/beta/vCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/vCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_6/beta/vCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vCvariables/48/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vCvariables/49/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vCvariables/52/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vCvariables/53/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vCvariables/54/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vCvariables/55/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/vCvariables/58/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/vCvariables/59/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vCvariables/60/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_9/beta/vCvariables/61/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/vCvariables/64/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/vCvariables/65/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vCvariables/66/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_10/beta/vCvariables/67/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_5/kernel/vCvariables/70/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_5/bias/vCvariables/71/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�,
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense/kernel
dense/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_transpose_4/kernelconv2d_transpose_4/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_5/kernelconv2d_transpose_5/biastotal_2count_2total_1count_1totalcount	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/conv2d/kernel/mAdam/conv2d/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/dense/kernel/mAdam/dense/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/m Adam/conv2d_transpose_3/kernel/mAdam/conv2d_transpose_3/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/m Adam/conv2d_transpose_4/kernel/mAdam/conv2d_transpose_4/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/m Adam/conv2d_transpose_5/kernel/mAdam/conv2d_transpose_5/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/dense/kernel/vAdam/dense/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/v Adam/conv2d_transpose_3/kernel/vAdam/conv2d_transpose_3/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/v Adam/conv2d_transpose_4/kernel/vAdam/conv2d_transpose_4/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/v Adam/conv2d_transpose_5/kernel/vAdam/conv2d_transpose_5/bias/vConst*�
Tin�
�2�*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_219922
�+
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense/kernel
dense/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_transpose_4/kernelconv2d_transpose_4/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_5/kernelconv2d_transpose_5/biastotal_2count_2total_1count_1totalcount	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/conv2d/kernel/mAdam/conv2d/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/dense/kernel/mAdam/dense/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/m Adam/conv2d_transpose_3/kernel/mAdam/conv2d_transpose_3/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/m Adam/conv2d_transpose_4/kernel/mAdam/conv2d_transpose_4/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/m Adam/conv2d_transpose_5/kernel/mAdam/conv2d_transpose_5/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/dense/kernel/vAdam/dense/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/v Adam/conv2d_transpose_3/kernel/vAdam/conv2d_transpose_3/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/v Adam/conv2d_transpose_4/kernel/vAdam/conv2d_transpose_4/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/v Adam/conv2d_transpose_5/kernel/vAdam/conv2d_transpose_5/bias/v*�
Tin�
�2�*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_220480��,
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217859

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
c
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_217614

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������  @*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�@
�
?__inference_vae_layer_call_and_return_conditional_losses_217057
input_1(
encoder_216906:@
encoder_216908:@
encoder_216910:@
encoder_216912:@
encoder_216914:@
encoder_216916:@(
encoder_216918:@@
encoder_216920:@
encoder_216922:@
encoder_216924:@
encoder_216926:@
encoder_216928:@(
encoder_216930:@@
encoder_216932:@
encoder_216934:@
encoder_216936:@
encoder_216938:@
encoder_216940:@(
encoder_216942:@@
encoder_216944:@
encoder_216946:@
encoder_216948:@
encoder_216950:@
encoder_216952:@(
encoder_216954:@@
encoder_216956:@
encoder_216958:@
encoder_216960:@
encoder_216962:@
encoder_216964:@"
encoder_216966:
��
encoder_216968:	�"
encoder_216970:
��
encoder_216972:	� 
model_216977:
��
model_216979:	�
model_216981:	�
model_216983:	�
model_216985:	�
model_216987:	�&
model_216989:@@
model_216991:@
model_216993:@
model_216995:@
model_216997:@
model_216999:@&
model_217001:@@
model_217003:@
model_217005:@
model_217007:@
model_217009:@
model_217011:@&
model_217013:@@
model_217015:@
model_217017:@
model_217019:@
model_217021:@
model_217023:@&
model_217025:@@
model_217027:@
model_217029:@
model_217031:@
model_217033:@
model_217035:@&
model_217037:@@
model_217039:@
model_217041:@
model_217043:@
model_217045:@
model_217047:@&
model_217049:@
model_217051:
identity

identity_1

identity_2��encoder/StatefulPartitionedCall�model/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_216906encoder_216908encoder_216910encoder_216912encoder_216914encoder_216916encoder_216918encoder_216920encoder_216922encoder_216924encoder_216926encoder_216928encoder_216930encoder_216932encoder_216934encoder_216936encoder_216938encoder_216940encoder_216942encoder_216944encoder_216946encoder_216948encoder_216950encoder_216952encoder_216954encoder_216956encoder_216958encoder_216960encoder_216962encoder_216964encoder_216966encoder_216968encoder_216970encoder_216972*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_215393�
model/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2model_216977model_216979model_216981model_216983model_216985model_216987model_216989model_216991model_216993model_216995model_216997model_216999model_217001model_217003model_217005model_217007model_217009model_217011model_217013model_217015model_217017model_217019model_217021model_217023model_217025model_217027model_217029model_217031model_217033model_217035model_217037model_217039model_217041model_217043model_217045model_217047model_217049model_217051*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_216543x
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������z

Identity_1Identity(encoder/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������

Identity_2Identity&model/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@d
NoOpNoOp ^encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:&H"
 
_user_specified_name217051:&G"
 
_user_specified_name217049:&F"
 
_user_specified_name217047:&E"
 
_user_specified_name217045:&D"
 
_user_specified_name217043:&C"
 
_user_specified_name217041:&B"
 
_user_specified_name217039:&A"
 
_user_specified_name217037:&@"
 
_user_specified_name217035:&?"
 
_user_specified_name217033:&>"
 
_user_specified_name217031:&="
 
_user_specified_name217029:&<"
 
_user_specified_name217027:&;"
 
_user_specified_name217025:&:"
 
_user_specified_name217023:&9"
 
_user_specified_name217021:&8"
 
_user_specified_name217019:&7"
 
_user_specified_name217017:&6"
 
_user_specified_name217015:&5"
 
_user_specified_name217013:&4"
 
_user_specified_name217011:&3"
 
_user_specified_name217009:&2"
 
_user_specified_name217007:&1"
 
_user_specified_name217005:&0"
 
_user_specified_name217003:&/"
 
_user_specified_name217001:&."
 
_user_specified_name216999:&-"
 
_user_specified_name216997:&,"
 
_user_specified_name216995:&+"
 
_user_specified_name216993:&*"
 
_user_specified_name216991:&)"
 
_user_specified_name216989:&("
 
_user_specified_name216987:&'"
 
_user_specified_name216985:&&"
 
_user_specified_name216983:&%"
 
_user_specified_name216981:&$"
 
_user_specified_name216979:&#"
 
_user_specified_name216977:&""
 
_user_specified_name216972:&!"
 
_user_specified_name216970:& "
 
_user_specified_name216968:&"
 
_user_specified_name216966:&"
 
_user_specified_name216964:&"
 
_user_specified_name216962:&"
 
_user_specified_name216960:&"
 
_user_specified_name216958:&"
 
_user_specified_name216956:&"
 
_user_specified_name216954:&"
 
_user_specified_name216952:&"
 
_user_specified_name216950:&"
 
_user_specified_name216948:&"
 
_user_specified_name216946:&"
 
_user_specified_name216944:&"
 
_user_specified_name216942:&"
 
_user_specified_name216940:&"
 
_user_specified_name216938:&"
 
_user_specified_name216936:&"
 
_user_specified_name216934:&"
 
_user_specified_name216932:&"
 
_user_specified_name216930:&"
 
_user_specified_name216928:&"
 
_user_specified_name216926:&
"
 
_user_specified_name216924:&	"
 
_user_specified_name216922:&"
 
_user_specified_name216920:&"
 
_user_specified_name216918:&"
 
_user_specified_name216916:&"
 
_user_specified_name216914:&"
 
_user_specified_name216912:&"
 
_user_specified_name216910:&"
 
_user_specified_name216908:&"
 
_user_specified_name216906:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217586

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_4_layer_call_fn_217973

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_215231h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218519

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_215212

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
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
:���������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_218301

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_1_layer_call_fn_217700

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_215141h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�u
�
A__inference_model_layer_call_and_return_conditional_losses_216443
decoder_input 
dense_216302:
��
dense_216304:	�+
batch_normalization_5_216307:	�+
batch_normalization_5_216309:	�+
batch_normalization_5_216311:	�+
batch_normalization_5_216313:	�1
conv2d_transpose_216337:@@%
conv2d_transpose_216339:@*
batch_normalization_6_216342:@*
batch_normalization_6_216344:@*
batch_normalization_6_216346:@*
batch_normalization_6_216348:@3
conv2d_transpose_1_216357:@@'
conv2d_transpose_1_216359:@*
batch_normalization_7_216362:@*
batch_normalization_7_216364:@*
batch_normalization_7_216366:@*
batch_normalization_7_216368:@3
conv2d_transpose_2_216377:@@'
conv2d_transpose_2_216379:@*
batch_normalization_8_216382:@*
batch_normalization_8_216384:@*
batch_normalization_8_216386:@*
batch_normalization_8_216388:@3
conv2d_transpose_3_216397:@@'
conv2d_transpose_3_216399:@*
batch_normalization_9_216402:@*
batch_normalization_9_216404:@*
batch_normalization_9_216406:@*
batch_normalization_9_216408:@3
conv2d_transpose_4_216417:@@'
conv2d_transpose_4_216419:@+
batch_normalization_10_216422:@+
batch_normalization_10_216424:@+
batch_normalization_10_216426:@+
batch_normalization_10_216428:@3
conv2d_transpose_5_216437:@'
conv2d_transpose_5_216439:
identity��.batch_normalization_10/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�*conv2d_transpose_3/StatefulPartitionedCall�*conv2d_transpose_4/StatefulPartitionedCall�*conv2d_transpose_5/StatefulPartitionedCall�dense/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_216302dense_216304*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_216301�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_5_216307batch_normalization_5_216309batch_normalization_5_216311batch_normalization_5_216313*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215680�
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_216320�
reshape/PartitionedCallPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_216335�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_216337conv2d_transpose_216339*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_215759�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_6_216342batch_normalization_6_216344batch_normalization_6_216346batch_normalization_6_216348*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215786�
leaky_re_lu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_216355�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv2d_transpose_1_216357conv2d_transpose_1_216359*
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_215863�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_216362batch_normalization_7_216364batch_normalization_7_216366batch_normalization_7_216368*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215890�
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_216375�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_2_216377conv2d_transpose_2_216379*
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_215967�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_216382batch_normalization_8_216384batch_normalization_8_216386batch_normalization_8_216388*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_215994�
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_216395�
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_3_216397conv2d_transpose_3_216399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_216071�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_216402batch_normalization_9_216404batch_normalization_9_216406batch_normalization_9_216408*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216098�
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_216415�
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_4_216417conv2d_transpose_4_216419*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_216175�
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0batch_normalization_10_216422batch_normalization_10_216424batch_normalization_10_216426batch_normalization_10_216428*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216202�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_216435�
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_5_216437conv2d_transpose_5_216439*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_216280�
IdentityIdentity3conv2d_transpose_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:&&"
 
_user_specified_name216439:&%"
 
_user_specified_name216437:&$"
 
_user_specified_name216428:&#"
 
_user_specified_name216426:&""
 
_user_specified_name216424:&!"
 
_user_specified_name216422:& "
 
_user_specified_name216419:&"
 
_user_specified_name216417:&"
 
_user_specified_name216408:&"
 
_user_specified_name216406:&"
 
_user_specified_name216404:&"
 
_user_specified_name216402:&"
 
_user_specified_name216399:&"
 
_user_specified_name216397:&"
 
_user_specified_name216388:&"
 
_user_specified_name216386:&"
 
_user_specified_name216384:&"
 
_user_specified_name216382:&"
 
_user_specified_name216379:&"
 
_user_specified_name216377:&"
 
_user_specified_name216368:&"
 
_user_specified_name216366:&"
 
_user_specified_name216364:&"
 
_user_specified_name216362:&"
 
_user_specified_name216359:&"
 
_user_specified_name216357:&"
 
_user_specified_name216348:&"
 
_user_specified_name216346:&
"
 
_user_specified_name216344:&	"
 
_user_specified_name216342:&"
 
_user_specified_name216339:&"
 
_user_specified_name216337:&"
 
_user_specified_name216313:&"
 
_user_specified_name216311:&"
 
_user_specified_name216309:&"
 
_user_specified_name216307:&"
 
_user_specified_name216304:&"
 
_user_specified_name216302:W S
(
_output_shapes
:����������
'
_user_specified_namedecoder_input
�

�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_215182

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
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
6__inference_batch_normalization_3_layer_call_fn_217841

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214992�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217837:&"
 
_user_specified_name217835:&"
 
_user_specified_name217833:&"
 
_user_specified_name217831:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
1__inference_conv2d_transpose_layer_call_fn_218196

inputs!
unknown:@@
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
GPU 2J 8� *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_215759�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218192:&"
 
_user_specified_name218190:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214806

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_4_layer_call_fn_218652

inputs!
unknown:@@
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_216175�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218648:&"
 
_user_specified_name218646:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_216071

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218387

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215908

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_218343

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�

�
B__inference_conv2d_layer_call_and_return_conditional_losses_217542

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
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
:���������  @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
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
:���������@@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217950

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_9_layer_call_fn_218638

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_216415h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_218415

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_215967

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
J
.__inference_leaky_re_lu_6_layer_call_fn_218296

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_216355h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_z_log_var_layer_call_and_return_conditional_losses_218027

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�
D
(__inference_reshape_layer_call_fn_218173

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_216335h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_217796

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_215171

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
s
D__inference_sampling_layer_call_and_return_conditional_losses_218059
inputs_0
inputs_1
identity�K
ShapeShapeinputs_0*
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
shrink_axis_maskM
Shape_1Shapeinputs_0*
T0*
_output_shapes
::��_
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
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed2���*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:����������}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:����������F
ExpExpmul:z:0*
T0*(
_output_shapes
:����������[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:����������T
addAddV2inputs_0	mul_1:z:0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs_0
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214992

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216116

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�}
"__inference__traced_restore_220480
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@:
,assignvariableop_2_batch_normalization_gamma:@9
+assignvariableop_3_batch_normalization_beta:@@
2assignvariableop_4_batch_normalization_moving_mean:@D
6assignvariableop_5_batch_normalization_moving_variance:@<
"assignvariableop_6_conv2d_1_kernel:@@.
 assignvariableop_7_conv2d_1_bias:@<
.assignvariableop_8_batch_normalization_1_gamma:@;
-assignvariableop_9_batch_normalization_1_beta:@C
5assignvariableop_10_batch_normalization_1_moving_mean:@G
9assignvariableop_11_batch_normalization_1_moving_variance:@=
#assignvariableop_12_conv2d_2_kernel:@@/
!assignvariableop_13_conv2d_2_bias:@=
/assignvariableop_14_batch_normalization_2_gamma:@<
.assignvariableop_15_batch_normalization_2_beta:@C
5assignvariableop_16_batch_normalization_2_moving_mean:@G
9assignvariableop_17_batch_normalization_2_moving_variance:@=
#assignvariableop_18_conv2d_3_kernel:@@/
!assignvariableop_19_conv2d_3_bias:@=
/assignvariableop_20_batch_normalization_3_gamma:@<
.assignvariableop_21_batch_normalization_3_beta:@C
5assignvariableop_22_batch_normalization_3_moving_mean:@G
9assignvariableop_23_batch_normalization_3_moving_variance:@=
#assignvariableop_24_conv2d_4_kernel:@@/
!assignvariableop_25_conv2d_4_bias:@=
/assignvariableop_26_batch_normalization_4_gamma:@<
.assignvariableop_27_batch_normalization_4_beta:@C
5assignvariableop_28_batch_normalization_4_moving_mean:@G
9assignvariableop_29_batch_normalization_4_moving_variance:@5
!assignvariableop_30_z_mean_kernel:
��.
assignvariableop_31_z_mean_bias:	�8
$assignvariableop_32_z_log_var_kernel:
��1
"assignvariableop_33_z_log_var_bias:	�4
 assignvariableop_34_dense_kernel:
��-
assignvariableop_35_dense_bias:	�>
/assignvariableop_36_batch_normalization_5_gamma:	�=
.assignvariableop_37_batch_normalization_5_beta:	�D
5assignvariableop_38_batch_normalization_5_moving_mean:	�H
9assignvariableop_39_batch_normalization_5_moving_variance:	�E
+assignvariableop_40_conv2d_transpose_kernel:@@7
)assignvariableop_41_conv2d_transpose_bias:@=
/assignvariableop_42_batch_normalization_6_gamma:@<
.assignvariableop_43_batch_normalization_6_beta:@C
5assignvariableop_44_batch_normalization_6_moving_mean:@G
9assignvariableop_45_batch_normalization_6_moving_variance:@G
-assignvariableop_46_conv2d_transpose_1_kernel:@@9
+assignvariableop_47_conv2d_transpose_1_bias:@=
/assignvariableop_48_batch_normalization_7_gamma:@<
.assignvariableop_49_batch_normalization_7_beta:@C
5assignvariableop_50_batch_normalization_7_moving_mean:@G
9assignvariableop_51_batch_normalization_7_moving_variance:@G
-assignvariableop_52_conv2d_transpose_2_kernel:@@9
+assignvariableop_53_conv2d_transpose_2_bias:@=
/assignvariableop_54_batch_normalization_8_gamma:@<
.assignvariableop_55_batch_normalization_8_beta:@C
5assignvariableop_56_batch_normalization_8_moving_mean:@G
9assignvariableop_57_batch_normalization_8_moving_variance:@G
-assignvariableop_58_conv2d_transpose_3_kernel:@@9
+assignvariableop_59_conv2d_transpose_3_bias:@=
/assignvariableop_60_batch_normalization_9_gamma:@<
.assignvariableop_61_batch_normalization_9_beta:@C
5assignvariableop_62_batch_normalization_9_moving_mean:@G
9assignvariableop_63_batch_normalization_9_moving_variance:@G
-assignvariableop_64_conv2d_transpose_4_kernel:@@9
+assignvariableop_65_conv2d_transpose_4_bias:@>
0assignvariableop_66_batch_normalization_10_gamma:@=
/assignvariableop_67_batch_normalization_10_beta:@D
6assignvariableop_68_batch_normalization_10_moving_mean:@H
:assignvariableop_69_batch_normalization_10_moving_variance:@G
-assignvariableop_70_conv2d_transpose_5_kernel:@9
+assignvariableop_71_conv2d_transpose_5_bias:%
assignvariableop_72_total_2: %
assignvariableop_73_count_2: %
assignvariableop_74_total_1: %
assignvariableop_75_count_1: #
assignvariableop_76_total: #
assignvariableop_77_count: '
assignvariableop_78_adam_iter:	 )
assignvariableop_79_adam_beta_1: )
assignvariableop_80_adam_beta_2: (
assignvariableop_81_adam_decay: 0
&assignvariableop_82_adam_learning_rate: B
(assignvariableop_83_adam_conv2d_kernel_m:@4
&assignvariableop_84_adam_conv2d_bias_m:@B
4assignvariableop_85_adam_batch_normalization_gamma_m:@A
3assignvariableop_86_adam_batch_normalization_beta_m:@D
*assignvariableop_87_adam_conv2d_1_kernel_m:@@6
(assignvariableop_88_adam_conv2d_1_bias_m:@D
6assignvariableop_89_adam_batch_normalization_1_gamma_m:@C
5assignvariableop_90_adam_batch_normalization_1_beta_m:@D
*assignvariableop_91_adam_conv2d_2_kernel_m:@@6
(assignvariableop_92_adam_conv2d_2_bias_m:@D
6assignvariableop_93_adam_batch_normalization_2_gamma_m:@C
5assignvariableop_94_adam_batch_normalization_2_beta_m:@D
*assignvariableop_95_adam_conv2d_3_kernel_m:@@6
(assignvariableop_96_adam_conv2d_3_bias_m:@D
6assignvariableop_97_adam_batch_normalization_3_gamma_m:@C
5assignvariableop_98_adam_batch_normalization_3_beta_m:@D
*assignvariableop_99_adam_conv2d_4_kernel_m:@@7
)assignvariableop_100_adam_conv2d_4_bias_m:@E
7assignvariableop_101_adam_batch_normalization_4_gamma_m:@D
6assignvariableop_102_adam_batch_normalization_4_beta_m:@=
)assignvariableop_103_adam_z_mean_kernel_m:
��6
'assignvariableop_104_adam_z_mean_bias_m:	�@
,assignvariableop_105_adam_z_log_var_kernel_m:
��9
*assignvariableop_106_adam_z_log_var_bias_m:	�<
(assignvariableop_107_adam_dense_kernel_m:
��5
&assignvariableop_108_adam_dense_bias_m:	�F
7assignvariableop_109_adam_batch_normalization_5_gamma_m:	�E
6assignvariableop_110_adam_batch_normalization_5_beta_m:	�M
3assignvariableop_111_adam_conv2d_transpose_kernel_m:@@?
1assignvariableop_112_adam_conv2d_transpose_bias_m:@E
7assignvariableop_113_adam_batch_normalization_6_gamma_m:@D
6assignvariableop_114_adam_batch_normalization_6_beta_m:@O
5assignvariableop_115_adam_conv2d_transpose_1_kernel_m:@@A
3assignvariableop_116_adam_conv2d_transpose_1_bias_m:@E
7assignvariableop_117_adam_batch_normalization_7_gamma_m:@D
6assignvariableop_118_adam_batch_normalization_7_beta_m:@O
5assignvariableop_119_adam_conv2d_transpose_2_kernel_m:@@A
3assignvariableop_120_adam_conv2d_transpose_2_bias_m:@E
7assignvariableop_121_adam_batch_normalization_8_gamma_m:@D
6assignvariableop_122_adam_batch_normalization_8_beta_m:@O
5assignvariableop_123_adam_conv2d_transpose_3_kernel_m:@@A
3assignvariableop_124_adam_conv2d_transpose_3_bias_m:@E
7assignvariableop_125_adam_batch_normalization_9_gamma_m:@D
6assignvariableop_126_adam_batch_normalization_9_beta_m:@O
5assignvariableop_127_adam_conv2d_transpose_4_kernel_m:@@A
3assignvariableop_128_adam_conv2d_transpose_4_bias_m:@F
8assignvariableop_129_adam_batch_normalization_10_gamma_m:@E
7assignvariableop_130_adam_batch_normalization_10_beta_m:@O
5assignvariableop_131_adam_conv2d_transpose_5_kernel_m:@A
3assignvariableop_132_adam_conv2d_transpose_5_bias_m:C
)assignvariableop_133_adam_conv2d_kernel_v:@5
'assignvariableop_134_adam_conv2d_bias_v:@C
5assignvariableop_135_adam_batch_normalization_gamma_v:@B
4assignvariableop_136_adam_batch_normalization_beta_v:@E
+assignvariableop_137_adam_conv2d_1_kernel_v:@@7
)assignvariableop_138_adam_conv2d_1_bias_v:@E
7assignvariableop_139_adam_batch_normalization_1_gamma_v:@D
6assignvariableop_140_adam_batch_normalization_1_beta_v:@E
+assignvariableop_141_adam_conv2d_2_kernel_v:@@7
)assignvariableop_142_adam_conv2d_2_bias_v:@E
7assignvariableop_143_adam_batch_normalization_2_gamma_v:@D
6assignvariableop_144_adam_batch_normalization_2_beta_v:@E
+assignvariableop_145_adam_conv2d_3_kernel_v:@@7
)assignvariableop_146_adam_conv2d_3_bias_v:@E
7assignvariableop_147_adam_batch_normalization_3_gamma_v:@D
6assignvariableop_148_adam_batch_normalization_3_beta_v:@E
+assignvariableop_149_adam_conv2d_4_kernel_v:@@7
)assignvariableop_150_adam_conv2d_4_bias_v:@E
7assignvariableop_151_adam_batch_normalization_4_gamma_v:@D
6assignvariableop_152_adam_batch_normalization_4_beta_v:@=
)assignvariableop_153_adam_z_mean_kernel_v:
��6
'assignvariableop_154_adam_z_mean_bias_v:	�@
,assignvariableop_155_adam_z_log_var_kernel_v:
��9
*assignvariableop_156_adam_z_log_var_bias_v:	�<
(assignvariableop_157_adam_dense_kernel_v:
��5
&assignvariableop_158_adam_dense_bias_v:	�F
7assignvariableop_159_adam_batch_normalization_5_gamma_v:	�E
6assignvariableop_160_adam_batch_normalization_5_beta_v:	�M
3assignvariableop_161_adam_conv2d_transpose_kernel_v:@@?
1assignvariableop_162_adam_conv2d_transpose_bias_v:@E
7assignvariableop_163_adam_batch_normalization_6_gamma_v:@D
6assignvariableop_164_adam_batch_normalization_6_beta_v:@O
5assignvariableop_165_adam_conv2d_transpose_1_kernel_v:@@A
3assignvariableop_166_adam_conv2d_transpose_1_bias_v:@E
7assignvariableop_167_adam_batch_normalization_7_gamma_v:@D
6assignvariableop_168_adam_batch_normalization_7_beta_v:@O
5assignvariableop_169_adam_conv2d_transpose_2_kernel_v:@@A
3assignvariableop_170_adam_conv2d_transpose_2_bias_v:@E
7assignvariableop_171_adam_batch_normalization_8_gamma_v:@D
6assignvariableop_172_adam_batch_normalization_8_beta_v:@O
5assignvariableop_173_adam_conv2d_transpose_3_kernel_v:@@A
3assignvariableop_174_adam_conv2d_transpose_3_bias_v:@E
7assignvariableop_175_adam_batch_normalization_9_gamma_v:@D
6assignvariableop_176_adam_batch_normalization_9_beta_v:@O
5assignvariableop_177_adam_conv2d_transpose_4_kernel_v:@@A
3assignvariableop_178_adam_conv2d_transpose_4_bias_v:@F
8assignvariableop_179_adam_batch_normalization_10_gamma_v:@E
7assignvariableop_180_adam_batch_normalization_10_beta_v:@O
5assignvariableop_181_adam_conv2d_transpose_5_kernel_v:@A
3assignvariableop_182_adam_conv2d_transpose_5_bias_v:
identity_184��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_129�AssignVariableOp_13�AssignVariableOp_130�AssignVariableOp_131�AssignVariableOp_132�AssignVariableOp_133�AssignVariableOp_134�AssignVariableOp_135�AssignVariableOp_136�AssignVariableOp_137�AssignVariableOp_138�AssignVariableOp_139�AssignVariableOp_14�AssignVariableOp_140�AssignVariableOp_141�AssignVariableOp_142�AssignVariableOp_143�AssignVariableOp_144�AssignVariableOp_145�AssignVariableOp_146�AssignVariableOp_147�AssignVariableOp_148�AssignVariableOp_149�AssignVariableOp_15�AssignVariableOp_150�AssignVariableOp_151�AssignVariableOp_152�AssignVariableOp_153�AssignVariableOp_154�AssignVariableOp_155�AssignVariableOp_156�AssignVariableOp_157�AssignVariableOp_158�AssignVariableOp_159�AssignVariableOp_16�AssignVariableOp_160�AssignVariableOp_161�AssignVariableOp_162�AssignVariableOp_163�AssignVariableOp_164�AssignVariableOp_165�AssignVariableOp_166�AssignVariableOp_167�AssignVariableOp_168�AssignVariableOp_169�AssignVariableOp_17�AssignVariableOp_170�AssignVariableOp_171�AssignVariableOp_172�AssignVariableOp_173�AssignVariableOp_174�AssignVariableOp_175�AssignVariableOp_176�AssignVariableOp_177�AssignVariableOp_178�AssignVariableOp_179�AssignVariableOp_18�AssignVariableOp_180�AssignVariableOp_181�AssignVariableOp_182�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�Q
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�P
value�PB�P�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB'variables/60/.ATTRIBUTES/VARIABLE_VALUEB'variables/61/.ATTRIBUTES/VARIABLE_VALUEB'variables/62/.ATTRIBUTES/VARIABLE_VALUEB'variables/63/.ATTRIBUTES/VARIABLE_VALUEB'variables/64/.ATTRIBUTES/VARIABLE_VALUEB'variables/65/.ATTRIBUTES/VARIABLE_VALUEB'variables/66/.ATTRIBUTES/VARIABLE_VALUEB'variables/67/.ATTRIBUTES/VARIABLE_VALUEB'variables/68/.ATTRIBUTES/VARIABLE_VALUEB'variables/69/.ATTRIBUTES/VARIABLE_VALUEB'variables/70/.ATTRIBUTES/VARIABLE_VALUEB'variables/71/.ATTRIBUTES/VARIABLE_VALUEB'variables/72/.ATTRIBUTES/VARIABLE_VALUEB'variables/73/.ATTRIBUTES/VARIABLE_VALUEB'variables/74/.ATTRIBUTES/VARIABLE_VALUEB'variables/75/.ATTRIBUTES/VARIABLE_VALUEB'variables/76/.ATTRIBUTES/VARIABLE_VALUEB'variables/77/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/48/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/49/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/52/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/53/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/54/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/55/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/58/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/59/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/60/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/61/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/64/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/65/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/66/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/67/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/70/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/71/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/48/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/49/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/52/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/53/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/54/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/55/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/58/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/59/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/60/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/61/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/64/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/65/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/66/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/67/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/70/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/71/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
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
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_4_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_conv2d_4_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_4_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_batch_normalization_4_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp5assignvariableop_28_batch_normalization_4_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp9assignvariableop_29_batch_normalization_4_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp!assignvariableop_30_z_mean_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_z_mean_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp$assignvariableop_32_z_log_var_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp"assignvariableop_33_z_log_var_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp assignvariableop_34_dense_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_dense_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp/assignvariableop_36_batch_normalization_5_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp.assignvariableop_37_batch_normalization_5_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp5assignvariableop_38_batch_normalization_5_moving_meanIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp9assignvariableop_39_batch_normalization_5_moving_varianceIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_conv2d_transpose_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_conv2d_transpose_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp/assignvariableop_42_batch_normalization_6_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp.assignvariableop_43_batch_normalization_6_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp5assignvariableop_44_batch_normalization_6_moving_meanIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp9assignvariableop_45_batch_normalization_6_moving_varianceIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp-assignvariableop_46_conv2d_transpose_1_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_conv2d_transpose_1_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_batch_normalization_7_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp.assignvariableop_49_batch_normalization_7_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_batch_normalization_7_moving_meanIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp9assignvariableop_51_batch_normalization_7_moving_varianceIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp-assignvariableop_52_conv2d_transpose_2_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_conv2d_transpose_2_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp/assignvariableop_54_batch_normalization_8_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp.assignvariableop_55_batch_normalization_8_betaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp5assignvariableop_56_batch_normalization_8_moving_meanIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp9assignvariableop_57_batch_normalization_8_moving_varianceIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp-assignvariableop_58_conv2d_transpose_3_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp+assignvariableop_59_conv2d_transpose_3_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp/assignvariableop_60_batch_normalization_9_gammaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp.assignvariableop_61_batch_normalization_9_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp5assignvariableop_62_batch_normalization_9_moving_meanIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp9assignvariableop_63_batch_normalization_9_moving_varianceIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp-assignvariableop_64_conv2d_transpose_4_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_conv2d_transpose_4_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp0assignvariableop_66_batch_normalization_10_gammaIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp/assignvariableop_67_batch_normalization_10_betaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp6assignvariableop_68_batch_normalization_10_moving_meanIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp:assignvariableop_69_batch_normalization_10_moving_varianceIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp-assignvariableop_70_conv2d_transpose_5_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp+assignvariableop_71_conv2d_transpose_5_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpassignvariableop_72_total_2Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpassignvariableop_73_count_2Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpassignvariableop_74_total_1Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOpassignvariableop_75_count_1Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpassignvariableop_76_totalIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_countIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpassignvariableop_78_adam_iterIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpassignvariableop_79_adam_beta_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpassignvariableop_80_adam_beta_2Identity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOpassignvariableop_81_adam_decayIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp&assignvariableop_82_adam_learning_rateIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp(assignvariableop_83_adam_conv2d_kernel_mIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp&assignvariableop_84_adam_conv2d_bias_mIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp4assignvariableop_85_adam_batch_normalization_gamma_mIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp3assignvariableop_86_adam_batch_normalization_beta_mIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_conv2d_1_kernel_mIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_conv2d_1_bias_mIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_batch_normalization_1_gamma_mIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp5assignvariableop_90_adam_batch_normalization_1_beta_mIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_conv2d_2_kernel_mIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_conv2d_2_bias_mIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp6assignvariableop_93_adam_batch_normalization_2_gamma_mIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp5assignvariableop_94_adam_batch_normalization_2_beta_mIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp*assignvariableop_95_adam_conv2d_3_kernel_mIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp(assignvariableop_96_adam_conv2d_3_bias_mIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adam_batch_normalization_3_gamma_mIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp5assignvariableop_98_adam_batch_normalization_3_beta_mIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp*assignvariableop_99_adam_conv2d_4_kernel_mIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp)assignvariableop_100_adam_conv2d_4_bias_mIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp7assignvariableop_101_adam_batch_normalization_4_gamma_mIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp6assignvariableop_102_adam_batch_normalization_4_beta_mIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp)assignvariableop_103_adam_z_mean_kernel_mIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp'assignvariableop_104_adam_z_mean_bias_mIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_z_log_var_kernel_mIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_z_log_var_bias_mIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp(assignvariableop_107_adam_dense_kernel_mIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp&assignvariableop_108_adam_dense_bias_mIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp7assignvariableop_109_adam_batch_normalization_5_gamma_mIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp6assignvariableop_110_adam_batch_normalization_5_beta_mIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp3assignvariableop_111_adam_conv2d_transpose_kernel_mIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp1assignvariableop_112_adam_conv2d_transpose_bias_mIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp7assignvariableop_113_adam_batch_normalization_6_gamma_mIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp6assignvariableop_114_adam_batch_normalization_6_beta_mIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp5assignvariableop_115_adam_conv2d_transpose_1_kernel_mIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp3assignvariableop_116_adam_conv2d_transpose_1_bias_mIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp7assignvariableop_117_adam_batch_normalization_7_gamma_mIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp6assignvariableop_118_adam_batch_normalization_7_beta_mIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp5assignvariableop_119_adam_conv2d_transpose_2_kernel_mIdentity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp3assignvariableop_120_adam_conv2d_transpose_2_bias_mIdentity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp7assignvariableop_121_adam_batch_normalization_8_gamma_mIdentity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp6assignvariableop_122_adam_batch_normalization_8_beta_mIdentity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp5assignvariableop_123_adam_conv2d_transpose_3_kernel_mIdentity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp3assignvariableop_124_adam_conv2d_transpose_3_bias_mIdentity_124:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp7assignvariableop_125_adam_batch_normalization_9_gamma_mIdentity_125:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp6assignvariableop_126_adam_batch_normalization_9_beta_mIdentity_126:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp5assignvariableop_127_adam_conv2d_transpose_4_kernel_mIdentity_127:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp3assignvariableop_128_adam_conv2d_transpose_4_bias_mIdentity_128:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp8assignvariableop_129_adam_batch_normalization_10_gamma_mIdentity_129:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp7assignvariableop_130_adam_batch_normalization_10_beta_mIdentity_130:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp5assignvariableop_131_adam_conv2d_transpose_5_kernel_mIdentity_131:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp3assignvariableop_132_adam_conv2d_transpose_5_bias_mIdentity_132:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp)assignvariableop_133_adam_conv2d_kernel_vIdentity_133:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp'assignvariableop_134_adam_conv2d_bias_vIdentity_134:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp5assignvariableop_135_adam_batch_normalization_gamma_vIdentity_135:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp4assignvariableop_136_adam_batch_normalization_beta_vIdentity_136:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp+assignvariableop_137_adam_conv2d_1_kernel_vIdentity_137:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp)assignvariableop_138_adam_conv2d_1_bias_vIdentity_138:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp7assignvariableop_139_adam_batch_normalization_1_gamma_vIdentity_139:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp6assignvariableop_140_adam_batch_normalization_1_beta_vIdentity_140:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp+assignvariableop_141_adam_conv2d_2_kernel_vIdentity_141:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp)assignvariableop_142_adam_conv2d_2_bias_vIdentity_142:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp7assignvariableop_143_adam_batch_normalization_2_gamma_vIdentity_143:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp6assignvariableop_144_adam_batch_normalization_2_beta_vIdentity_144:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp+assignvariableop_145_adam_conv2d_3_kernel_vIdentity_145:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp)assignvariableop_146_adam_conv2d_3_bias_vIdentity_146:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_147AssignVariableOp7assignvariableop_147_adam_batch_normalization_3_gamma_vIdentity_147:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_148AssignVariableOp6assignvariableop_148_adam_batch_normalization_3_beta_vIdentity_148:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_149AssignVariableOp+assignvariableop_149_adam_conv2d_4_kernel_vIdentity_149:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_150AssignVariableOp)assignvariableop_150_adam_conv2d_4_bias_vIdentity_150:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_151AssignVariableOp7assignvariableop_151_adam_batch_normalization_4_gamma_vIdentity_151:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_152AssignVariableOp6assignvariableop_152_adam_batch_normalization_4_beta_vIdentity_152:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_153AssignVariableOp)assignvariableop_153_adam_z_mean_kernel_vIdentity_153:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_154AssignVariableOp'assignvariableop_154_adam_z_mean_bias_vIdentity_154:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_155AssignVariableOp,assignvariableop_155_adam_z_log_var_kernel_vIdentity_155:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_156AssignVariableOp*assignvariableop_156_adam_z_log_var_bias_vIdentity_156:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_157AssignVariableOp(assignvariableop_157_adam_dense_kernel_vIdentity_157:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_158AssignVariableOp&assignvariableop_158_adam_dense_bias_vIdentity_158:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_159AssignVariableOp7assignvariableop_159_adam_batch_normalization_5_gamma_vIdentity_159:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_160AssignVariableOp6assignvariableop_160_adam_batch_normalization_5_beta_vIdentity_160:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_161AssignVariableOp3assignvariableop_161_adam_conv2d_transpose_kernel_vIdentity_161:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_162AssignVariableOp1assignvariableop_162_adam_conv2d_transpose_bias_vIdentity_162:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_163AssignVariableOp7assignvariableop_163_adam_batch_normalization_6_gamma_vIdentity_163:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_164AssignVariableOp6assignvariableop_164_adam_batch_normalization_6_beta_vIdentity_164:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_165AssignVariableOp5assignvariableop_165_adam_conv2d_transpose_1_kernel_vIdentity_165:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_166AssignVariableOp3assignvariableop_166_adam_conv2d_transpose_1_bias_vIdentity_166:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_167AssignVariableOp7assignvariableop_167_adam_batch_normalization_7_gamma_vIdentity_167:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_168AssignVariableOp6assignvariableop_168_adam_batch_normalization_7_beta_vIdentity_168:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_169AssignVariableOp5assignvariableop_169_adam_conv2d_transpose_2_kernel_vIdentity_169:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_170AssignVariableOp3assignvariableop_170_adam_conv2d_transpose_2_bias_vIdentity_170:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_171AssignVariableOp7assignvariableop_171_adam_batch_normalization_8_gamma_vIdentity_171:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_172AssignVariableOp6assignvariableop_172_adam_batch_normalization_8_beta_vIdentity_172:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_173AssignVariableOp5assignvariableop_173_adam_conv2d_transpose_3_kernel_vIdentity_173:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_174AssignVariableOp3assignvariableop_174_adam_conv2d_transpose_3_bias_vIdentity_174:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_175AssignVariableOp7assignvariableop_175_adam_batch_normalization_9_gamma_vIdentity_175:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_176AssignVariableOp6assignvariableop_176_adam_batch_normalization_9_beta_vIdentity_176:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_177AssignVariableOp5assignvariableop_177_adam_conv2d_transpose_4_kernel_vIdentity_177:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_178AssignVariableOp3assignvariableop_178_adam_conv2d_transpose_4_bias_vIdentity_178:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_179AssignVariableOp8assignvariableop_179_adam_batch_normalization_10_gamma_vIdentity_179:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_180AssignVariableOp7assignvariableop_180_adam_batch_normalization_10_beta_vIdentity_180:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_181AssignVariableOp5assignvariableop_181_adam_conv2d_transpose_5_kernel_vIdentity_181:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_182AssignVariableOp3assignvariableop_182_adam_conv2d_transpose_5_bias_vIdentity_182:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 � 
Identity_183Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_184IdentityIdentity_183:output:0^NoOp_1*
T0*
_output_shapes
: � 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_184Identity_184:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622,
AssignVariableOp_163AssignVariableOp_1632,
AssignVariableOp_164AssignVariableOp_1642,
AssignVariableOp_165AssignVariableOp_1652,
AssignVariableOp_166AssignVariableOp_1662,
AssignVariableOp_167AssignVariableOp_1672,
AssignVariableOp_168AssignVariableOp_1682,
AssignVariableOp_169AssignVariableOp_1692*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_170AssignVariableOp_1702,
AssignVariableOp_171AssignVariableOp_1712,
AssignVariableOp_172AssignVariableOp_1722,
AssignVariableOp_173AssignVariableOp_1732,
AssignVariableOp_174AssignVariableOp_1742,
AssignVariableOp_175AssignVariableOp_1752,
AssignVariableOp_176AssignVariableOp_1762,
AssignVariableOp_177AssignVariableOp_1772,
AssignVariableOp_178AssignVariableOp_1782,
AssignVariableOp_179AssignVariableOp_1792*
AssignVariableOp_17AssignVariableOp_172,
AssignVariableOp_180AssignVariableOp_1802,
AssignVariableOp_181AssignVariableOp_1812,
AssignVariableOp_182AssignVariableOp_1822*
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
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_992(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:?�:
8
_user_specified_name Adam/conv2d_transpose_5/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_5/kernel/v:C�>
<
_user_specified_name$"Adam/batch_normalization_10/beta/v:D�?
=
_user_specified_name%#Adam/batch_normalization_10/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_4/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_4/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_9/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_9/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_3/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_3/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_8/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_8/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_2/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_7/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_7/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_1/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_6/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_6/gamma/v:=�8
6
_user_specified_nameAdam/conv2d_transpose/bias/v:?�:
8
_user_specified_name Adam/conv2d_transpose/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_5/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_5/gamma/v:2�-
+
_user_specified_nameAdam/dense/bias/v:4�/
-
_user_specified_nameAdam/dense/kernel/v:6�1
/
_user_specified_nameAdam/z_log_var/bias/v:8�3
1
_user_specified_nameAdam/z_log_var/kernel/v:3�.
,
_user_specified_nameAdam/z_mean/bias/v:5�0
.
_user_specified_nameAdam/z_mean/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_4/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_4/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_4/bias/v:7�2
0
_user_specified_nameAdam/conv2d_4/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_3/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_3/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_3/bias/v:7�2
0
_user_specified_nameAdam/conv2d_3/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_2/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_2/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_2/bias/v:7�2
0
_user_specified_nameAdam/conv2d_2/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_1/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_1/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_1/bias/v:7�2
0
_user_specified_nameAdam/conv2d_1/kernel/v:@�;
9
_user_specified_name!Adam/batch_normalization/beta/v:A�<
:
_user_specified_name" Adam/batch_normalization/gamma/v:3�.
,
_user_specified_nameAdam/conv2d/bias/v:5�0
.
_user_specified_nameAdam/conv2d/kernel/v:?�:
8
_user_specified_name Adam/conv2d_transpose_5/bias/m:A�<
:
_user_specified_name" Adam/conv2d_transpose_5/kernel/m:C�>
<
_user_specified_name$"Adam/batch_normalization_10/beta/m:D�?
=
_user_specified_name%#Adam/batch_normalization_10/gamma/m:?�:
8
_user_specified_name Adam/conv2d_transpose_4/bias/m:A�<
:
_user_specified_name" Adam/conv2d_transpose_4/kernel/m:A=
;
_user_specified_name#!Adam/batch_normalization_9/beta/m:B~>
<
_user_specified_name$"Adam/batch_normalization_9/gamma/m:>}:
8
_user_specified_name Adam/conv2d_transpose_3/bias/m:@|<
:
_user_specified_name" Adam/conv2d_transpose_3/kernel/m:A{=
;
_user_specified_name#!Adam/batch_normalization_8/beta/m:Bz>
<
_user_specified_name$"Adam/batch_normalization_8/gamma/m:>y:
8
_user_specified_name Adam/conv2d_transpose_2/bias/m:@x<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/m:Aw=
;
_user_specified_name#!Adam/batch_normalization_7/beta/m:Bv>
<
_user_specified_name$"Adam/batch_normalization_7/gamma/m:>u:
8
_user_specified_name Adam/conv2d_transpose_1/bias/m:@t<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/m:As=
;
_user_specified_name#!Adam/batch_normalization_6/beta/m:Br>
<
_user_specified_name$"Adam/batch_normalization_6/gamma/m:<q8
6
_user_specified_nameAdam/conv2d_transpose/bias/m:>p:
8
_user_specified_name Adam/conv2d_transpose/kernel/m:Ao=
;
_user_specified_name#!Adam/batch_normalization_5/beta/m:Bn>
<
_user_specified_name$"Adam/batch_normalization_5/gamma/m:1m-
+
_user_specified_nameAdam/dense/bias/m:3l/
-
_user_specified_nameAdam/dense/kernel/m:5k1
/
_user_specified_nameAdam/z_log_var/bias/m:7j3
1
_user_specified_nameAdam/z_log_var/kernel/m:2i.
,
_user_specified_nameAdam/z_mean/bias/m:4h0
.
_user_specified_nameAdam/z_mean/kernel/m:Ag=
;
_user_specified_name#!Adam/batch_normalization_4/beta/m:Bf>
<
_user_specified_name$"Adam/batch_normalization_4/gamma/m:4e0
.
_user_specified_nameAdam/conv2d_4/bias/m:6d2
0
_user_specified_nameAdam/conv2d_4/kernel/m:Ac=
;
_user_specified_name#!Adam/batch_normalization_3/beta/m:Bb>
<
_user_specified_name$"Adam/batch_normalization_3/gamma/m:4a0
.
_user_specified_nameAdam/conv2d_3/bias/m:6`2
0
_user_specified_nameAdam/conv2d_3/kernel/m:A_=
;
_user_specified_name#!Adam/batch_normalization_2/beta/m:B^>
<
_user_specified_name$"Adam/batch_normalization_2/gamma/m:4]0
.
_user_specified_nameAdam/conv2d_2/bias/m:6\2
0
_user_specified_nameAdam/conv2d_2/kernel/m:A[=
;
_user_specified_name#!Adam/batch_normalization_1/beta/m:BZ>
<
_user_specified_name$"Adam/batch_normalization_1/gamma/m:4Y0
.
_user_specified_nameAdam/conv2d_1/bias/m:6X2
0
_user_specified_nameAdam/conv2d_1/kernel/m:?W;
9
_user_specified_name!Adam/batch_normalization/beta/m:@V<
:
_user_specified_name" Adam/batch_normalization/gamma/m:2U.
,
_user_specified_nameAdam/conv2d/bias/m:4T0
.
_user_specified_nameAdam/conv2d/kernel/m:2S.
,
_user_specified_nameAdam/learning_rate:*R&
$
_user_specified_name
Adam/decay:+Q'
%
_user_specified_nameAdam/beta_2:+P'
%
_user_specified_nameAdam/beta_1:)O%
#
_user_specified_name	Adam/iter:%N!

_user_specified_namecount:%M!

_user_specified_nametotal:'L#
!
_user_specified_name	count_1:'K#
!
_user_specified_name	total_1:'J#
!
_user_specified_name	count_2:'I#
!
_user_specified_name	total_2:7H3
1
_user_specified_nameconv2d_transpose_5/bias:9G5
3
_user_specified_nameconv2d_transpose_5/kernel:FFB
@
_user_specified_name(&batch_normalization_10/moving_variance:BE>
<
_user_specified_name$"batch_normalization_10/moving_mean:;D7
5
_user_specified_namebatch_normalization_10/beta:<C8
6
_user_specified_namebatch_normalization_10/gamma:7B3
1
_user_specified_nameconv2d_transpose_4/bias:9A5
3
_user_specified_nameconv2d_transpose_4/kernel:E@A
?
_user_specified_name'%batch_normalization_9/moving_variance:A?=
;
_user_specified_name#!batch_normalization_9/moving_mean::>6
4
_user_specified_namebatch_normalization_9/beta:;=7
5
_user_specified_namebatch_normalization_9/gamma:7<3
1
_user_specified_nameconv2d_transpose_3/bias:9;5
3
_user_specified_nameconv2d_transpose_3/kernel:E:A
?
_user_specified_name'%batch_normalization_8/moving_variance:A9=
;
_user_specified_name#!batch_normalization_8/moving_mean::86
4
_user_specified_namebatch_normalization_8/beta:;77
5
_user_specified_namebatch_normalization_8/gamma:763
1
_user_specified_nameconv2d_transpose_2/bias:955
3
_user_specified_nameconv2d_transpose_2/kernel:E4A
?
_user_specified_name'%batch_normalization_7/moving_variance:A3=
;
_user_specified_name#!batch_normalization_7/moving_mean::26
4
_user_specified_namebatch_normalization_7/beta:;17
5
_user_specified_namebatch_normalization_7/gamma:703
1
_user_specified_nameconv2d_transpose_1/bias:9/5
3
_user_specified_nameconv2d_transpose_1/kernel:E.A
?
_user_specified_name'%batch_normalization_6/moving_variance:A-=
;
_user_specified_name#!batch_normalization_6/moving_mean::,6
4
_user_specified_namebatch_normalization_6/beta:;+7
5
_user_specified_namebatch_normalization_6/gamma:5*1
/
_user_specified_nameconv2d_transpose/bias:7)3
1
_user_specified_nameconv2d_transpose/kernel:E(A
?
_user_specified_name'%batch_normalization_5/moving_variance:A'=
;
_user_specified_name#!batch_normalization_5/moving_mean::&6
4
_user_specified_namebatch_normalization_5/beta:;%7
5
_user_specified_namebatch_normalization_5/gamma:*$&
$
_user_specified_name
dense/bias:,#(
&
_user_specified_namedense/kernel:."*
(
_user_specified_namez_log_var/bias:0!,
*
_user_specified_namez_log_var/kernel:+ '
%
_user_specified_namez_mean/bias:-)
'
_user_specified_namez_mean/kernel:EA
?
_user_specified_name'%batch_normalization_4/moving_variance:A=
;
_user_specified_name#!batch_normalization_4/moving_mean::6
4
_user_specified_namebatch_normalization_4/beta:;7
5
_user_specified_namebatch_normalization_4/gamma:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217677

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
B__inference_z_mean_layer_call_and_return_conditional_losses_215249

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�

�
B__inference_conv2d_layer_call_and_return_conditional_losses_215092

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
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
:���������  @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
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
:���������@@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_217978

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_215994

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_6_layer_call_fn_218255

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215804�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218251:&"
 
_user_specified_name218249:&"
 
_user_specified_name218247:&"
 
_user_specified_name218245:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_4_layer_call_fn_217932

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215054�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217928:&"
 
_user_specified_name217926:&"
 
_user_specified_name217924:&"
 
_user_specified_name217922:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
*__inference_z_log_var_layer_call_fn_218017

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_215264p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218013:&"
 
_user_specified_name218011:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�!
�
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_215759

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_216012

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214912

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��

��
__inference__traced_save_219922
file_prefix>
$read_disablecopyonread_conv2d_kernel:@2
$read_1_disablecopyonread_conv2d_bias:@@
2read_2_disablecopyonread_batch_normalization_gamma:@?
1read_3_disablecopyonread_batch_normalization_beta:@F
8read_4_disablecopyonread_batch_normalization_moving_mean:@J
<read_5_disablecopyonread_batch_normalization_moving_variance:@B
(read_6_disablecopyonread_conv2d_1_kernel:@@4
&read_7_disablecopyonread_conv2d_1_bias:@B
4read_8_disablecopyonread_batch_normalization_1_gamma:@A
3read_9_disablecopyonread_batch_normalization_1_beta:@I
;read_10_disablecopyonread_batch_normalization_1_moving_mean:@M
?read_11_disablecopyonread_batch_normalization_1_moving_variance:@C
)read_12_disablecopyonread_conv2d_2_kernel:@@5
'read_13_disablecopyonread_conv2d_2_bias:@C
5read_14_disablecopyonread_batch_normalization_2_gamma:@B
4read_15_disablecopyonread_batch_normalization_2_beta:@I
;read_16_disablecopyonread_batch_normalization_2_moving_mean:@M
?read_17_disablecopyonread_batch_normalization_2_moving_variance:@C
)read_18_disablecopyonread_conv2d_3_kernel:@@5
'read_19_disablecopyonread_conv2d_3_bias:@C
5read_20_disablecopyonread_batch_normalization_3_gamma:@B
4read_21_disablecopyonread_batch_normalization_3_beta:@I
;read_22_disablecopyonread_batch_normalization_3_moving_mean:@M
?read_23_disablecopyonread_batch_normalization_3_moving_variance:@C
)read_24_disablecopyonread_conv2d_4_kernel:@@5
'read_25_disablecopyonread_conv2d_4_bias:@C
5read_26_disablecopyonread_batch_normalization_4_gamma:@B
4read_27_disablecopyonread_batch_normalization_4_beta:@I
;read_28_disablecopyonread_batch_normalization_4_moving_mean:@M
?read_29_disablecopyonread_batch_normalization_4_moving_variance:@;
'read_30_disablecopyonread_z_mean_kernel:
��4
%read_31_disablecopyonread_z_mean_bias:	�>
*read_32_disablecopyonread_z_log_var_kernel:
��7
(read_33_disablecopyonread_z_log_var_bias:	�:
&read_34_disablecopyonread_dense_kernel:
��3
$read_35_disablecopyonread_dense_bias:	�D
5read_36_disablecopyonread_batch_normalization_5_gamma:	�C
4read_37_disablecopyonread_batch_normalization_5_beta:	�J
;read_38_disablecopyonread_batch_normalization_5_moving_mean:	�N
?read_39_disablecopyonread_batch_normalization_5_moving_variance:	�K
1read_40_disablecopyonread_conv2d_transpose_kernel:@@=
/read_41_disablecopyonread_conv2d_transpose_bias:@C
5read_42_disablecopyonread_batch_normalization_6_gamma:@B
4read_43_disablecopyonread_batch_normalization_6_beta:@I
;read_44_disablecopyonread_batch_normalization_6_moving_mean:@M
?read_45_disablecopyonread_batch_normalization_6_moving_variance:@M
3read_46_disablecopyonread_conv2d_transpose_1_kernel:@@?
1read_47_disablecopyonread_conv2d_transpose_1_bias:@C
5read_48_disablecopyonread_batch_normalization_7_gamma:@B
4read_49_disablecopyonread_batch_normalization_7_beta:@I
;read_50_disablecopyonread_batch_normalization_7_moving_mean:@M
?read_51_disablecopyonread_batch_normalization_7_moving_variance:@M
3read_52_disablecopyonread_conv2d_transpose_2_kernel:@@?
1read_53_disablecopyonread_conv2d_transpose_2_bias:@C
5read_54_disablecopyonread_batch_normalization_8_gamma:@B
4read_55_disablecopyonread_batch_normalization_8_beta:@I
;read_56_disablecopyonread_batch_normalization_8_moving_mean:@M
?read_57_disablecopyonread_batch_normalization_8_moving_variance:@M
3read_58_disablecopyonread_conv2d_transpose_3_kernel:@@?
1read_59_disablecopyonread_conv2d_transpose_3_bias:@C
5read_60_disablecopyonread_batch_normalization_9_gamma:@B
4read_61_disablecopyonread_batch_normalization_9_beta:@I
;read_62_disablecopyonread_batch_normalization_9_moving_mean:@M
?read_63_disablecopyonread_batch_normalization_9_moving_variance:@M
3read_64_disablecopyonread_conv2d_transpose_4_kernel:@@?
1read_65_disablecopyonread_conv2d_transpose_4_bias:@D
6read_66_disablecopyonread_batch_normalization_10_gamma:@C
5read_67_disablecopyonread_batch_normalization_10_beta:@J
<read_68_disablecopyonread_batch_normalization_10_moving_mean:@N
@read_69_disablecopyonread_batch_normalization_10_moving_variance:@M
3read_70_disablecopyonread_conv2d_transpose_5_kernel:@?
1read_71_disablecopyonread_conv2d_transpose_5_bias:+
!read_72_disablecopyonread_total_2: +
!read_73_disablecopyonread_count_2: +
!read_74_disablecopyonread_total_1: +
!read_75_disablecopyonread_count_1: )
read_76_disablecopyonread_total: )
read_77_disablecopyonread_count: -
#read_78_disablecopyonread_adam_iter:	 /
%read_79_disablecopyonread_adam_beta_1: /
%read_80_disablecopyonread_adam_beta_2: .
$read_81_disablecopyonread_adam_decay: 6
,read_82_disablecopyonread_adam_learning_rate: H
.read_83_disablecopyonread_adam_conv2d_kernel_m:@:
,read_84_disablecopyonread_adam_conv2d_bias_m:@H
:read_85_disablecopyonread_adam_batch_normalization_gamma_m:@G
9read_86_disablecopyonread_adam_batch_normalization_beta_m:@J
0read_87_disablecopyonread_adam_conv2d_1_kernel_m:@@<
.read_88_disablecopyonread_adam_conv2d_1_bias_m:@J
<read_89_disablecopyonread_adam_batch_normalization_1_gamma_m:@I
;read_90_disablecopyonread_adam_batch_normalization_1_beta_m:@J
0read_91_disablecopyonread_adam_conv2d_2_kernel_m:@@<
.read_92_disablecopyonread_adam_conv2d_2_bias_m:@J
<read_93_disablecopyonread_adam_batch_normalization_2_gamma_m:@I
;read_94_disablecopyonread_adam_batch_normalization_2_beta_m:@J
0read_95_disablecopyonread_adam_conv2d_3_kernel_m:@@<
.read_96_disablecopyonread_adam_conv2d_3_bias_m:@J
<read_97_disablecopyonread_adam_batch_normalization_3_gamma_m:@I
;read_98_disablecopyonread_adam_batch_normalization_3_beta_m:@J
0read_99_disablecopyonread_adam_conv2d_4_kernel_m:@@=
/read_100_disablecopyonread_adam_conv2d_4_bias_m:@K
=read_101_disablecopyonread_adam_batch_normalization_4_gamma_m:@J
<read_102_disablecopyonread_adam_batch_normalization_4_beta_m:@C
/read_103_disablecopyonread_adam_z_mean_kernel_m:
��<
-read_104_disablecopyonread_adam_z_mean_bias_m:	�F
2read_105_disablecopyonread_adam_z_log_var_kernel_m:
��?
0read_106_disablecopyonread_adam_z_log_var_bias_m:	�B
.read_107_disablecopyonread_adam_dense_kernel_m:
��;
,read_108_disablecopyonread_adam_dense_bias_m:	�L
=read_109_disablecopyonread_adam_batch_normalization_5_gamma_m:	�K
<read_110_disablecopyonread_adam_batch_normalization_5_beta_m:	�S
9read_111_disablecopyonread_adam_conv2d_transpose_kernel_m:@@E
7read_112_disablecopyonread_adam_conv2d_transpose_bias_m:@K
=read_113_disablecopyonread_adam_batch_normalization_6_gamma_m:@J
<read_114_disablecopyonread_adam_batch_normalization_6_beta_m:@U
;read_115_disablecopyonread_adam_conv2d_transpose_1_kernel_m:@@G
9read_116_disablecopyonread_adam_conv2d_transpose_1_bias_m:@K
=read_117_disablecopyonread_adam_batch_normalization_7_gamma_m:@J
<read_118_disablecopyonread_adam_batch_normalization_7_beta_m:@U
;read_119_disablecopyonread_adam_conv2d_transpose_2_kernel_m:@@G
9read_120_disablecopyonread_adam_conv2d_transpose_2_bias_m:@K
=read_121_disablecopyonread_adam_batch_normalization_8_gamma_m:@J
<read_122_disablecopyonread_adam_batch_normalization_8_beta_m:@U
;read_123_disablecopyonread_adam_conv2d_transpose_3_kernel_m:@@G
9read_124_disablecopyonread_adam_conv2d_transpose_3_bias_m:@K
=read_125_disablecopyonread_adam_batch_normalization_9_gamma_m:@J
<read_126_disablecopyonread_adam_batch_normalization_9_beta_m:@U
;read_127_disablecopyonread_adam_conv2d_transpose_4_kernel_m:@@G
9read_128_disablecopyonread_adam_conv2d_transpose_4_bias_m:@L
>read_129_disablecopyonread_adam_batch_normalization_10_gamma_m:@K
=read_130_disablecopyonread_adam_batch_normalization_10_beta_m:@U
;read_131_disablecopyonread_adam_conv2d_transpose_5_kernel_m:@G
9read_132_disablecopyonread_adam_conv2d_transpose_5_bias_m:I
/read_133_disablecopyonread_adam_conv2d_kernel_v:@;
-read_134_disablecopyonread_adam_conv2d_bias_v:@I
;read_135_disablecopyonread_adam_batch_normalization_gamma_v:@H
:read_136_disablecopyonread_adam_batch_normalization_beta_v:@K
1read_137_disablecopyonread_adam_conv2d_1_kernel_v:@@=
/read_138_disablecopyonread_adam_conv2d_1_bias_v:@K
=read_139_disablecopyonread_adam_batch_normalization_1_gamma_v:@J
<read_140_disablecopyonread_adam_batch_normalization_1_beta_v:@K
1read_141_disablecopyonread_adam_conv2d_2_kernel_v:@@=
/read_142_disablecopyonread_adam_conv2d_2_bias_v:@K
=read_143_disablecopyonread_adam_batch_normalization_2_gamma_v:@J
<read_144_disablecopyonread_adam_batch_normalization_2_beta_v:@K
1read_145_disablecopyonread_adam_conv2d_3_kernel_v:@@=
/read_146_disablecopyonread_adam_conv2d_3_bias_v:@K
=read_147_disablecopyonread_adam_batch_normalization_3_gamma_v:@J
<read_148_disablecopyonread_adam_batch_normalization_3_beta_v:@K
1read_149_disablecopyonread_adam_conv2d_4_kernel_v:@@=
/read_150_disablecopyonread_adam_conv2d_4_bias_v:@K
=read_151_disablecopyonread_adam_batch_normalization_4_gamma_v:@J
<read_152_disablecopyonread_adam_batch_normalization_4_beta_v:@C
/read_153_disablecopyonread_adam_z_mean_kernel_v:
��<
-read_154_disablecopyonread_adam_z_mean_bias_v:	�F
2read_155_disablecopyonread_adam_z_log_var_kernel_v:
��?
0read_156_disablecopyonread_adam_z_log_var_bias_v:	�B
.read_157_disablecopyonread_adam_dense_kernel_v:
��;
,read_158_disablecopyonread_adam_dense_bias_v:	�L
=read_159_disablecopyonread_adam_batch_normalization_5_gamma_v:	�K
<read_160_disablecopyonread_adam_batch_normalization_5_beta_v:	�S
9read_161_disablecopyonread_adam_conv2d_transpose_kernel_v:@@E
7read_162_disablecopyonread_adam_conv2d_transpose_bias_v:@K
=read_163_disablecopyonread_adam_batch_normalization_6_gamma_v:@J
<read_164_disablecopyonread_adam_batch_normalization_6_beta_v:@U
;read_165_disablecopyonread_adam_conv2d_transpose_1_kernel_v:@@G
9read_166_disablecopyonread_adam_conv2d_transpose_1_bias_v:@K
=read_167_disablecopyonread_adam_batch_normalization_7_gamma_v:@J
<read_168_disablecopyonread_adam_batch_normalization_7_beta_v:@U
;read_169_disablecopyonread_adam_conv2d_transpose_2_kernel_v:@@G
9read_170_disablecopyonread_adam_conv2d_transpose_2_bias_v:@K
=read_171_disablecopyonread_adam_batch_normalization_8_gamma_v:@J
<read_172_disablecopyonread_adam_batch_normalization_8_beta_v:@U
;read_173_disablecopyonread_adam_conv2d_transpose_3_kernel_v:@@G
9read_174_disablecopyonread_adam_conv2d_transpose_3_bias_v:@K
=read_175_disablecopyonread_adam_batch_normalization_9_gamma_v:@J
<read_176_disablecopyonread_adam_batch_normalization_9_beta_v:@U
;read_177_disablecopyonread_adam_conv2d_transpose_4_kernel_v:@@G
9read_178_disablecopyonread_adam_conv2d_transpose_4_bias_v:@L
>read_179_disablecopyonread_adam_batch_normalization_10_gamma_v:@K
=read_180_disablecopyonread_adam_batch_normalization_10_beta_v:@U
;read_181_disablecopyonread_adam_conv2d_transpose_5_kernel_v:@G
9read_182_disablecopyonread_adam_conv2d_transpose_5_bias_v:
savev2_const
identity_367��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_115/DisableCopyOnRead�Read_115/ReadVariableOp�Read_116/DisableCopyOnRead�Read_116/ReadVariableOp�Read_117/DisableCopyOnRead�Read_117/ReadVariableOp�Read_118/DisableCopyOnRead�Read_118/ReadVariableOp�Read_119/DisableCopyOnRead�Read_119/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_120/DisableCopyOnRead�Read_120/ReadVariableOp�Read_121/DisableCopyOnRead�Read_121/ReadVariableOp�Read_122/DisableCopyOnRead�Read_122/ReadVariableOp�Read_123/DisableCopyOnRead�Read_123/ReadVariableOp�Read_124/DisableCopyOnRead�Read_124/ReadVariableOp�Read_125/DisableCopyOnRead�Read_125/ReadVariableOp�Read_126/DisableCopyOnRead�Read_126/ReadVariableOp�Read_127/DisableCopyOnRead�Read_127/ReadVariableOp�Read_128/DisableCopyOnRead�Read_128/ReadVariableOp�Read_129/DisableCopyOnRead�Read_129/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_130/DisableCopyOnRead�Read_130/ReadVariableOp�Read_131/DisableCopyOnRead�Read_131/ReadVariableOp�Read_132/DisableCopyOnRead�Read_132/ReadVariableOp�Read_133/DisableCopyOnRead�Read_133/ReadVariableOp�Read_134/DisableCopyOnRead�Read_134/ReadVariableOp�Read_135/DisableCopyOnRead�Read_135/ReadVariableOp�Read_136/DisableCopyOnRead�Read_136/ReadVariableOp�Read_137/DisableCopyOnRead�Read_137/ReadVariableOp�Read_138/DisableCopyOnRead�Read_138/ReadVariableOp�Read_139/DisableCopyOnRead�Read_139/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_140/DisableCopyOnRead�Read_140/ReadVariableOp�Read_141/DisableCopyOnRead�Read_141/ReadVariableOp�Read_142/DisableCopyOnRead�Read_142/ReadVariableOp�Read_143/DisableCopyOnRead�Read_143/ReadVariableOp�Read_144/DisableCopyOnRead�Read_144/ReadVariableOp�Read_145/DisableCopyOnRead�Read_145/ReadVariableOp�Read_146/DisableCopyOnRead�Read_146/ReadVariableOp�Read_147/DisableCopyOnRead�Read_147/ReadVariableOp�Read_148/DisableCopyOnRead�Read_148/ReadVariableOp�Read_149/DisableCopyOnRead�Read_149/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_150/DisableCopyOnRead�Read_150/ReadVariableOp�Read_151/DisableCopyOnRead�Read_151/ReadVariableOp�Read_152/DisableCopyOnRead�Read_152/ReadVariableOp�Read_153/DisableCopyOnRead�Read_153/ReadVariableOp�Read_154/DisableCopyOnRead�Read_154/ReadVariableOp�Read_155/DisableCopyOnRead�Read_155/ReadVariableOp�Read_156/DisableCopyOnRead�Read_156/ReadVariableOp�Read_157/DisableCopyOnRead�Read_157/ReadVariableOp�Read_158/DisableCopyOnRead�Read_158/ReadVariableOp�Read_159/DisableCopyOnRead�Read_159/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_160/DisableCopyOnRead�Read_160/ReadVariableOp�Read_161/DisableCopyOnRead�Read_161/ReadVariableOp�Read_162/DisableCopyOnRead�Read_162/ReadVariableOp�Read_163/DisableCopyOnRead�Read_163/ReadVariableOp�Read_164/DisableCopyOnRead�Read_164/ReadVariableOp�Read_165/DisableCopyOnRead�Read_165/ReadVariableOp�Read_166/DisableCopyOnRead�Read_166/ReadVariableOp�Read_167/DisableCopyOnRead�Read_167/ReadVariableOp�Read_168/DisableCopyOnRead�Read_168/ReadVariableOp�Read_169/DisableCopyOnRead�Read_169/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_170/DisableCopyOnRead�Read_170/ReadVariableOp�Read_171/DisableCopyOnRead�Read_171/ReadVariableOp�Read_172/DisableCopyOnRead�Read_172/ReadVariableOp�Read_173/DisableCopyOnRead�Read_173/ReadVariableOp�Read_174/DisableCopyOnRead�Read_174/ReadVariableOp�Read_175/DisableCopyOnRead�Read_175/ReadVariableOp�Read_176/DisableCopyOnRead�Read_176/ReadVariableOp�Read_177/DisableCopyOnRead�Read_177/ReadVariableOp�Read_178/DisableCopyOnRead�Read_178/ReadVariableOp�Read_179/DisableCopyOnRead�Read_179/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_180/DisableCopyOnRead�Read_180/ReadVariableOp�Read_181/DisableCopyOnRead�Read_181/ReadVariableOp�Read_182/DisableCopyOnRead�Read_182/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
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
:@*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:@x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:@�
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_conv2d_3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_conv2d_3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_batch_normalization_3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_batch_normalization_3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_batch_normalization_3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp?read_23_disablecopyonread_batch_normalization_3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_conv2d_4_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_conv2d_4_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_26/DisableCopyOnReadDisableCopyOnRead5read_26_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp5read_26_disablecopyonread_batch_normalization_4_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_27/DisableCopyOnReadDisableCopyOnRead4read_27_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp4read_27_disablecopyonread_batch_normalization_4_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_28/DisableCopyOnReadDisableCopyOnRead;read_28_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp;read_28_disablecopyonread_batch_normalization_4_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
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
Read_29/DisableCopyOnReadDisableCopyOnRead?read_29_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp?read_29_disablecopyonread_batch_normalization_4_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_30/DisableCopyOnReadDisableCopyOnRead'read_30_disablecopyonread_z_mean_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp'read_30_disablecopyonread_z_mean_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��z
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_z_mean_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_z_mean_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_32/DisableCopyOnReadDisableCopyOnRead*read_32_disablecopyonread_z_log_var_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp*read_32_disablecopyonread_z_log_var_kernel^Read_32/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_33/DisableCopyOnReadDisableCopyOnRead(read_33_disablecopyonread_z_log_var_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp(read_33_disablecopyonread_z_log_var_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_34/DisableCopyOnReadDisableCopyOnRead&read_34_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp&read_34_disablecopyonread_dense_kernel^Read_34/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_35/DisableCopyOnReadDisableCopyOnRead$read_35_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp$read_35_disablecopyonread_dense_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_36/DisableCopyOnReadDisableCopyOnRead5read_36_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp5read_36_disablecopyonread_batch_normalization_5_gamma^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead4read_37_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp4read_37_disablecopyonread_batch_normalization_5_beta^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead;read_38_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp;read_38_disablecopyonread_batch_normalization_5_moving_mean^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead?read_39_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp?read_39_disablecopyonread_batch_normalization_5_moving_variance^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_40/DisableCopyOnReadDisableCopyOnRead1read_40_disablecopyonread_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp1read_40_disablecopyonread_conv2d_transpose_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_conv2d_transpose_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_42/DisableCopyOnReadDisableCopyOnRead5read_42_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp5read_42_disablecopyonread_batch_normalization_6_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_43/DisableCopyOnReadDisableCopyOnRead4read_43_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp4read_43_disablecopyonread_batch_normalization_6_beta^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_44/DisableCopyOnReadDisableCopyOnRead;read_44_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp;read_44_disablecopyonread_batch_normalization_6_moving_mean^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_45/DisableCopyOnReadDisableCopyOnRead?read_45_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp?read_45_disablecopyonread_batch_normalization_6_moving_variance^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_46/DisableCopyOnReadDisableCopyOnRead3read_46_disablecopyonread_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp3read_46_disablecopyonread_conv2d_transpose_1_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_47/DisableCopyOnReadDisableCopyOnRead1read_47_disablecopyonread_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp1read_47_disablecopyonread_conv2d_transpose_1_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_48/DisableCopyOnReadDisableCopyOnRead5read_48_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp5read_48_disablecopyonread_batch_normalization_7_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_49/DisableCopyOnReadDisableCopyOnRead4read_49_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp4read_49_disablecopyonread_batch_normalization_7_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_50/DisableCopyOnReadDisableCopyOnRead;read_50_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp;read_50_disablecopyonread_batch_normalization_7_moving_mean^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_51/DisableCopyOnReadDisableCopyOnRead?read_51_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp?read_51_disablecopyonread_batch_normalization_7_moving_variance^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_52/DisableCopyOnReadDisableCopyOnRead3read_52_disablecopyonread_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp3read_52_disablecopyonread_conv2d_transpose_2_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_53/DisableCopyOnReadDisableCopyOnRead1read_53_disablecopyonread_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp1read_53_disablecopyonread_conv2d_transpose_2_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_54/DisableCopyOnReadDisableCopyOnRead5read_54_disablecopyonread_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp5read_54_disablecopyonread_batch_normalization_8_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_55/DisableCopyOnReadDisableCopyOnRead4read_55_disablecopyonread_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp4read_55_disablecopyonread_batch_normalization_8_beta^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_56/DisableCopyOnReadDisableCopyOnRead;read_56_disablecopyonread_batch_normalization_8_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp;read_56_disablecopyonread_batch_normalization_8_moving_mean^Read_56/DisableCopyOnRead"/device:CPU:0*
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
Read_57/DisableCopyOnReadDisableCopyOnRead?read_57_disablecopyonread_batch_normalization_8_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp?read_57_disablecopyonread_batch_normalization_8_moving_variance^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_58/DisableCopyOnReadDisableCopyOnRead3read_58_disablecopyonread_conv2d_transpose_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp3read_58_disablecopyonread_conv2d_transpose_3_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_59/DisableCopyOnReadDisableCopyOnRead1read_59_disablecopyonread_conv2d_transpose_3_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp1read_59_disablecopyonread_conv2d_transpose_3_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_60/DisableCopyOnReadDisableCopyOnRead5read_60_disablecopyonread_batch_normalization_9_gamma"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp5read_60_disablecopyonread_batch_normalization_9_gamma^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_61/DisableCopyOnReadDisableCopyOnRead4read_61_disablecopyonread_batch_normalization_9_beta"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp4read_61_disablecopyonread_batch_normalization_9_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_62/DisableCopyOnReadDisableCopyOnRead;read_62_disablecopyonread_batch_normalization_9_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp;read_62_disablecopyonread_batch_normalization_9_moving_mean^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_63/DisableCopyOnReadDisableCopyOnRead?read_63_disablecopyonread_batch_normalization_9_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp?read_63_disablecopyonread_batch_normalization_9_moving_variance^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_64/DisableCopyOnReadDisableCopyOnRead3read_64_disablecopyonread_conv2d_transpose_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp3read_64_disablecopyonread_conv2d_transpose_4_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_65/DisableCopyOnReadDisableCopyOnRead1read_65_disablecopyonread_conv2d_transpose_4_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp1read_65_disablecopyonread_conv2d_transpose_4_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_66/DisableCopyOnReadDisableCopyOnRead6read_66_disablecopyonread_batch_normalization_10_gamma"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp6read_66_disablecopyonread_batch_normalization_10_gamma^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_67/DisableCopyOnReadDisableCopyOnRead5read_67_disablecopyonread_batch_normalization_10_beta"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp5read_67_disablecopyonread_batch_normalization_10_beta^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_68/DisableCopyOnReadDisableCopyOnRead<read_68_disablecopyonread_batch_normalization_10_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp<read_68_disablecopyonread_batch_normalization_10_moving_mean^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_69/DisableCopyOnReadDisableCopyOnRead@read_69_disablecopyonread_batch_normalization_10_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp@read_69_disablecopyonread_batch_normalization_10_moving_variance^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_70/DisableCopyOnReadDisableCopyOnRead3read_70_disablecopyonread_conv2d_transpose_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp3read_70_disablecopyonread_conv2d_transpose_5_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_71/DisableCopyOnReadDisableCopyOnRead1read_71_disablecopyonread_conv2d_transpose_5_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp1read_71_disablecopyonread_conv2d_transpose_5_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_72/DisableCopyOnReadDisableCopyOnRead!read_72_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp!read_72_disablecopyonread_total_2^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_73/DisableCopyOnReadDisableCopyOnRead!read_73_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp!read_73_disablecopyonread_count_2^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_74/DisableCopyOnReadDisableCopyOnRead!read_74_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp!read_74_disablecopyonread_total_1^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_75/DisableCopyOnReadDisableCopyOnRead!read_75_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp!read_75_disablecopyonread_count_1^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_76/DisableCopyOnReadDisableCopyOnReadread_76_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOpread_76_disablecopyonread_total^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_77/DisableCopyOnReadDisableCopyOnReadread_77_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOpread_77_disablecopyonread_count^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_78/DisableCopyOnReadDisableCopyOnRead#read_78_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp#read_78_disablecopyonread_adam_iter^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_79/DisableCopyOnReadDisableCopyOnRead%read_79_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp%read_79_disablecopyonread_adam_beta_1^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_80/DisableCopyOnReadDisableCopyOnRead%read_80_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp%read_80_disablecopyonread_adam_beta_2^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_81/DisableCopyOnReadDisableCopyOnRead$read_81_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp$read_81_disablecopyonread_adam_decay^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_82/DisableCopyOnReadDisableCopyOnRead,read_82_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp,read_82_disablecopyonread_adam_learning_rate^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_83/DisableCopyOnReadDisableCopyOnRead.read_83_disablecopyonread_adam_conv2d_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp.read_83_disablecopyonread_adam_conv2d_kernel_m^Read_83/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_84/DisableCopyOnReadDisableCopyOnRead,read_84_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp,read_84_disablecopyonread_adam_conv2d_bias_m^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_85/DisableCopyOnReadDisableCopyOnRead:read_85_disablecopyonread_adam_batch_normalization_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp:read_85_disablecopyonread_adam_batch_normalization_gamma_m^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_86/DisableCopyOnReadDisableCopyOnRead9read_86_disablecopyonread_adam_batch_normalization_beta_m"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp9read_86_disablecopyonread_adam_batch_normalization_beta_m^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_87/DisableCopyOnReadDisableCopyOnRead0read_87_disablecopyonread_adam_conv2d_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp0read_87_disablecopyonread_adam_conv2d_1_kernel_m^Read_87/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_88/DisableCopyOnReadDisableCopyOnRead.read_88_disablecopyonread_adam_conv2d_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp.read_88_disablecopyonread_adam_conv2d_1_bias_m^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_89/DisableCopyOnReadDisableCopyOnRead<read_89_disablecopyonread_adam_batch_normalization_1_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp<read_89_disablecopyonread_adam_batch_normalization_1_gamma_m^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_90/DisableCopyOnReadDisableCopyOnRead;read_90_disablecopyonread_adam_batch_normalization_1_beta_m"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp;read_90_disablecopyonread_adam_batch_normalization_1_beta_m^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_91/DisableCopyOnReadDisableCopyOnRead0read_91_disablecopyonread_adam_conv2d_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp0read_91_disablecopyonread_adam_conv2d_2_kernel_m^Read_91/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_92/DisableCopyOnReadDisableCopyOnRead.read_92_disablecopyonread_adam_conv2d_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp.read_92_disablecopyonread_adam_conv2d_2_bias_m^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_93/DisableCopyOnReadDisableCopyOnRead<read_93_disablecopyonread_adam_batch_normalization_2_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp<read_93_disablecopyonread_adam_batch_normalization_2_gamma_m^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_94/DisableCopyOnReadDisableCopyOnRead;read_94_disablecopyonread_adam_batch_normalization_2_beta_m"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp;read_94_disablecopyonread_adam_batch_normalization_2_beta_m^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_95/DisableCopyOnReadDisableCopyOnRead0read_95_disablecopyonread_adam_conv2d_3_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp0read_95_disablecopyonread_adam_conv2d_3_kernel_m^Read_95/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_96/DisableCopyOnReadDisableCopyOnRead.read_96_disablecopyonread_adam_conv2d_3_bias_m"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp.read_96_disablecopyonread_adam_conv2d_3_bias_m^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_97/DisableCopyOnReadDisableCopyOnRead<read_97_disablecopyonread_adam_batch_normalization_3_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp<read_97_disablecopyonread_adam_batch_normalization_3_gamma_m^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_98/DisableCopyOnReadDisableCopyOnRead;read_98_disablecopyonread_adam_batch_normalization_3_beta_m"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp;read_98_disablecopyonread_adam_batch_normalization_3_beta_m^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_99/DisableCopyOnReadDisableCopyOnRead0read_99_disablecopyonread_adam_conv2d_4_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp0read_99_disablecopyonread_adam_conv2d_4_kernel_m^Read_99/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_100/DisableCopyOnReadDisableCopyOnRead/read_100_disablecopyonread_adam_conv2d_4_bias_m"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp/read_100_disablecopyonread_adam_conv2d_4_bias_m^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_101/DisableCopyOnReadDisableCopyOnRead=read_101_disablecopyonread_adam_batch_normalization_4_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp=read_101_disablecopyonread_adam_batch_normalization_4_gamma_m^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_102/DisableCopyOnReadDisableCopyOnRead<read_102_disablecopyonread_adam_batch_normalization_4_beta_m"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp<read_102_disablecopyonread_adam_batch_normalization_4_beta_m^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_103/DisableCopyOnReadDisableCopyOnRead/read_103_disablecopyonread_adam_z_mean_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp/read_103_disablecopyonread_adam_z_mean_kernel_m^Read_103/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_104/DisableCopyOnReadDisableCopyOnRead-read_104_disablecopyonread_adam_z_mean_bias_m"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp-read_104_disablecopyonread_adam_z_mean_bias_m^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_105/DisableCopyOnReadDisableCopyOnRead2read_105_disablecopyonread_adam_z_log_var_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp2read_105_disablecopyonread_adam_z_log_var_kernel_m^Read_105/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_106/DisableCopyOnReadDisableCopyOnRead0read_106_disablecopyonread_adam_z_log_var_bias_m"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp0read_106_disablecopyonread_adam_z_log_var_bias_m^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_107/DisableCopyOnReadDisableCopyOnRead.read_107_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp.read_107_disablecopyonread_adam_dense_kernel_m^Read_107/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_108/DisableCopyOnReadDisableCopyOnRead,read_108_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp,read_108_disablecopyonread_adam_dense_bias_m^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_109/DisableCopyOnReadDisableCopyOnRead=read_109_disablecopyonread_adam_batch_normalization_5_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp=read_109_disablecopyonread_adam_batch_normalization_5_gamma_m^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_110/DisableCopyOnReadDisableCopyOnRead<read_110_disablecopyonread_adam_batch_normalization_5_beta_m"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp<read_110_disablecopyonread_adam_batch_normalization_5_beta_m^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_111/DisableCopyOnReadDisableCopyOnRead9read_111_disablecopyonread_adam_conv2d_transpose_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp9read_111_disablecopyonread_adam_conv2d_transpose_kernel_m^Read_111/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_112/DisableCopyOnReadDisableCopyOnRead7read_112_disablecopyonread_adam_conv2d_transpose_bias_m"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp7read_112_disablecopyonread_adam_conv2d_transpose_bias_m^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_113/DisableCopyOnReadDisableCopyOnRead=read_113_disablecopyonread_adam_batch_normalization_6_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp=read_113_disablecopyonread_adam_batch_normalization_6_gamma_m^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_114/DisableCopyOnReadDisableCopyOnRead<read_114_disablecopyonread_adam_batch_normalization_6_beta_m"/device:CPU:0*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp<read_114_disablecopyonread_adam_batch_normalization_6_beta_m^Read_114/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_115/DisableCopyOnReadDisableCopyOnRead;read_115_disablecopyonread_adam_conv2d_transpose_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_115/ReadVariableOpReadVariableOp;read_115_disablecopyonread_adam_conv2d_transpose_1_kernel_m^Read_115/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_116/DisableCopyOnReadDisableCopyOnRead9read_116_disablecopyonread_adam_conv2d_transpose_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_116/ReadVariableOpReadVariableOp9read_116_disablecopyonread_adam_conv2d_transpose_1_bias_m^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_117/DisableCopyOnReadDisableCopyOnRead=read_117_disablecopyonread_adam_batch_normalization_7_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_117/ReadVariableOpReadVariableOp=read_117_disablecopyonread_adam_batch_normalization_7_gamma_m^Read_117/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_118/DisableCopyOnReadDisableCopyOnRead<read_118_disablecopyonread_adam_batch_normalization_7_beta_m"/device:CPU:0*
_output_shapes
 �
Read_118/ReadVariableOpReadVariableOp<read_118_disablecopyonread_adam_batch_normalization_7_beta_m^Read_118/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_119/DisableCopyOnReadDisableCopyOnRead;read_119_disablecopyonread_adam_conv2d_transpose_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_119/ReadVariableOpReadVariableOp;read_119_disablecopyonread_adam_conv2d_transpose_2_kernel_m^Read_119/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_120/DisableCopyOnReadDisableCopyOnRead9read_120_disablecopyonread_adam_conv2d_transpose_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_120/ReadVariableOpReadVariableOp9read_120_disablecopyonread_adam_conv2d_transpose_2_bias_m^Read_120/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_121/DisableCopyOnReadDisableCopyOnRead=read_121_disablecopyonread_adam_batch_normalization_8_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_121/ReadVariableOpReadVariableOp=read_121_disablecopyonread_adam_batch_normalization_8_gamma_m^Read_121/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_122/DisableCopyOnReadDisableCopyOnRead<read_122_disablecopyonread_adam_batch_normalization_8_beta_m"/device:CPU:0*
_output_shapes
 �
Read_122/ReadVariableOpReadVariableOp<read_122_disablecopyonread_adam_batch_normalization_8_beta_m^Read_122/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_123/DisableCopyOnReadDisableCopyOnRead;read_123_disablecopyonread_adam_conv2d_transpose_3_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_123/ReadVariableOpReadVariableOp;read_123_disablecopyonread_adam_conv2d_transpose_3_kernel_m^Read_123/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_124/DisableCopyOnReadDisableCopyOnRead9read_124_disablecopyonread_adam_conv2d_transpose_3_bias_m"/device:CPU:0*
_output_shapes
 �
Read_124/ReadVariableOpReadVariableOp9read_124_disablecopyonread_adam_conv2d_transpose_3_bias_m^Read_124/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_248IdentityRead_124/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_249IdentityIdentity_248:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_125/DisableCopyOnReadDisableCopyOnRead=read_125_disablecopyonread_adam_batch_normalization_9_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_125/ReadVariableOpReadVariableOp=read_125_disablecopyonread_adam_batch_normalization_9_gamma_m^Read_125/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_250IdentityRead_125/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_251IdentityIdentity_250:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_126/DisableCopyOnReadDisableCopyOnRead<read_126_disablecopyonread_adam_batch_normalization_9_beta_m"/device:CPU:0*
_output_shapes
 �
Read_126/ReadVariableOpReadVariableOp<read_126_disablecopyonread_adam_batch_normalization_9_beta_m^Read_126/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_252IdentityRead_126/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_253IdentityIdentity_252:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_127/DisableCopyOnReadDisableCopyOnRead;read_127_disablecopyonread_adam_conv2d_transpose_4_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_127/ReadVariableOpReadVariableOp;read_127_disablecopyonread_adam_conv2d_transpose_4_kernel_m^Read_127/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_254IdentityRead_127/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_255IdentityIdentity_254:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_128/DisableCopyOnReadDisableCopyOnRead9read_128_disablecopyonread_adam_conv2d_transpose_4_bias_m"/device:CPU:0*
_output_shapes
 �
Read_128/ReadVariableOpReadVariableOp9read_128_disablecopyonread_adam_conv2d_transpose_4_bias_m^Read_128/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_256IdentityRead_128/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_257IdentityIdentity_256:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_129/DisableCopyOnReadDisableCopyOnRead>read_129_disablecopyonread_adam_batch_normalization_10_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_129/ReadVariableOpReadVariableOp>read_129_disablecopyonread_adam_batch_normalization_10_gamma_m^Read_129/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_258IdentityRead_129/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_259IdentityIdentity_258:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_130/DisableCopyOnReadDisableCopyOnRead=read_130_disablecopyonread_adam_batch_normalization_10_beta_m"/device:CPU:0*
_output_shapes
 �
Read_130/ReadVariableOpReadVariableOp=read_130_disablecopyonread_adam_batch_normalization_10_beta_m^Read_130/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_260IdentityRead_130/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_261IdentityIdentity_260:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_131/DisableCopyOnReadDisableCopyOnRead;read_131_disablecopyonread_adam_conv2d_transpose_5_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_131/ReadVariableOpReadVariableOp;read_131_disablecopyonread_adam_conv2d_transpose_5_kernel_m^Read_131/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0y
Identity_262IdentityRead_131/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_263IdentityIdentity_262:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_132/DisableCopyOnReadDisableCopyOnRead9read_132_disablecopyonread_adam_conv2d_transpose_5_bias_m"/device:CPU:0*
_output_shapes
 �
Read_132/ReadVariableOpReadVariableOp9read_132_disablecopyonread_adam_conv2d_transpose_5_bias_m^Read_132/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_264IdentityRead_132/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_265IdentityIdentity_264:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_133/DisableCopyOnReadDisableCopyOnRead/read_133_disablecopyonread_adam_conv2d_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_133/ReadVariableOpReadVariableOp/read_133_disablecopyonread_adam_conv2d_kernel_v^Read_133/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0y
Identity_266IdentityRead_133/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_267IdentityIdentity_266:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_134/DisableCopyOnReadDisableCopyOnRead-read_134_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 �
Read_134/ReadVariableOpReadVariableOp-read_134_disablecopyonread_adam_conv2d_bias_v^Read_134/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_268IdentityRead_134/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_269IdentityIdentity_268:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_135/DisableCopyOnReadDisableCopyOnRead;read_135_disablecopyonread_adam_batch_normalization_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_135/ReadVariableOpReadVariableOp;read_135_disablecopyonread_adam_batch_normalization_gamma_v^Read_135/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_270IdentityRead_135/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_271IdentityIdentity_270:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_136/DisableCopyOnReadDisableCopyOnRead:read_136_disablecopyonread_adam_batch_normalization_beta_v"/device:CPU:0*
_output_shapes
 �
Read_136/ReadVariableOpReadVariableOp:read_136_disablecopyonread_adam_batch_normalization_beta_v^Read_136/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_272IdentityRead_136/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_273IdentityIdentity_272:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_137/DisableCopyOnReadDisableCopyOnRead1read_137_disablecopyonread_adam_conv2d_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_137/ReadVariableOpReadVariableOp1read_137_disablecopyonread_adam_conv2d_1_kernel_v^Read_137/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_274IdentityRead_137/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_275IdentityIdentity_274:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_138/DisableCopyOnReadDisableCopyOnRead/read_138_disablecopyonread_adam_conv2d_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_138/ReadVariableOpReadVariableOp/read_138_disablecopyonread_adam_conv2d_1_bias_v^Read_138/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_276IdentityRead_138/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_277IdentityIdentity_276:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_139/DisableCopyOnReadDisableCopyOnRead=read_139_disablecopyonread_adam_batch_normalization_1_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_139/ReadVariableOpReadVariableOp=read_139_disablecopyonread_adam_batch_normalization_1_gamma_v^Read_139/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_278IdentityRead_139/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_279IdentityIdentity_278:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_140/DisableCopyOnReadDisableCopyOnRead<read_140_disablecopyonread_adam_batch_normalization_1_beta_v"/device:CPU:0*
_output_shapes
 �
Read_140/ReadVariableOpReadVariableOp<read_140_disablecopyonread_adam_batch_normalization_1_beta_v^Read_140/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_280IdentityRead_140/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_281IdentityIdentity_280:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_141/DisableCopyOnReadDisableCopyOnRead1read_141_disablecopyonread_adam_conv2d_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_141/ReadVariableOpReadVariableOp1read_141_disablecopyonread_adam_conv2d_2_kernel_v^Read_141/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_282IdentityRead_141/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_283IdentityIdentity_282:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_142/DisableCopyOnReadDisableCopyOnRead/read_142_disablecopyonread_adam_conv2d_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_142/ReadVariableOpReadVariableOp/read_142_disablecopyonread_adam_conv2d_2_bias_v^Read_142/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_284IdentityRead_142/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_285IdentityIdentity_284:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_143/DisableCopyOnReadDisableCopyOnRead=read_143_disablecopyonread_adam_batch_normalization_2_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_143/ReadVariableOpReadVariableOp=read_143_disablecopyonread_adam_batch_normalization_2_gamma_v^Read_143/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_286IdentityRead_143/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_287IdentityIdentity_286:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_144/DisableCopyOnReadDisableCopyOnRead<read_144_disablecopyonread_adam_batch_normalization_2_beta_v"/device:CPU:0*
_output_shapes
 �
Read_144/ReadVariableOpReadVariableOp<read_144_disablecopyonread_adam_batch_normalization_2_beta_v^Read_144/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_288IdentityRead_144/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_289IdentityIdentity_288:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_145/DisableCopyOnReadDisableCopyOnRead1read_145_disablecopyonread_adam_conv2d_3_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_145/ReadVariableOpReadVariableOp1read_145_disablecopyonread_adam_conv2d_3_kernel_v^Read_145/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_290IdentityRead_145/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_291IdentityIdentity_290:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_146/DisableCopyOnReadDisableCopyOnRead/read_146_disablecopyonread_adam_conv2d_3_bias_v"/device:CPU:0*
_output_shapes
 �
Read_146/ReadVariableOpReadVariableOp/read_146_disablecopyonread_adam_conv2d_3_bias_v^Read_146/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_292IdentityRead_146/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_293IdentityIdentity_292:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_147/DisableCopyOnReadDisableCopyOnRead=read_147_disablecopyonread_adam_batch_normalization_3_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_147/ReadVariableOpReadVariableOp=read_147_disablecopyonread_adam_batch_normalization_3_gamma_v^Read_147/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_294IdentityRead_147/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_295IdentityIdentity_294:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_148/DisableCopyOnReadDisableCopyOnRead<read_148_disablecopyonread_adam_batch_normalization_3_beta_v"/device:CPU:0*
_output_shapes
 �
Read_148/ReadVariableOpReadVariableOp<read_148_disablecopyonread_adam_batch_normalization_3_beta_v^Read_148/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_296IdentityRead_148/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_297IdentityIdentity_296:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_149/DisableCopyOnReadDisableCopyOnRead1read_149_disablecopyonread_adam_conv2d_4_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_149/ReadVariableOpReadVariableOp1read_149_disablecopyonread_adam_conv2d_4_kernel_v^Read_149/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_298IdentityRead_149/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_299IdentityIdentity_298:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_150/DisableCopyOnReadDisableCopyOnRead/read_150_disablecopyonread_adam_conv2d_4_bias_v"/device:CPU:0*
_output_shapes
 �
Read_150/ReadVariableOpReadVariableOp/read_150_disablecopyonread_adam_conv2d_4_bias_v^Read_150/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_300IdentityRead_150/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_301IdentityIdentity_300:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_151/DisableCopyOnReadDisableCopyOnRead=read_151_disablecopyonread_adam_batch_normalization_4_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_151/ReadVariableOpReadVariableOp=read_151_disablecopyonread_adam_batch_normalization_4_gamma_v^Read_151/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_302IdentityRead_151/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_303IdentityIdentity_302:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_152/DisableCopyOnReadDisableCopyOnRead<read_152_disablecopyonread_adam_batch_normalization_4_beta_v"/device:CPU:0*
_output_shapes
 �
Read_152/ReadVariableOpReadVariableOp<read_152_disablecopyonread_adam_batch_normalization_4_beta_v^Read_152/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_304IdentityRead_152/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_305IdentityIdentity_304:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_153/DisableCopyOnReadDisableCopyOnRead/read_153_disablecopyonread_adam_z_mean_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_153/ReadVariableOpReadVariableOp/read_153_disablecopyonread_adam_z_mean_kernel_v^Read_153/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_306IdentityRead_153/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_307IdentityIdentity_306:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_154/DisableCopyOnReadDisableCopyOnRead-read_154_disablecopyonread_adam_z_mean_bias_v"/device:CPU:0*
_output_shapes
 �
Read_154/ReadVariableOpReadVariableOp-read_154_disablecopyonread_adam_z_mean_bias_v^Read_154/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_308IdentityRead_154/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_309IdentityIdentity_308:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_155/DisableCopyOnReadDisableCopyOnRead2read_155_disablecopyonread_adam_z_log_var_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_155/ReadVariableOpReadVariableOp2read_155_disablecopyonread_adam_z_log_var_kernel_v^Read_155/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_310IdentityRead_155/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_311IdentityIdentity_310:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_156/DisableCopyOnReadDisableCopyOnRead0read_156_disablecopyonread_adam_z_log_var_bias_v"/device:CPU:0*
_output_shapes
 �
Read_156/ReadVariableOpReadVariableOp0read_156_disablecopyonread_adam_z_log_var_bias_v^Read_156/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_312IdentityRead_156/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_313IdentityIdentity_312:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_157/DisableCopyOnReadDisableCopyOnRead.read_157_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_157/ReadVariableOpReadVariableOp.read_157_disablecopyonread_adam_dense_kernel_v^Read_157/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_314IdentityRead_157/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_315IdentityIdentity_314:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_158/DisableCopyOnReadDisableCopyOnRead,read_158_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_158/ReadVariableOpReadVariableOp,read_158_disablecopyonread_adam_dense_bias_v^Read_158/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_316IdentityRead_158/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_317IdentityIdentity_316:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_159/DisableCopyOnReadDisableCopyOnRead=read_159_disablecopyonread_adam_batch_normalization_5_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_159/ReadVariableOpReadVariableOp=read_159_disablecopyonread_adam_batch_normalization_5_gamma_v^Read_159/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_318IdentityRead_159/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_319IdentityIdentity_318:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_160/DisableCopyOnReadDisableCopyOnRead<read_160_disablecopyonread_adam_batch_normalization_5_beta_v"/device:CPU:0*
_output_shapes
 �
Read_160/ReadVariableOpReadVariableOp<read_160_disablecopyonread_adam_batch_normalization_5_beta_v^Read_160/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_320IdentityRead_160/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_321IdentityIdentity_320:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_161/DisableCopyOnReadDisableCopyOnRead9read_161_disablecopyonread_adam_conv2d_transpose_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_161/ReadVariableOpReadVariableOp9read_161_disablecopyonread_adam_conv2d_transpose_kernel_v^Read_161/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_322IdentityRead_161/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_323IdentityIdentity_322:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_162/DisableCopyOnReadDisableCopyOnRead7read_162_disablecopyonread_adam_conv2d_transpose_bias_v"/device:CPU:0*
_output_shapes
 �
Read_162/ReadVariableOpReadVariableOp7read_162_disablecopyonread_adam_conv2d_transpose_bias_v^Read_162/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_324IdentityRead_162/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_325IdentityIdentity_324:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_163/DisableCopyOnReadDisableCopyOnRead=read_163_disablecopyonread_adam_batch_normalization_6_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_163/ReadVariableOpReadVariableOp=read_163_disablecopyonread_adam_batch_normalization_6_gamma_v^Read_163/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_326IdentityRead_163/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_327IdentityIdentity_326:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_164/DisableCopyOnReadDisableCopyOnRead<read_164_disablecopyonread_adam_batch_normalization_6_beta_v"/device:CPU:0*
_output_shapes
 �
Read_164/ReadVariableOpReadVariableOp<read_164_disablecopyonread_adam_batch_normalization_6_beta_v^Read_164/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_328IdentityRead_164/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_329IdentityIdentity_328:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_165/DisableCopyOnReadDisableCopyOnRead;read_165_disablecopyonread_adam_conv2d_transpose_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_165/ReadVariableOpReadVariableOp;read_165_disablecopyonread_adam_conv2d_transpose_1_kernel_v^Read_165/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_330IdentityRead_165/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_331IdentityIdentity_330:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_166/DisableCopyOnReadDisableCopyOnRead9read_166_disablecopyonread_adam_conv2d_transpose_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_166/ReadVariableOpReadVariableOp9read_166_disablecopyonread_adam_conv2d_transpose_1_bias_v^Read_166/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_332IdentityRead_166/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_333IdentityIdentity_332:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_167/DisableCopyOnReadDisableCopyOnRead=read_167_disablecopyonread_adam_batch_normalization_7_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_167/ReadVariableOpReadVariableOp=read_167_disablecopyonread_adam_batch_normalization_7_gamma_v^Read_167/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_334IdentityRead_167/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_335IdentityIdentity_334:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_168/DisableCopyOnReadDisableCopyOnRead<read_168_disablecopyonread_adam_batch_normalization_7_beta_v"/device:CPU:0*
_output_shapes
 �
Read_168/ReadVariableOpReadVariableOp<read_168_disablecopyonread_adam_batch_normalization_7_beta_v^Read_168/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_336IdentityRead_168/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_337IdentityIdentity_336:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_169/DisableCopyOnReadDisableCopyOnRead;read_169_disablecopyonread_adam_conv2d_transpose_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_169/ReadVariableOpReadVariableOp;read_169_disablecopyonread_adam_conv2d_transpose_2_kernel_v^Read_169/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_338IdentityRead_169/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_339IdentityIdentity_338:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_170/DisableCopyOnReadDisableCopyOnRead9read_170_disablecopyonread_adam_conv2d_transpose_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_170/ReadVariableOpReadVariableOp9read_170_disablecopyonread_adam_conv2d_transpose_2_bias_v^Read_170/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_340IdentityRead_170/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_341IdentityIdentity_340:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_171/DisableCopyOnReadDisableCopyOnRead=read_171_disablecopyonread_adam_batch_normalization_8_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_171/ReadVariableOpReadVariableOp=read_171_disablecopyonread_adam_batch_normalization_8_gamma_v^Read_171/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_342IdentityRead_171/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_343IdentityIdentity_342:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_172/DisableCopyOnReadDisableCopyOnRead<read_172_disablecopyonread_adam_batch_normalization_8_beta_v"/device:CPU:0*
_output_shapes
 �
Read_172/ReadVariableOpReadVariableOp<read_172_disablecopyonread_adam_batch_normalization_8_beta_v^Read_172/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_344IdentityRead_172/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_345IdentityIdentity_344:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_173/DisableCopyOnReadDisableCopyOnRead;read_173_disablecopyonread_adam_conv2d_transpose_3_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_173/ReadVariableOpReadVariableOp;read_173_disablecopyonread_adam_conv2d_transpose_3_kernel_v^Read_173/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_346IdentityRead_173/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_347IdentityIdentity_346:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_174/DisableCopyOnReadDisableCopyOnRead9read_174_disablecopyonread_adam_conv2d_transpose_3_bias_v"/device:CPU:0*
_output_shapes
 �
Read_174/ReadVariableOpReadVariableOp9read_174_disablecopyonread_adam_conv2d_transpose_3_bias_v^Read_174/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_348IdentityRead_174/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_349IdentityIdentity_348:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_175/DisableCopyOnReadDisableCopyOnRead=read_175_disablecopyonread_adam_batch_normalization_9_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_175/ReadVariableOpReadVariableOp=read_175_disablecopyonread_adam_batch_normalization_9_gamma_v^Read_175/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_350IdentityRead_175/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_351IdentityIdentity_350:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_176/DisableCopyOnReadDisableCopyOnRead<read_176_disablecopyonread_adam_batch_normalization_9_beta_v"/device:CPU:0*
_output_shapes
 �
Read_176/ReadVariableOpReadVariableOp<read_176_disablecopyonread_adam_batch_normalization_9_beta_v^Read_176/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_352IdentityRead_176/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_353IdentityIdentity_352:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_177/DisableCopyOnReadDisableCopyOnRead;read_177_disablecopyonread_adam_conv2d_transpose_4_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_177/ReadVariableOpReadVariableOp;read_177_disablecopyonread_adam_conv2d_transpose_4_kernel_v^Read_177/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_354IdentityRead_177/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_355IdentityIdentity_354:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_178/DisableCopyOnReadDisableCopyOnRead9read_178_disablecopyonread_adam_conv2d_transpose_4_bias_v"/device:CPU:0*
_output_shapes
 �
Read_178/ReadVariableOpReadVariableOp9read_178_disablecopyonread_adam_conv2d_transpose_4_bias_v^Read_178/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_356IdentityRead_178/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_357IdentityIdentity_356:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_179/DisableCopyOnReadDisableCopyOnRead>read_179_disablecopyonread_adam_batch_normalization_10_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_179/ReadVariableOpReadVariableOp>read_179_disablecopyonread_adam_batch_normalization_10_gamma_v^Read_179/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_358IdentityRead_179/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_359IdentityIdentity_358:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_180/DisableCopyOnReadDisableCopyOnRead=read_180_disablecopyonread_adam_batch_normalization_10_beta_v"/device:CPU:0*
_output_shapes
 �
Read_180/ReadVariableOpReadVariableOp=read_180_disablecopyonread_adam_batch_normalization_10_beta_v^Read_180/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_360IdentityRead_180/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_361IdentityIdentity_360:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_181/DisableCopyOnReadDisableCopyOnRead;read_181_disablecopyonread_adam_conv2d_transpose_5_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_181/ReadVariableOpReadVariableOp;read_181_disablecopyonread_adam_conv2d_transpose_5_kernel_v^Read_181/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0y
Identity_362IdentityRead_181/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_363IdentityIdentity_362:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_182/DisableCopyOnReadDisableCopyOnRead9read_182_disablecopyonread_adam_conv2d_transpose_5_bias_v"/device:CPU:0*
_output_shapes
 �
Read_182/ReadVariableOpReadVariableOp9read_182_disablecopyonread_adam_conv2d_transpose_5_bias_v^Read_182/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_364IdentityRead_182/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_365IdentityIdentity_364:output:0"/device:CPU:0*
T0*
_output_shapes
:�Q
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�P
value�PB�P�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB'variables/60/.ATTRIBUTES/VARIABLE_VALUEB'variables/61/.ATTRIBUTES/VARIABLE_VALUEB'variables/62/.ATTRIBUTES/VARIABLE_VALUEB'variables/63/.ATTRIBUTES/VARIABLE_VALUEB'variables/64/.ATTRIBUTES/VARIABLE_VALUEB'variables/65/.ATTRIBUTES/VARIABLE_VALUEB'variables/66/.ATTRIBUTES/VARIABLE_VALUEB'variables/67/.ATTRIBUTES/VARIABLE_VALUEB'variables/68/.ATTRIBUTES/VARIABLE_VALUEB'variables/69/.ATTRIBUTES/VARIABLE_VALUEB'variables/70/.ATTRIBUTES/VARIABLE_VALUEB'variables/71/.ATTRIBUTES/VARIABLE_VALUEB'variables/72/.ATTRIBUTES/VARIABLE_VALUEB'variables/73/.ATTRIBUTES/VARIABLE_VALUEB'variables/74/.ATTRIBUTES/VARIABLE_VALUEB'variables/75/.ATTRIBUTES/VARIABLE_VALUEB'variables/76/.ATTRIBUTES/VARIABLE_VALUEB'variables/77/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/48/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/49/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/52/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/53/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/54/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/55/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/58/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/59/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/60/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/61/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/64/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/65/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/66/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/67/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/70/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/71/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/48/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/49/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/52/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/53/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/54/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/55/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/58/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/59/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/60/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/61/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/64/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/65/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/66/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/67/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/70/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/71/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0Identity_249:output:0Identity_251:output:0Identity_253:output:0Identity_255:output:0Identity_257:output:0Identity_259:output:0Identity_261:output:0Identity_263:output:0Identity_265:output:0Identity_267:output:0Identity_269:output:0Identity_271:output:0Identity_273:output:0Identity_275:output:0Identity_277:output:0Identity_279:output:0Identity_281:output:0Identity_283:output:0Identity_285:output:0Identity_287:output:0Identity_289:output:0Identity_291:output:0Identity_293:output:0Identity_295:output:0Identity_297:output:0Identity_299:output:0Identity_301:output:0Identity_303:output:0Identity_305:output:0Identity_307:output:0Identity_309:output:0Identity_311:output:0Identity_313:output:0Identity_315:output:0Identity_317:output:0Identity_319:output:0Identity_321:output:0Identity_323:output:0Identity_325:output:0Identity_327:output:0Identity_329:output:0Identity_331:output:0Identity_333:output:0Identity_335:output:0Identity_337:output:0Identity_339:output:0Identity_341:output:0Identity_343:output:0Identity_345:output:0Identity_347:output:0Identity_349:output:0Identity_351:output:0Identity_353:output:0Identity_355:output:0Identity_357:output:0Identity_359:output:0Identity_361:output:0Identity_363:output:0Identity_365:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_366Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_367IdentityIdentity_366:output:0^NoOp*
T0*
_output_shapes
: �M
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_124/DisableCopyOnRead^Read_124/ReadVariableOp^Read_125/DisableCopyOnRead^Read_125/ReadVariableOp^Read_126/DisableCopyOnRead^Read_126/ReadVariableOp^Read_127/DisableCopyOnRead^Read_127/ReadVariableOp^Read_128/DisableCopyOnRead^Read_128/ReadVariableOp^Read_129/DisableCopyOnRead^Read_129/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_130/DisableCopyOnRead^Read_130/ReadVariableOp^Read_131/DisableCopyOnRead^Read_131/ReadVariableOp^Read_132/DisableCopyOnRead^Read_132/ReadVariableOp^Read_133/DisableCopyOnRead^Read_133/ReadVariableOp^Read_134/DisableCopyOnRead^Read_134/ReadVariableOp^Read_135/DisableCopyOnRead^Read_135/ReadVariableOp^Read_136/DisableCopyOnRead^Read_136/ReadVariableOp^Read_137/DisableCopyOnRead^Read_137/ReadVariableOp^Read_138/DisableCopyOnRead^Read_138/ReadVariableOp^Read_139/DisableCopyOnRead^Read_139/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_140/DisableCopyOnRead^Read_140/ReadVariableOp^Read_141/DisableCopyOnRead^Read_141/ReadVariableOp^Read_142/DisableCopyOnRead^Read_142/ReadVariableOp^Read_143/DisableCopyOnRead^Read_143/ReadVariableOp^Read_144/DisableCopyOnRead^Read_144/ReadVariableOp^Read_145/DisableCopyOnRead^Read_145/ReadVariableOp^Read_146/DisableCopyOnRead^Read_146/ReadVariableOp^Read_147/DisableCopyOnRead^Read_147/ReadVariableOp^Read_148/DisableCopyOnRead^Read_148/ReadVariableOp^Read_149/DisableCopyOnRead^Read_149/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_150/DisableCopyOnRead^Read_150/ReadVariableOp^Read_151/DisableCopyOnRead^Read_151/ReadVariableOp^Read_152/DisableCopyOnRead^Read_152/ReadVariableOp^Read_153/DisableCopyOnRead^Read_153/ReadVariableOp^Read_154/DisableCopyOnRead^Read_154/ReadVariableOp^Read_155/DisableCopyOnRead^Read_155/ReadVariableOp^Read_156/DisableCopyOnRead^Read_156/ReadVariableOp^Read_157/DisableCopyOnRead^Read_157/ReadVariableOp^Read_158/DisableCopyOnRead^Read_158/ReadVariableOp^Read_159/DisableCopyOnRead^Read_159/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_160/DisableCopyOnRead^Read_160/ReadVariableOp^Read_161/DisableCopyOnRead^Read_161/ReadVariableOp^Read_162/DisableCopyOnRead^Read_162/ReadVariableOp^Read_163/DisableCopyOnRead^Read_163/ReadVariableOp^Read_164/DisableCopyOnRead^Read_164/ReadVariableOp^Read_165/DisableCopyOnRead^Read_165/ReadVariableOp^Read_166/DisableCopyOnRead^Read_166/ReadVariableOp^Read_167/DisableCopyOnRead^Read_167/ReadVariableOp^Read_168/DisableCopyOnRead^Read_168/ReadVariableOp^Read_169/DisableCopyOnRead^Read_169/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_170/DisableCopyOnRead^Read_170/ReadVariableOp^Read_171/DisableCopyOnRead^Read_171/ReadVariableOp^Read_172/DisableCopyOnRead^Read_172/ReadVariableOp^Read_173/DisableCopyOnRead^Read_173/ReadVariableOp^Read_174/DisableCopyOnRead^Read_174/ReadVariableOp^Read_175/DisableCopyOnRead^Read_175/ReadVariableOp^Read_176/DisableCopyOnRead^Read_176/ReadVariableOp^Read_177/DisableCopyOnRead^Read_177/ReadVariableOp^Read_178/DisableCopyOnRead^Read_178/ReadVariableOp^Read_179/DisableCopyOnRead^Read_179/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_180/DisableCopyOnRead^Read_180/ReadVariableOp^Read_181/DisableCopyOnRead^Read_181/ReadVariableOp^Read_182/DisableCopyOnRead^Read_182/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_367Identity_367:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp28
Read_124/DisableCopyOnReadRead_124/DisableCopyOnRead22
Read_124/ReadVariableOpRead_124/ReadVariableOp28
Read_125/DisableCopyOnReadRead_125/DisableCopyOnRead22
Read_125/ReadVariableOpRead_125/ReadVariableOp28
Read_126/DisableCopyOnReadRead_126/DisableCopyOnRead22
Read_126/ReadVariableOpRead_126/ReadVariableOp28
Read_127/DisableCopyOnReadRead_127/DisableCopyOnRead22
Read_127/ReadVariableOpRead_127/ReadVariableOp28
Read_128/DisableCopyOnReadRead_128/DisableCopyOnRead22
Read_128/ReadVariableOpRead_128/ReadVariableOp28
Read_129/DisableCopyOnReadRead_129/DisableCopyOnRead22
Read_129/ReadVariableOpRead_129/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp28
Read_130/DisableCopyOnReadRead_130/DisableCopyOnRead22
Read_130/ReadVariableOpRead_130/ReadVariableOp28
Read_131/DisableCopyOnReadRead_131/DisableCopyOnRead22
Read_131/ReadVariableOpRead_131/ReadVariableOp28
Read_132/DisableCopyOnReadRead_132/DisableCopyOnRead22
Read_132/ReadVariableOpRead_132/ReadVariableOp28
Read_133/DisableCopyOnReadRead_133/DisableCopyOnRead22
Read_133/ReadVariableOpRead_133/ReadVariableOp28
Read_134/DisableCopyOnReadRead_134/DisableCopyOnRead22
Read_134/ReadVariableOpRead_134/ReadVariableOp28
Read_135/DisableCopyOnReadRead_135/DisableCopyOnRead22
Read_135/ReadVariableOpRead_135/ReadVariableOp28
Read_136/DisableCopyOnReadRead_136/DisableCopyOnRead22
Read_136/ReadVariableOpRead_136/ReadVariableOp28
Read_137/DisableCopyOnReadRead_137/DisableCopyOnRead22
Read_137/ReadVariableOpRead_137/ReadVariableOp28
Read_138/DisableCopyOnReadRead_138/DisableCopyOnRead22
Read_138/ReadVariableOpRead_138/ReadVariableOp28
Read_139/DisableCopyOnReadRead_139/DisableCopyOnRead22
Read_139/ReadVariableOpRead_139/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp28
Read_140/DisableCopyOnReadRead_140/DisableCopyOnRead22
Read_140/ReadVariableOpRead_140/ReadVariableOp28
Read_141/DisableCopyOnReadRead_141/DisableCopyOnRead22
Read_141/ReadVariableOpRead_141/ReadVariableOp28
Read_142/DisableCopyOnReadRead_142/DisableCopyOnRead22
Read_142/ReadVariableOpRead_142/ReadVariableOp28
Read_143/DisableCopyOnReadRead_143/DisableCopyOnRead22
Read_143/ReadVariableOpRead_143/ReadVariableOp28
Read_144/DisableCopyOnReadRead_144/DisableCopyOnRead22
Read_144/ReadVariableOpRead_144/ReadVariableOp28
Read_145/DisableCopyOnReadRead_145/DisableCopyOnRead22
Read_145/ReadVariableOpRead_145/ReadVariableOp28
Read_146/DisableCopyOnReadRead_146/DisableCopyOnRead22
Read_146/ReadVariableOpRead_146/ReadVariableOp28
Read_147/DisableCopyOnReadRead_147/DisableCopyOnRead22
Read_147/ReadVariableOpRead_147/ReadVariableOp28
Read_148/DisableCopyOnReadRead_148/DisableCopyOnRead22
Read_148/ReadVariableOpRead_148/ReadVariableOp28
Read_149/DisableCopyOnReadRead_149/DisableCopyOnRead22
Read_149/ReadVariableOpRead_149/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp28
Read_150/DisableCopyOnReadRead_150/DisableCopyOnRead22
Read_150/ReadVariableOpRead_150/ReadVariableOp28
Read_151/DisableCopyOnReadRead_151/DisableCopyOnRead22
Read_151/ReadVariableOpRead_151/ReadVariableOp28
Read_152/DisableCopyOnReadRead_152/DisableCopyOnRead22
Read_152/ReadVariableOpRead_152/ReadVariableOp28
Read_153/DisableCopyOnReadRead_153/DisableCopyOnRead22
Read_153/ReadVariableOpRead_153/ReadVariableOp28
Read_154/DisableCopyOnReadRead_154/DisableCopyOnRead22
Read_154/ReadVariableOpRead_154/ReadVariableOp28
Read_155/DisableCopyOnReadRead_155/DisableCopyOnRead22
Read_155/ReadVariableOpRead_155/ReadVariableOp28
Read_156/DisableCopyOnReadRead_156/DisableCopyOnRead22
Read_156/ReadVariableOpRead_156/ReadVariableOp28
Read_157/DisableCopyOnReadRead_157/DisableCopyOnRead22
Read_157/ReadVariableOpRead_157/ReadVariableOp28
Read_158/DisableCopyOnReadRead_158/DisableCopyOnRead22
Read_158/ReadVariableOpRead_158/ReadVariableOp28
Read_159/DisableCopyOnReadRead_159/DisableCopyOnRead22
Read_159/ReadVariableOpRead_159/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp28
Read_160/DisableCopyOnReadRead_160/DisableCopyOnRead22
Read_160/ReadVariableOpRead_160/ReadVariableOp28
Read_161/DisableCopyOnReadRead_161/DisableCopyOnRead22
Read_161/ReadVariableOpRead_161/ReadVariableOp28
Read_162/DisableCopyOnReadRead_162/DisableCopyOnRead22
Read_162/ReadVariableOpRead_162/ReadVariableOp28
Read_163/DisableCopyOnReadRead_163/DisableCopyOnRead22
Read_163/ReadVariableOpRead_163/ReadVariableOp28
Read_164/DisableCopyOnReadRead_164/DisableCopyOnRead22
Read_164/ReadVariableOpRead_164/ReadVariableOp28
Read_165/DisableCopyOnReadRead_165/DisableCopyOnRead22
Read_165/ReadVariableOpRead_165/ReadVariableOp28
Read_166/DisableCopyOnReadRead_166/DisableCopyOnRead22
Read_166/ReadVariableOpRead_166/ReadVariableOp28
Read_167/DisableCopyOnReadRead_167/DisableCopyOnRead22
Read_167/ReadVariableOpRead_167/ReadVariableOp28
Read_168/DisableCopyOnReadRead_168/DisableCopyOnRead22
Read_168/ReadVariableOpRead_168/ReadVariableOp28
Read_169/DisableCopyOnReadRead_169/DisableCopyOnRead22
Read_169/ReadVariableOpRead_169/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp28
Read_170/DisableCopyOnReadRead_170/DisableCopyOnRead22
Read_170/ReadVariableOpRead_170/ReadVariableOp28
Read_171/DisableCopyOnReadRead_171/DisableCopyOnRead22
Read_171/ReadVariableOpRead_171/ReadVariableOp28
Read_172/DisableCopyOnReadRead_172/DisableCopyOnRead22
Read_172/ReadVariableOpRead_172/ReadVariableOp28
Read_173/DisableCopyOnReadRead_173/DisableCopyOnRead22
Read_173/ReadVariableOpRead_173/ReadVariableOp28
Read_174/DisableCopyOnReadRead_174/DisableCopyOnRead22
Read_174/ReadVariableOpRead_174/ReadVariableOp28
Read_175/DisableCopyOnReadRead_175/DisableCopyOnRead22
Read_175/ReadVariableOpRead_175/ReadVariableOp28
Read_176/DisableCopyOnReadRead_176/DisableCopyOnRead22
Read_176/ReadVariableOpRead_176/ReadVariableOp28
Read_177/DisableCopyOnReadRead_177/DisableCopyOnRead22
Read_177/ReadVariableOpRead_177/ReadVariableOp28
Read_178/DisableCopyOnReadRead_178/DisableCopyOnRead22
Read_178/ReadVariableOpRead_178/ReadVariableOp28
Read_179/DisableCopyOnReadRead_179/DisableCopyOnRead22
Read_179/ReadVariableOpRead_179/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp28
Read_180/DisableCopyOnReadRead_180/DisableCopyOnRead22
Read_180/ReadVariableOpRead_180/ReadVariableOp28
Read_181/DisableCopyOnReadRead_181/DisableCopyOnRead22
Read_181/ReadVariableOpRead_181/ReadVariableOp28
Read_182/DisableCopyOnReadRead_182/DisableCopyOnRead22
Read_182/ReadVariableOpRead_182/ReadVariableOp26
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
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:>�9

_output_shapes
: 

_user_specified_nameConst:?�:
8
_user_specified_name Adam/conv2d_transpose_5/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_5/kernel/v:C�>
<
_user_specified_name$"Adam/batch_normalization_10/beta/v:D�?
=
_user_specified_name%#Adam/batch_normalization_10/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_4/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_4/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_9/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_9/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_3/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_3/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_8/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_8/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_2/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_7/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_7/gamma/v:?�:
8
_user_specified_name Adam/conv2d_transpose_1/bias/v:A�<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_6/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_6/gamma/v:=�8
6
_user_specified_nameAdam/conv2d_transpose/bias/v:?�:
8
_user_specified_name Adam/conv2d_transpose/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_5/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_5/gamma/v:2�-
+
_user_specified_nameAdam/dense/bias/v:4�/
-
_user_specified_nameAdam/dense/kernel/v:6�1
/
_user_specified_nameAdam/z_log_var/bias/v:8�3
1
_user_specified_nameAdam/z_log_var/kernel/v:3�.
,
_user_specified_nameAdam/z_mean/bias/v:5�0
.
_user_specified_nameAdam/z_mean/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_4/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_4/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_4/bias/v:7�2
0
_user_specified_nameAdam/conv2d_4/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_3/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_3/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_3/bias/v:7�2
0
_user_specified_nameAdam/conv2d_3/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_2/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_2/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_2/bias/v:7�2
0
_user_specified_nameAdam/conv2d_2/kernel/v:B�=
;
_user_specified_name#!Adam/batch_normalization_1/beta/v:C�>
<
_user_specified_name$"Adam/batch_normalization_1/gamma/v:5�0
.
_user_specified_nameAdam/conv2d_1/bias/v:7�2
0
_user_specified_nameAdam/conv2d_1/kernel/v:@�;
9
_user_specified_name!Adam/batch_normalization/beta/v:A�<
:
_user_specified_name" Adam/batch_normalization/gamma/v:3�.
,
_user_specified_nameAdam/conv2d/bias/v:5�0
.
_user_specified_nameAdam/conv2d/kernel/v:?�:
8
_user_specified_name Adam/conv2d_transpose_5/bias/m:A�<
:
_user_specified_name" Adam/conv2d_transpose_5/kernel/m:C�>
<
_user_specified_name$"Adam/batch_normalization_10/beta/m:D�?
=
_user_specified_name%#Adam/batch_normalization_10/gamma/m:?�:
8
_user_specified_name Adam/conv2d_transpose_4/bias/m:A�<
:
_user_specified_name" Adam/conv2d_transpose_4/kernel/m:A=
;
_user_specified_name#!Adam/batch_normalization_9/beta/m:B~>
<
_user_specified_name$"Adam/batch_normalization_9/gamma/m:>}:
8
_user_specified_name Adam/conv2d_transpose_3/bias/m:@|<
:
_user_specified_name" Adam/conv2d_transpose_3/kernel/m:A{=
;
_user_specified_name#!Adam/batch_normalization_8/beta/m:Bz>
<
_user_specified_name$"Adam/batch_normalization_8/gamma/m:>y:
8
_user_specified_name Adam/conv2d_transpose_2/bias/m:@x<
:
_user_specified_name" Adam/conv2d_transpose_2/kernel/m:Aw=
;
_user_specified_name#!Adam/batch_normalization_7/beta/m:Bv>
<
_user_specified_name$"Adam/batch_normalization_7/gamma/m:>u:
8
_user_specified_name Adam/conv2d_transpose_1/bias/m:@t<
:
_user_specified_name" Adam/conv2d_transpose_1/kernel/m:As=
;
_user_specified_name#!Adam/batch_normalization_6/beta/m:Br>
<
_user_specified_name$"Adam/batch_normalization_6/gamma/m:<q8
6
_user_specified_nameAdam/conv2d_transpose/bias/m:>p:
8
_user_specified_name Adam/conv2d_transpose/kernel/m:Ao=
;
_user_specified_name#!Adam/batch_normalization_5/beta/m:Bn>
<
_user_specified_name$"Adam/batch_normalization_5/gamma/m:1m-
+
_user_specified_nameAdam/dense/bias/m:3l/
-
_user_specified_nameAdam/dense/kernel/m:5k1
/
_user_specified_nameAdam/z_log_var/bias/m:7j3
1
_user_specified_nameAdam/z_log_var/kernel/m:2i.
,
_user_specified_nameAdam/z_mean/bias/m:4h0
.
_user_specified_nameAdam/z_mean/kernel/m:Ag=
;
_user_specified_name#!Adam/batch_normalization_4/beta/m:Bf>
<
_user_specified_name$"Adam/batch_normalization_4/gamma/m:4e0
.
_user_specified_nameAdam/conv2d_4/bias/m:6d2
0
_user_specified_nameAdam/conv2d_4/kernel/m:Ac=
;
_user_specified_name#!Adam/batch_normalization_3/beta/m:Bb>
<
_user_specified_name$"Adam/batch_normalization_3/gamma/m:4a0
.
_user_specified_nameAdam/conv2d_3/bias/m:6`2
0
_user_specified_nameAdam/conv2d_3/kernel/m:A_=
;
_user_specified_name#!Adam/batch_normalization_2/beta/m:B^>
<
_user_specified_name$"Adam/batch_normalization_2/gamma/m:4]0
.
_user_specified_nameAdam/conv2d_2/bias/m:6\2
0
_user_specified_nameAdam/conv2d_2/kernel/m:A[=
;
_user_specified_name#!Adam/batch_normalization_1/beta/m:BZ>
<
_user_specified_name$"Adam/batch_normalization_1/gamma/m:4Y0
.
_user_specified_nameAdam/conv2d_1/bias/m:6X2
0
_user_specified_nameAdam/conv2d_1/kernel/m:?W;
9
_user_specified_name!Adam/batch_normalization/beta/m:@V<
:
_user_specified_name" Adam/batch_normalization/gamma/m:2U.
,
_user_specified_nameAdam/conv2d/bias/m:4T0
.
_user_specified_nameAdam/conv2d/kernel/m:2S.
,
_user_specified_nameAdam/learning_rate:*R&
$
_user_specified_name
Adam/decay:+Q'
%
_user_specified_nameAdam/beta_2:+P'
%
_user_specified_nameAdam/beta_1:)O%
#
_user_specified_name	Adam/iter:%N!

_user_specified_namecount:%M!

_user_specified_nametotal:'L#
!
_user_specified_name	count_1:'K#
!
_user_specified_name	total_1:'J#
!
_user_specified_name	count_2:'I#
!
_user_specified_name	total_2:7H3
1
_user_specified_nameconv2d_transpose_5/bias:9G5
3
_user_specified_nameconv2d_transpose_5/kernel:FFB
@
_user_specified_name(&batch_normalization_10/moving_variance:BE>
<
_user_specified_name$"batch_normalization_10/moving_mean:;D7
5
_user_specified_namebatch_normalization_10/beta:<C8
6
_user_specified_namebatch_normalization_10/gamma:7B3
1
_user_specified_nameconv2d_transpose_4/bias:9A5
3
_user_specified_nameconv2d_transpose_4/kernel:E@A
?
_user_specified_name'%batch_normalization_9/moving_variance:A?=
;
_user_specified_name#!batch_normalization_9/moving_mean::>6
4
_user_specified_namebatch_normalization_9/beta:;=7
5
_user_specified_namebatch_normalization_9/gamma:7<3
1
_user_specified_nameconv2d_transpose_3/bias:9;5
3
_user_specified_nameconv2d_transpose_3/kernel:E:A
?
_user_specified_name'%batch_normalization_8/moving_variance:A9=
;
_user_specified_name#!batch_normalization_8/moving_mean::86
4
_user_specified_namebatch_normalization_8/beta:;77
5
_user_specified_namebatch_normalization_8/gamma:763
1
_user_specified_nameconv2d_transpose_2/bias:955
3
_user_specified_nameconv2d_transpose_2/kernel:E4A
?
_user_specified_name'%batch_normalization_7/moving_variance:A3=
;
_user_specified_name#!batch_normalization_7/moving_mean::26
4
_user_specified_namebatch_normalization_7/beta:;17
5
_user_specified_namebatch_normalization_7/gamma:703
1
_user_specified_nameconv2d_transpose_1/bias:9/5
3
_user_specified_nameconv2d_transpose_1/kernel:E.A
?
_user_specified_name'%batch_normalization_6/moving_variance:A-=
;
_user_specified_name#!batch_normalization_6/moving_mean::,6
4
_user_specified_namebatch_normalization_6/beta:;+7
5
_user_specified_namebatch_normalization_6/gamma:5*1
/
_user_specified_nameconv2d_transpose/bias:7)3
1
_user_specified_nameconv2d_transpose/kernel:E(A
?
_user_specified_name'%batch_normalization_5/moving_variance:A'=
;
_user_specified_name#!batch_normalization_5/moving_mean::&6
4
_user_specified_namebatch_normalization_5/beta:;%7
5
_user_specified_namebatch_normalization_5/gamma:*$&
$
_user_specified_name
dense/bias:,#(
&
_user_specified_namedense/kernel:."*
(
_user_specified_namez_log_var/bias:0!,
*
_user_specified_namez_log_var/kernel:+ '
%
_user_specified_namez_mean/bias:-)
'
_user_specified_namez_mean/kernel:EA
?
_user_specified_name'%batch_normalization_4/moving_variance:A=
;
_user_specified_name#!batch_normalization_4/moving_mean::6
4
_user_specified_namebatch_normalization_4/beta:;7
5
_user_specified_namebatch_normalization_4/gamma:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�!
�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_218457

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217968

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_2_layer_call_fn_218424

inputs!
unknown:@@
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_215967�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218420:&"
 
_user_specified_name218418:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_4_layer_call_fn_217896

inputs!
unknown:@@
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
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_215212w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217892:&"
 
_user_specified_name217890:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_217906

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
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
:���������@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_1_layer_call_fn_217623

inputs!
unknown:@@
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
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_215122w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217619:&"
 
_user_specified_name217617:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_218068

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_216301p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218064:&"
 
_user_specified_name218062:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_2_layer_call_fn_217791

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_215171h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_218078

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216098

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218747

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
_
C__inference_reshape_layer_call_and_return_conditional_losses_218187

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_218643

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������  @*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�k
�
C__inference_encoder_layer_call_and_return_conditional_losses_215393
encoder_input'
conv2d_215303:@
conv2d_215305:@(
batch_normalization_215308:@(
batch_normalization_215310:@(
batch_normalization_215312:@(
batch_normalization_215314:@)
conv2d_1_215318:@@
conv2d_1_215320:@*
batch_normalization_1_215323:@*
batch_normalization_1_215325:@*
batch_normalization_1_215327:@*
batch_normalization_1_215329:@)
conv2d_2_215333:@@
conv2d_2_215335:@*
batch_normalization_2_215338:@*
batch_normalization_2_215340:@*
batch_normalization_2_215342:@*
batch_normalization_2_215344:@)
conv2d_3_215348:@@
conv2d_3_215350:@*
batch_normalization_3_215353:@*
batch_normalization_3_215355:@*
batch_normalization_3_215357:@*
batch_normalization_3_215359:@)
conv2d_4_215363:@@
conv2d_4_215365:@*
batch_normalization_4_215368:@*
batch_normalization_4_215370:@*
batch_normalization_4_215372:@*
batch_normalization_4_215374:@!
z_mean_215379:
��
z_mean_215381:	�$
z_log_var_215384:
��
z_log_var_215386:	�
identity

identity_1

identity_2��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� sampling/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_215303conv2d_215305*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_215092�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_215308batch_normalization_215310batch_normalization_215312batch_normalization_215314*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214806�
leaky_re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_215111�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv2d_1_215318conv2d_1_215320*
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
GPU 2J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_215122�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_215323batch_normalization_1_215325batch_normalization_1_215327batch_normalization_1_215329*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214868�
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_215141�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0conv2d_2_215333conv2d_2_215335*
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
GPU 2J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_215152�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_215338batch_normalization_2_215340batch_normalization_2_215342batch_normalization_2_215344*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214930�
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_215171�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv2d_3_215348conv2d_3_215350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_215182�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_215353batch_normalization_3_215355batch_normalization_3_215357batch_normalization_3_215359*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214992�
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_215201�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv2d_4_215363conv2d_4_215365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_215212�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_215368batch_normalization_4_215370batch_normalization_4_215372batch_normalization_4_215374*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215054�
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_215231�
flatten/PartitionedCallPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_215238�
z_mean/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0z_mean_215379z_mean_215381*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_215249�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0z_log_var_215384z_log_var_215386*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_215264�
 sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sampling_layer_call_and_return_conditional_losses_215295w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������{

Identity_2Identity)sampling/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^sampling/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 sampling/StatefulPartitionedCall sampling/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:&""
 
_user_specified_name215386:&!"
 
_user_specified_name215384:& "
 
_user_specified_name215381:&"
 
_user_specified_name215379:&"
 
_user_specified_name215374:&"
 
_user_specified_name215372:&"
 
_user_specified_name215370:&"
 
_user_specified_name215368:&"
 
_user_specified_name215365:&"
 
_user_specified_name215363:&"
 
_user_specified_name215359:&"
 
_user_specified_name215357:&"
 
_user_specified_name215355:&"
 
_user_specified_name215353:&"
 
_user_specified_name215350:&"
 
_user_specified_name215348:&"
 
_user_specified_name215344:&"
 
_user_specified_name215342:&"
 
_user_specified_name215340:&"
 
_user_specified_name215338:&"
 
_user_specified_name215335:&"
 
_user_specified_name215333:&"
 
_user_specified_name215329:&"
 
_user_specified_name215327:&
"
 
_user_specified_name215325:&	"
 
_user_specified_name215323:&"
 
_user_specified_name215320:&"
 
_user_specified_name215318:&"
 
_user_specified_name215314:&"
 
_user_specified_name215312:&"
 
_user_specified_name215310:&"
 
_user_specified_name215308:&"
 
_user_specified_name215305:&"
 
_user_specified_name215303:^ Z
/
_output_shapes
:���������@@
'
_user_specified_nameencoder_input
�

�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_215122

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
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
:���������  @
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217768

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_215238

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�"
�
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_218800

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
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
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
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
:@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
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
�
�
)__inference_conv2d_3_layer_call_fn_217805

inputs!
unknown:@@
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
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_215182w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217801:&"
 
_user_specified_name217799:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218615

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_218571

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�

�
6__inference_batch_normalization_9_layer_call_fn_218584

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216098�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218580:&"
 
_user_specified_name218578:&"
 
_user_specified_name218576:&"
 
_user_specified_name218574:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
K
/__inference_leaky_re_lu_10_layer_call_fn_218752

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_216435h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218273

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_216175

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
e
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_218168

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%���>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218633

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_5_layer_call_fn_218104

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215700p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218100:&"
 
_user_specified_name218098:&"
 
_user_specified_name218096:&"
 
_user_specified_name218094:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_7_layer_call_fn_218356

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215890�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218352:&"
 
_user_specified_name218350:&"
 
_user_specified_name218348:&"
 
_user_specified_name218346:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
'__inference_z_mean_layer_call_fn_217998

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_215249p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217994:&"
 
_user_specified_name217992:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_216301

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_7_layer_call_fn_218410

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_216375h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215786

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�M
!__inference__wrapped_model_214770
input_1K
1vae_encoder_conv2d_conv2d_readvariableop_resource:@@
2vae_encoder_conv2d_biasadd_readvariableop_resource:@E
7vae_encoder_batch_normalization_readvariableop_resource:@G
9vae_encoder_batch_normalization_readvariableop_1_resource:@V
Hvae_encoder_batch_normalization_fusedbatchnormv3_readvariableop_resource:@X
Jvae_encoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@M
3vae_encoder_conv2d_1_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_1_biasadd_readvariableop_resource:@G
9vae_encoder_batch_normalization_1_readvariableop_resource:@I
;vae_encoder_batch_normalization_1_readvariableop_1_resource:@X
Jvae_encoder_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@Z
Lvae_encoder_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@M
3vae_encoder_conv2d_2_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_2_biasadd_readvariableop_resource:@G
9vae_encoder_batch_normalization_2_readvariableop_resource:@I
;vae_encoder_batch_normalization_2_readvariableop_1_resource:@X
Jvae_encoder_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@Z
Lvae_encoder_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@M
3vae_encoder_conv2d_3_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_3_biasadd_readvariableop_resource:@G
9vae_encoder_batch_normalization_3_readvariableop_resource:@I
;vae_encoder_batch_normalization_3_readvariableop_1_resource:@X
Jvae_encoder_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@Z
Lvae_encoder_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@M
3vae_encoder_conv2d_4_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_4_biasadd_readvariableop_resource:@G
9vae_encoder_batch_normalization_4_readvariableop_resource:@I
;vae_encoder_batch_normalization_4_readvariableop_1_resource:@X
Jvae_encoder_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@Z
Lvae_encoder_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@E
1vae_encoder_z_mean_matmul_readvariableop_resource:
��A
2vae_encoder_z_mean_biasadd_readvariableop_resource:	�H
4vae_encoder_z_log_var_matmul_readvariableop_resource:
��D
5vae_encoder_z_log_var_biasadd_readvariableop_resource:	�B
.vae_model_dense_matmul_readvariableop_resource:
��>
/vae_model_dense_biasadd_readvariableop_resource:	�P
Avae_model_batch_normalization_5_batchnorm_readvariableop_resource:	�T
Evae_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:	�R
Cvae_model_batch_normalization_5_batchnorm_readvariableop_1_resource:	�R
Cvae_model_batch_normalization_5_batchnorm_readvariableop_2_resource:	�]
Cvae_model_conv2d_transpose_conv2d_transpose_readvariableop_resource:@@H
:vae_model_conv2d_transpose_biasadd_readvariableop_resource:@E
7vae_model_batch_normalization_6_readvariableop_resource:@G
9vae_model_batch_normalization_6_readvariableop_1_resource:@V
Hvae_model_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:@X
Jvae_model_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:@_
Evae_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@J
<vae_model_conv2d_transpose_1_biasadd_readvariableop_resource:@E
7vae_model_batch_normalization_7_readvariableop_resource:@G
9vae_model_batch_normalization_7_readvariableop_1_resource:@V
Hvae_model_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@X
Jvae_model_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@_
Evae_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@@J
<vae_model_conv2d_transpose_2_biasadd_readvariableop_resource:@E
7vae_model_batch_normalization_8_readvariableop_resource:@G
9vae_model_batch_normalization_8_readvariableop_1_resource:@V
Hvae_model_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:@X
Jvae_model_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:@_
Evae_model_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@@J
<vae_model_conv2d_transpose_3_biasadd_readvariableop_resource:@E
7vae_model_batch_normalization_9_readvariableop_resource:@G
9vae_model_batch_normalization_9_readvariableop_1_resource:@V
Hvae_model_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:@X
Jvae_model_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:@_
Evae_model_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@@J
<vae_model_conv2d_transpose_4_biasadd_readvariableop_resource:@F
8vae_model_batch_normalization_10_readvariableop_resource:@H
:vae_model_batch_normalization_10_readvariableop_1_resource:@W
Ivae_model_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@Y
Kvae_model_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@_
Evae_model_conv2d_transpose_5_conv2d_transpose_readvariableop_resource:@J
<vae_model_conv2d_transpose_5_biasadd_readvariableop_resource:
identity

identity_1

identity_2��?vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp�Avae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�.vae/encoder/batch_normalization/ReadVariableOp�0vae/encoder/batch_normalization/ReadVariableOp_1�Avae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Cvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�0vae/encoder/batch_normalization_1/ReadVariableOp�2vae/encoder/batch_normalization_1/ReadVariableOp_1�Avae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Cvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�0vae/encoder/batch_normalization_2/ReadVariableOp�2vae/encoder/batch_normalization_2/ReadVariableOp_1�Avae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�Cvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�0vae/encoder/batch_normalization_3/ReadVariableOp�2vae/encoder/batch_normalization_3/ReadVariableOp_1�Avae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�Cvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�0vae/encoder/batch_normalization_4/ReadVariableOp�2vae/encoder/batch_normalization_4/ReadVariableOp_1�)vae/encoder/conv2d/BiasAdd/ReadVariableOp�(vae/encoder/conv2d/Conv2D/ReadVariableOp�+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_1/Conv2D/ReadVariableOp�+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_2/Conv2D/ReadVariableOp�+vae/encoder/conv2d_3/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_3/Conv2D/ReadVariableOp�+vae/encoder/conv2d_4/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_4/Conv2D/ReadVariableOp�,vae/encoder/z_log_var/BiasAdd/ReadVariableOp�+vae/encoder/z_log_var/MatMul/ReadVariableOp�)vae/encoder/z_mean/BiasAdd/ReadVariableOp�(vae/encoder/z_mean/MatMul/ReadVariableOp�@vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp�Bvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1�/vae/model/batch_normalization_10/ReadVariableOp�1vae/model/batch_normalization_10/ReadVariableOp_1�8vae/model/batch_normalization_5/batchnorm/ReadVariableOp�:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_1�:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_2�<vae/model/batch_normalization_5/batchnorm/mul/ReadVariableOp�?vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�Avae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�.vae/model/batch_normalization_6/ReadVariableOp�0vae/model/batch_normalization_6/ReadVariableOp_1�?vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�Avae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�.vae/model/batch_normalization_7/ReadVariableOp�0vae/model/batch_normalization_7/ReadVariableOp_1�?vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�Avae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�.vae/model/batch_normalization_8/ReadVariableOp�0vae/model/batch_normalization_8/ReadVariableOp_1�?vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp�Avae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1�.vae/model/batch_normalization_9/ReadVariableOp�0vae/model/batch_normalization_9/ReadVariableOp_1�1vae/model/conv2d_transpose/BiasAdd/ReadVariableOp�:vae/model/conv2d_transpose/conv2d_transpose/ReadVariableOp�3vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOp�<vae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�3vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOp�<vae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�3vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOp�<vae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOp�3vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOp�<vae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp�3vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOp�<vae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOp�&vae/model/dense/BiasAdd/ReadVariableOp�%vae/model/dense/MatMul/ReadVariableOp�
(vae/encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp1vae_encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
vae/encoder/conv2d/Conv2DConv2Dinput_10vae/encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
)vae/encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp2vae_encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d/BiasAddBiasAdd"vae/encoder/conv2d/Conv2D:output:01vae/encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
.vae/encoder/batch_normalization/ReadVariableOpReadVariableOp7vae_encoder_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0�
0vae/encoder/batch_normalization/ReadVariableOp_1ReadVariableOp9vae_encoder_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpHvae_encoder_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Avae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJvae_encoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0vae/encoder/batch_normalization/FusedBatchNormV3FusedBatchNormV3#vae/encoder/conv2d/BiasAdd:output:06vae/encoder/batch_normalization/ReadVariableOp:value:08vae/encoder/batch_normalization/ReadVariableOp_1:value:0Gvae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Ivae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  @:@:@:@:@:*
epsilon%o�:*
is_training( �
!vae/encoder/leaky_re_lu/LeakyRelu	LeakyRelu4vae/encoder/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������  @*
alpha%���>�
*vae/encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_1/Conv2DConv2D/vae/encoder/leaky_re_lu/LeakyRelu:activations:02vae/encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_1/BiasAddBiasAdd$vae/encoder/conv2d_1/Conv2D:output:03vae/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0vae/encoder/batch_normalization_1/ReadVariableOpReadVariableOp9vae_encoder_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_1/ReadVariableOp_1ReadVariableOp;vae_encoder_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Avae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpJvae_encoder_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Cvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLvae_encoder_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3%vae/encoder/conv2d_1/BiasAdd:output:08vae/encoder/batch_normalization_1/ReadVariableOp:value:0:vae/encoder/batch_normalization_1/ReadVariableOp_1:value:0Ivae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Kvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
#vae/encoder/leaky_re_lu_1/LeakyRelu	LeakyRelu6vae/encoder/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
*vae/encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_2/Conv2DConv2D1vae/encoder/leaky_re_lu_1/LeakyRelu:activations:02vae/encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_2/BiasAddBiasAdd$vae/encoder/conv2d_2/Conv2D:output:03vae/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0vae/encoder/batch_normalization_2/ReadVariableOpReadVariableOp9vae_encoder_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_2/ReadVariableOp_1ReadVariableOp;vae_encoder_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Avae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpJvae_encoder_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Cvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLvae_encoder_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3%vae/encoder/conv2d_2/BiasAdd:output:08vae/encoder/batch_normalization_2/ReadVariableOp:value:0:vae/encoder/batch_normalization_2/ReadVariableOp_1:value:0Ivae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Kvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
#vae/encoder/leaky_re_lu_2/LeakyRelu	LeakyRelu6vae/encoder/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
*vae/encoder/conv2d_3/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_3/Conv2DConv2D1vae/encoder/leaky_re_lu_2/LeakyRelu:activations:02vae/encoder/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+vae/encoder/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_3/BiasAddBiasAdd$vae/encoder/conv2d_3/Conv2D:output:03vae/encoder/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0vae/encoder/batch_normalization_3/ReadVariableOpReadVariableOp9vae_encoder_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_3/ReadVariableOp_1ReadVariableOp;vae_encoder_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Avae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpJvae_encoder_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Cvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLvae_encoder_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3%vae/encoder/conv2d_3/BiasAdd:output:08vae/encoder/batch_normalization_3/ReadVariableOp:value:0:vae/encoder/batch_normalization_3/ReadVariableOp_1:value:0Ivae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Kvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
#vae/encoder/leaky_re_lu_3/LeakyRelu	LeakyRelu6vae/encoder/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
*vae/encoder/conv2d_4/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_4/Conv2DConv2D1vae/encoder/leaky_re_lu_3/LeakyRelu:activations:02vae/encoder/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+vae/encoder/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_4/BiasAddBiasAdd$vae/encoder/conv2d_4/Conv2D:output:03vae/encoder/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0vae/encoder/batch_normalization_4/ReadVariableOpReadVariableOp9vae_encoder_batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_4/ReadVariableOp_1ReadVariableOp;vae_encoder_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Avae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpJvae_encoder_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Cvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLvae_encoder_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2vae/encoder/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3%vae/encoder/conv2d_4/BiasAdd:output:08vae/encoder/batch_normalization_4/ReadVariableOp:value:0:vae/encoder/batch_normalization_4/ReadVariableOp_1:value:0Ivae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Kvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
#vae/encoder/leaky_re_lu_4/LeakyRelu	LeakyRelu6vae/encoder/batch_normalization_4/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>j
vae/encoder/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
vae/encoder/flatten/ReshapeReshape1vae/encoder/leaky_re_lu_4/LeakyRelu:activations:0"vae/encoder/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
(vae/encoder/z_mean/MatMul/ReadVariableOpReadVariableOp1vae_encoder_z_mean_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
vae/encoder/z_mean/MatMulMatMul$vae/encoder/flatten/Reshape:output:00vae/encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)vae/encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp2vae_encoder_z_mean_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae/encoder/z_mean/BiasAddBiasAdd#vae/encoder/z_mean/MatMul:product:01vae/encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+vae/encoder/z_log_var/MatMul/ReadVariableOpReadVariableOp4vae_encoder_z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
vae/encoder/z_log_var/MatMulMatMul$vae/encoder/flatten/Reshape:output:03vae/encoder/z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,vae/encoder/z_log_var/BiasAdd/ReadVariableOpReadVariableOp5vae_encoder_z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae/encoder/z_log_var/BiasAddBiasAdd&vae/encoder/z_log_var/MatMul:product:04vae/encoder/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
vae/encoder/sampling/ShapeShape#vae/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::��r
(vae/encoder/sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*vae/encoder/sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*vae/encoder/sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"vae/encoder/sampling/strided_sliceStridedSlice#vae/encoder/sampling/Shape:output:01vae/encoder/sampling/strided_slice/stack:output:03vae/encoder/sampling/strided_slice/stack_1:output:03vae/encoder/sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
vae/encoder/sampling/Shape_1Shape#vae/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::��t
*vae/encoder/sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,vae/encoder/sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,vae/encoder/sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$vae/encoder/sampling/strided_slice_1StridedSlice%vae/encoder/sampling/Shape_1:output:03vae/encoder/sampling/strided_slice_1/stack:output:05vae/encoder/sampling/strided_slice_1/stack_1:output:05vae/encoder/sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
(vae/encoder/sampling/random_normal/shapePack+vae/encoder/sampling/strided_slice:output:0-vae/encoder/sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:l
'vae/encoder/sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)vae/encoder/sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7vae/encoder/sampling/random_normal/RandomStandardNormalRandomStandardNormal1vae/encoder/sampling/random_normal/shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed2���*
seed���)�
&vae/encoder/sampling/random_normal/mulMul@vae/encoder/sampling/random_normal/RandomStandardNormal:output:02vae/encoder/sampling/random_normal/stddev:output:0*
T0*(
_output_shapes
:�����������
"vae/encoder/sampling/random_normalAddV2*vae/encoder/sampling/random_normal/mul:z:00vae/encoder/sampling/random_normal/mean:output:0*
T0*(
_output_shapes
:����������_
vae/encoder/sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
vae/encoder/sampling/mulMul#vae/encoder/sampling/mul/x:output:0&vae/encoder/z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:����������p
vae/encoder/sampling/ExpExpvae/encoder/sampling/mul:z:0*
T0*(
_output_shapes
:�����������
vae/encoder/sampling/mul_1Mulvae/encoder/sampling/Exp:y:0&vae/encoder/sampling/random_normal:z:0*
T0*(
_output_shapes
:�����������
vae/encoder/sampling/addAddV2#vae/encoder/z_mean/BiasAdd:output:0vae/encoder/sampling/mul_1:z:0*
T0*(
_output_shapes
:�����������
%vae/model/dense/MatMul/ReadVariableOpReadVariableOp.vae_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
vae/model/dense/MatMulMatMulvae/encoder/sampling/add:z:0-vae/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&vae/model/dense/BiasAdd/ReadVariableOpReadVariableOp/vae_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
vae/model/dense/BiasAddBiasAdd vae/model/dense/MatMul:product:0.vae/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8vae/model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpAvae_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0t
/vae/model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
-vae/model/batch_normalization_5/batchnorm/addAddV2@vae/model/batch_normalization_5/batchnorm/ReadVariableOp:value:08vae/model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
/vae/model/batch_normalization_5/batchnorm/RsqrtRsqrt1vae/model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:��
<vae/model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpEvae_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-vae/model/batch_normalization_5/batchnorm/mulMul3vae/model/batch_normalization_5/batchnorm/Rsqrt:y:0Dvae/model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
/vae/model/batch_normalization_5/batchnorm/mul_1Mul vae/model/dense/BiasAdd:output:01vae/model/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpCvae_model_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
/vae/model/batch_normalization_5/batchnorm/mul_2MulBvae/model/batch_normalization_5/batchnorm/ReadVariableOp_1:value:01vae/model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpCvae_model_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
-vae/model/batch_normalization_5/batchnorm/subSubBvae/model/batch_normalization_5/batchnorm/ReadVariableOp_2:value:03vae/model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
/vae/model/batch_normalization_5/batchnorm/add_1AddV23vae/model/batch_normalization_5/batchnorm/mul_1:z:01vae/model/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
!vae/model/leaky_re_lu_5/LeakyRelu	LeakyRelu3vae/model/batch_normalization_5/batchnorm/add_1:z:0*(
_output_shapes
:����������*
alpha%���>�
vae/model/reshape/ShapeShape/vae/model/leaky_re_lu_5/LeakyRelu:activations:0*
T0*
_output_shapes
::��o
%vae/model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'vae/model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'vae/model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
vae/model/reshape/strided_sliceStridedSlice vae/model/reshape/Shape:output:0.vae/model/reshape/strided_slice/stack:output:00vae/model/reshape/strided_slice/stack_1:output:00vae/model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!vae/model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :c
!vae/model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :c
!vae/model/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@�
vae/model/reshape/Reshape/shapePack(vae/model/reshape/strided_slice:output:0*vae/model/reshape/Reshape/shape/1:output:0*vae/model/reshape/Reshape/shape/2:output:0*vae/model/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
vae/model/reshape/ReshapeReshape/vae/model/leaky_re_lu_5/LeakyRelu:activations:0(vae/model/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
 vae/model/conv2d_transpose/ShapeShape"vae/model/reshape/Reshape:output:0*
T0*
_output_shapes
::��x
.vae/model/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0vae/model/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0vae/model/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(vae/model/conv2d_transpose/strided_sliceStridedSlice)vae/model/conv2d_transpose/Shape:output:07vae/model/conv2d_transpose/strided_slice/stack:output:09vae/model/conv2d_transpose/strided_slice/stack_1:output:09vae/model/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"vae/model/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :d
"vae/model/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :d
"vae/model/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
 vae/model/conv2d_transpose/stackPack1vae/model/conv2d_transpose/strided_slice:output:0+vae/model/conv2d_transpose/stack/1:output:0+vae/model/conv2d_transpose/stack/2:output:0+vae/model/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:z
0vae/model/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose/strided_slice_1StridedSlice)vae/model/conv2d_transpose/stack:output:09vae/model/conv2d_transpose/strided_slice_1/stack:output:0;vae/model/conv2d_transpose/strided_slice_1/stack_1:output:0;vae/model/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:vae/model/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpCvae_model_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
+vae/model/conv2d_transpose/conv2d_transposeConv2DBackpropInput)vae/model/conv2d_transpose/stack:output:0Bvae/model/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0"vae/model/reshape/Reshape:output:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
1vae/model/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp:vae_model_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"vae/model/conv2d_transpose/BiasAddBiasAdd4vae/model/conv2d_transpose/conv2d_transpose:output:09vae/model/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.vae/model/batch_normalization_6/ReadVariableOpReadVariableOp7vae_model_batch_normalization_6_readvariableop_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_6/ReadVariableOp_1ReadVariableOp9vae_model_batch_normalization_6_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpHvae_model_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Avae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJvae_model_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3+vae/model/conv2d_transpose/BiasAdd:output:06vae/model/batch_normalization_6/ReadVariableOp:value:08vae/model/batch_normalization_6/ReadVariableOp_1:value:0Gvae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Ivae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!vae/model/leaky_re_lu_6/LeakyRelu	LeakyRelu4vae/model/batch_normalization_6/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
"vae/model/conv2d_transpose_1/ShapeShape/vae/model/leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0vae/model/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose_1/strided_sliceStridedSlice+vae/model/conv2d_transpose_1/Shape:output:09vae/model/conv2d_transpose_1/strided_slice/stack:output:0;vae/model/conv2d_transpose_1/strided_slice/stack_1:output:0;vae/model/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/model/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :f
$vae/model/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :f
$vae/model/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
"vae/model/conv2d_transpose_1/stackPack3vae/model/conv2d_transpose_1/strided_slice:output:0-vae/model/conv2d_transpose_1/stack/1:output:0-vae/model/conv2d_transpose_1/stack/2:output:0-vae/model/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/model/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/model/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/model/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/model/conv2d_transpose_1/strided_slice_1StridedSlice+vae/model/conv2d_transpose_1/stack:output:0;vae/model/conv2d_transpose_1/strided_slice_1/stack:output:0=vae/model/conv2d_transpose_1/strided_slice_1/stack_1:output:0=vae/model/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpEvae_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
-vae/model/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput+vae/model/conv2d_transpose_1/stack:output:0Dvae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0/vae/model/leaky_re_lu_6/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
3vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp<vae_model_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
$vae/model/conv2d_transpose_1/BiasAddBiasAdd6vae/model/conv2d_transpose_1/conv2d_transpose:output:0;vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.vae/model/batch_normalization_7/ReadVariableOpReadVariableOp7vae_model_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_7/ReadVariableOp_1ReadVariableOp9vae_model_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpHvae_model_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Avae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJvae_model_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3-vae/model/conv2d_transpose_1/BiasAdd:output:06vae/model/batch_normalization_7/ReadVariableOp:value:08vae/model/batch_normalization_7/ReadVariableOp_1:value:0Gvae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Ivae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!vae/model/leaky_re_lu_7/LeakyRelu	LeakyRelu4vae/model/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
"vae/model/conv2d_transpose_2/ShapeShape/vae/model/leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0vae/model/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose_2/strided_sliceStridedSlice+vae/model/conv2d_transpose_2/Shape:output:09vae/model/conv2d_transpose_2/strided_slice/stack:output:0;vae/model/conv2d_transpose_2/strided_slice/stack_1:output:0;vae/model/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/model/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :f
$vae/model/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :f
$vae/model/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
"vae/model/conv2d_transpose_2/stackPack3vae/model/conv2d_transpose_2/strided_slice:output:0-vae/model/conv2d_transpose_2/stack/1:output:0-vae/model/conv2d_transpose_2/stack/2:output:0-vae/model/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/model/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/model/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/model/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/model/conv2d_transpose_2/strided_slice_1StridedSlice+vae/model/conv2d_transpose_2/stack:output:0;vae/model/conv2d_transpose_2/strided_slice_1/stack:output:0=vae/model/conv2d_transpose_2/strided_slice_1/stack_1:output:0=vae/model/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpEvae_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
-vae/model/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput+vae/model/conv2d_transpose_2/stack:output:0Dvae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0/vae/model/leaky_re_lu_7/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
3vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp<vae_model_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
$vae/model/conv2d_transpose_2/BiasAddBiasAdd6vae/model/conv2d_transpose_2/conv2d_transpose:output:0;vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.vae/model/batch_normalization_8/ReadVariableOpReadVariableOp7vae_model_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_8/ReadVariableOp_1ReadVariableOp9vae_model_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpHvae_model_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Avae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJvae_model_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3-vae/model/conv2d_transpose_2/BiasAdd:output:06vae/model/batch_normalization_8/ReadVariableOp:value:08vae/model/batch_normalization_8/ReadVariableOp_1:value:0Gvae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Ivae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!vae/model/leaky_re_lu_8/LeakyRelu	LeakyRelu4vae/model/batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%���>�
"vae/model/conv2d_transpose_3/ShapeShape/vae/model/leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0vae/model/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose_3/strided_sliceStridedSlice+vae/model/conv2d_transpose_3/Shape:output:09vae/model/conv2d_transpose_3/strided_slice/stack:output:0;vae/model/conv2d_transpose_3/strided_slice/stack_1:output:0;vae/model/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/model/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$vae/model/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : f
$vae/model/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
"vae/model/conv2d_transpose_3/stackPack3vae/model/conv2d_transpose_3/strided_slice:output:0-vae/model/conv2d_transpose_3/stack/1:output:0-vae/model/conv2d_transpose_3/stack/2:output:0-vae/model/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/model/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/model/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/model/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/model/conv2d_transpose_3/strided_slice_1StridedSlice+vae/model/conv2d_transpose_3/stack:output:0;vae/model/conv2d_transpose_3/strided_slice_1/stack:output:0=vae/model/conv2d_transpose_3/strided_slice_1/stack_1:output:0=vae/model/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpEvae_model_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
-vae/model/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput+vae/model/conv2d_transpose_3/stack:output:0Dvae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0/vae/model/leaky_re_lu_8/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
3vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp<vae_model_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
$vae/model/conv2d_transpose_3/BiasAddBiasAdd6vae/model/conv2d_transpose_3/conv2d_transpose:output:0;vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
.vae/model/batch_normalization_9/ReadVariableOpReadVariableOp7vae_model_batch_normalization_9_readvariableop_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_9/ReadVariableOp_1ReadVariableOp9vae_model_batch_normalization_9_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpHvae_model_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Avae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJvae_model_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0vae/model/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3-vae/model/conv2d_transpose_3/BiasAdd:output:06vae/model/batch_normalization_9/ReadVariableOp:value:08vae/model/batch_normalization_9/ReadVariableOp_1:value:0Gvae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Ivae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  @:@:@:@:@:*
epsilon%o�:*
is_training( �
!vae/model/leaky_re_lu_9/LeakyRelu	LeakyRelu4vae/model/batch_normalization_9/FusedBatchNormV3:y:0*/
_output_shapes
:���������  @*
alpha%���>�
"vae/model/conv2d_transpose_4/ShapeShape/vae/model/leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0vae/model/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose_4/strided_sliceStridedSlice+vae/model/conv2d_transpose_4/Shape:output:09vae/model/conv2d_transpose_4/strided_slice/stack:output:0;vae/model/conv2d_transpose_4/strided_slice/stack_1:output:0;vae/model/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/model/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@f
$vae/model/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@f
$vae/model/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
"vae/model/conv2d_transpose_4/stackPack3vae/model/conv2d_transpose_4/strided_slice:output:0-vae/model/conv2d_transpose_4/stack/1:output:0-vae/model/conv2d_transpose_4/stack/2:output:0-vae/model/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/model/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/model/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/model/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/model/conv2d_transpose_4/strided_slice_1StridedSlice+vae/model/conv2d_transpose_4/stack:output:0;vae/model/conv2d_transpose_4/strided_slice_1/stack:output:0=vae/model/conv2d_transpose_4/strided_slice_1/stack_1:output:0=vae/model/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpEvae_model_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
-vae/model/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput+vae/model/conv2d_transpose_4/stack:output:0Dvae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0/vae/model/leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
3vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp<vae_model_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
$vae/model/conv2d_transpose_4/BiasAddBiasAdd6vae/model/conv2d_transpose_4/conv2d_transpose:output:0;vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@�
/vae/model/batch_normalization_10/ReadVariableOpReadVariableOp8vae_model_batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype0�
1vae/model/batch_normalization_10/ReadVariableOp_1ReadVariableOp:vae_model_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpIvae_model_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Bvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKvae_model_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
1vae/model/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3-vae/model/conv2d_transpose_4/BiasAdd:output:07vae/model/batch_normalization_10/ReadVariableOp:value:09vae/model/batch_normalization_10/ReadVariableOp_1:value:0Hvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Jvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
"vae/model/leaky_re_lu_10/LeakyRelu	LeakyRelu5vae/model/batch_normalization_10/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@*
alpha%���>�
"vae/model/conv2d_transpose_5/ShapeShape0vae/model/leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0vae/model/conv2d_transpose_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/model/conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/model/conv2d_transpose_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/model/conv2d_transpose_5/strided_sliceStridedSlice+vae/model/conv2d_transpose_5/Shape:output:09vae/model/conv2d_transpose_5/strided_slice/stack:output:0;vae/model/conv2d_transpose_5/strided_slice/stack_1:output:0;vae/model/conv2d_transpose_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/model/conv2d_transpose_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@f
$vae/model/conv2d_transpose_5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@f
$vae/model/conv2d_transpose_5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
"vae/model/conv2d_transpose_5/stackPack3vae/model/conv2d_transpose_5/strided_slice:output:0-vae/model/conv2d_transpose_5/stack/1:output:0-vae/model/conv2d_transpose_5/stack/2:output:0-vae/model/conv2d_transpose_5/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/model/conv2d_transpose_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/model/conv2d_transpose_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/model/conv2d_transpose_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/model/conv2d_transpose_5/strided_slice_1StridedSlice+vae/model/conv2d_transpose_5/stack:output:0;vae/model/conv2d_transpose_5/strided_slice_1/stack:output:0=vae/model/conv2d_transpose_5/strided_slice_1/stack_1:output:0=vae/model/conv2d_transpose_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpEvae_model_conv2d_transpose_5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0�
-vae/model/conv2d_transpose_5/conv2d_transposeConv2DBackpropInput+vae/model/conv2d_transpose_5/stack:output:0Dvae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOp:value:00vae/model/leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
3vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOp<vae_model_conv2d_transpose_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$vae/model/conv2d_transpose_5/BiasAddBiasAdd6vae/model/conv2d_transpose_5/conv2d_transpose:output:0;vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
$vae/model/conv2d_transpose_5/SigmoidSigmoid-vae/model/conv2d_transpose_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@s
IdentityIdentity#vae/encoder/z_mean/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_1Identity&vae/encoder/z_log_var/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������

Identity_2Identity(vae/model/conv2d_transpose_5/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp@^vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOpB^vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1/^vae/encoder/batch_normalization/ReadVariableOp1^vae/encoder/batch_normalization/ReadVariableOp_1B^vae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpD^vae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_11^vae/encoder/batch_normalization_1/ReadVariableOp3^vae/encoder/batch_normalization_1/ReadVariableOp_1B^vae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpD^vae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_11^vae/encoder/batch_normalization_2/ReadVariableOp3^vae/encoder/batch_normalization_2/ReadVariableOp_1B^vae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpD^vae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_11^vae/encoder/batch_normalization_3/ReadVariableOp3^vae/encoder/batch_normalization_3/ReadVariableOp_1B^vae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpD^vae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_11^vae/encoder/batch_normalization_4/ReadVariableOp3^vae/encoder/batch_normalization_4/ReadVariableOp_1*^vae/encoder/conv2d/BiasAdd/ReadVariableOp)^vae/encoder/conv2d/Conv2D/ReadVariableOp,^vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_1/Conv2D/ReadVariableOp,^vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_2/Conv2D/ReadVariableOp,^vae/encoder/conv2d_3/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_3/Conv2D/ReadVariableOp,^vae/encoder/conv2d_4/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_4/Conv2D/ReadVariableOp-^vae/encoder/z_log_var/BiasAdd/ReadVariableOp,^vae/encoder/z_log_var/MatMul/ReadVariableOp*^vae/encoder/z_mean/BiasAdd/ReadVariableOp)^vae/encoder/z_mean/MatMul/ReadVariableOpA^vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOpC^vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_10^vae/model/batch_normalization_10/ReadVariableOp2^vae/model/batch_normalization_10/ReadVariableOp_19^vae/model/batch_normalization_5/batchnorm/ReadVariableOp;^vae/model/batch_normalization_5/batchnorm/ReadVariableOp_1;^vae/model/batch_normalization_5/batchnorm/ReadVariableOp_2=^vae/model/batch_normalization_5/batchnorm/mul/ReadVariableOp@^vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpB^vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/^vae/model/batch_normalization_6/ReadVariableOp1^vae/model/batch_normalization_6/ReadVariableOp_1@^vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpB^vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1/^vae/model/batch_normalization_7/ReadVariableOp1^vae/model/batch_normalization_7/ReadVariableOp_1@^vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOpB^vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/^vae/model/batch_normalization_8/ReadVariableOp1^vae/model/batch_normalization_8/ReadVariableOp_1@^vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOpB^vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1/^vae/model/batch_normalization_9/ReadVariableOp1^vae/model/batch_normalization_9/ReadVariableOp_12^vae/model/conv2d_transpose/BiasAdd/ReadVariableOp;^vae/model/conv2d_transpose/conv2d_transpose/ReadVariableOp4^vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOp=^vae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp4^vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOp=^vae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp4^vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOp=^vae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOp4^vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOp=^vae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp4^vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOp=^vae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOp'^vae/model/dense/BiasAdd/ReadVariableOp&^vae/model/dense/MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Avae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Avae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
?vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp?vae/encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp2d
0vae/encoder/batch_normalization/ReadVariableOp_10vae/encoder/batch_normalization/ReadVariableOp_12`
.vae/encoder/batch_normalization/ReadVariableOp.vae/encoder/batch_normalization/ReadVariableOp2�
Cvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Cvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Avae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpAvae/encoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2h
2vae/encoder/batch_normalization_1/ReadVariableOp_12vae/encoder/batch_normalization_1/ReadVariableOp_12d
0vae/encoder/batch_normalization_1/ReadVariableOp0vae/encoder/batch_normalization_1/ReadVariableOp2�
Cvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Cvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Avae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpAvae/encoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2h
2vae/encoder/batch_normalization_2/ReadVariableOp_12vae/encoder/batch_normalization_2/ReadVariableOp_12d
0vae/encoder/batch_normalization_2/ReadVariableOp0vae/encoder/batch_normalization_2/ReadVariableOp2�
Cvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Cvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12�
Avae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpAvae/encoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2h
2vae/encoder/batch_normalization_3/ReadVariableOp_12vae/encoder/batch_normalization_3/ReadVariableOp_12d
0vae/encoder/batch_normalization_3/ReadVariableOp0vae/encoder/batch_normalization_3/ReadVariableOp2�
Cvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Cvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12�
Avae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpAvae/encoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2h
2vae/encoder/batch_normalization_4/ReadVariableOp_12vae/encoder/batch_normalization_4/ReadVariableOp_12d
0vae/encoder/batch_normalization_4/ReadVariableOp0vae/encoder/batch_normalization_4/ReadVariableOp2V
)vae/encoder/conv2d/BiasAdd/ReadVariableOp)vae/encoder/conv2d/BiasAdd/ReadVariableOp2T
(vae/encoder/conv2d/Conv2D/ReadVariableOp(vae/encoder/conv2d/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_1/Conv2D/ReadVariableOp*vae/encoder/conv2d_1/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_2/Conv2D/ReadVariableOp*vae/encoder/conv2d_2/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_3/BiasAdd/ReadVariableOp+vae/encoder/conv2d_3/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_3/Conv2D/ReadVariableOp*vae/encoder/conv2d_3/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_4/BiasAdd/ReadVariableOp+vae/encoder/conv2d_4/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_4/Conv2D/ReadVariableOp*vae/encoder/conv2d_4/Conv2D/ReadVariableOp2\
,vae/encoder/z_log_var/BiasAdd/ReadVariableOp,vae/encoder/z_log_var/BiasAdd/ReadVariableOp2Z
+vae/encoder/z_log_var/MatMul/ReadVariableOp+vae/encoder/z_log_var/MatMul/ReadVariableOp2V
)vae/encoder/z_mean/BiasAdd/ReadVariableOp)vae/encoder/z_mean/BiasAdd/ReadVariableOp2T
(vae/encoder/z_mean/MatMul/ReadVariableOp(vae/encoder/z_mean/MatMul/ReadVariableOp2�
Bvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Bvae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12�
@vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp@vae/model/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2f
1vae/model/batch_normalization_10/ReadVariableOp_11vae/model/batch_normalization_10/ReadVariableOp_12b
/vae/model/batch_normalization_10/ReadVariableOp/vae/model/batch_normalization_10/ReadVariableOp2x
:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_1:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_12x
:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_2:vae/model/batch_normalization_5/batchnorm/ReadVariableOp_22t
8vae/model/batch_normalization_5/batchnorm/ReadVariableOp8vae/model/batch_normalization_5/batchnorm/ReadVariableOp2|
<vae/model/batch_normalization_5/batchnorm/mul/ReadVariableOp<vae/model/batch_normalization_5/batchnorm/mul/ReadVariableOp2�
Avae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Avae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12�
?vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?vae/model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2d
0vae/model/batch_normalization_6/ReadVariableOp_10vae/model/batch_normalization_6/ReadVariableOp_12`
.vae/model/batch_normalization_6/ReadVariableOp.vae/model/batch_normalization_6/ReadVariableOp2�
Avae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Avae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12�
?vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?vae/model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2d
0vae/model/batch_normalization_7/ReadVariableOp_10vae/model/batch_normalization_7/ReadVariableOp_12`
.vae/model/batch_normalization_7/ReadVariableOp.vae/model/batch_normalization_7/ReadVariableOp2�
Avae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Avae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12�
?vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?vae/model/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2d
0vae/model/batch_normalization_8/ReadVariableOp_10vae/model/batch_normalization_8/ReadVariableOp_12`
.vae/model/batch_normalization_8/ReadVariableOp.vae/model/batch_normalization_8/ReadVariableOp2�
Avae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Avae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12�
?vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?vae/model/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2d
0vae/model/batch_normalization_9/ReadVariableOp_10vae/model/batch_normalization_9/ReadVariableOp_12`
.vae/model/batch_normalization_9/ReadVariableOp.vae/model/batch_normalization_9/ReadVariableOp2f
1vae/model/conv2d_transpose/BiasAdd/ReadVariableOp1vae/model/conv2d_transpose/BiasAdd/ReadVariableOp2x
:vae/model/conv2d_transpose/conv2d_transpose/ReadVariableOp:vae/model/conv2d_transpose/conv2d_transpose/ReadVariableOp2j
3vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOp3vae/model/conv2d_transpose_1/BiasAdd/ReadVariableOp2|
<vae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp<vae/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2j
3vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOp3vae/model/conv2d_transpose_2/BiasAdd/ReadVariableOp2|
<vae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp<vae/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2j
3vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOp3vae/model/conv2d_transpose_3/BiasAdd/ReadVariableOp2|
<vae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOp<vae/model/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2j
3vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOp3vae/model/conv2d_transpose_4/BiasAdd/ReadVariableOp2|
<vae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp<vae/model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2j
3vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOp3vae/model/conv2d_transpose_5/BiasAdd/ReadVariableOp2|
<vae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOp<vae/model/conv2d_transpose_5/conv2d_transpose/ReadVariableOp2P
&vae/model/dense/BiasAdd/ReadVariableOp&vae/model/dense/BiasAdd/ReadVariableOp2N
%vae/model/dense/MatMul/ReadVariableOp%vae/model/dense/MatMul/ReadVariableOp:(H$
"
_user_specified_name
resource:(G$
"
_user_specified_name
resource:(F$
"
_user_specified_name
resource:(E$
"
_user_specified_name
resource:(D$
"
_user_specified_name
resource:(C$
"
_user_specified_name
resource:(B$
"
_user_specified_name
resource:(A$
"
_user_specified_name
resource:(@$
"
_user_specified_name
resource:(?$
"
_user_specified_name
resource:(>$
"
_user_specified_name
resource:(=$
"
_user_specified_name
resource:(<$
"
_user_specified_name
resource:(;$
"
_user_specified_name
resource:(:$
"
_user_specified_name
resource:(9$
"
_user_specified_name
resource:(8$
"
_user_specified_name
resource:(7$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
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
resource:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�
e
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_216395

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
c
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_215111

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������  @*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�"
�
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_216280

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
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
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
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
:@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
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
�!
�
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_218229

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218158

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_z_mean_layer_call_and_return_conditional_losses_218008

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215054

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_216320

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%���>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_z_log_var_layer_call_and_return_conditional_losses_215264

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�@
�
?__inference_vae_layer_call_and_return_conditional_losses_216903
input_1(
encoder_216752:@
encoder_216754:@
encoder_216756:@
encoder_216758:@
encoder_216760:@
encoder_216762:@(
encoder_216764:@@
encoder_216766:@
encoder_216768:@
encoder_216770:@
encoder_216772:@
encoder_216774:@(
encoder_216776:@@
encoder_216778:@
encoder_216780:@
encoder_216782:@
encoder_216784:@
encoder_216786:@(
encoder_216788:@@
encoder_216790:@
encoder_216792:@
encoder_216794:@
encoder_216796:@
encoder_216798:@(
encoder_216800:@@
encoder_216802:@
encoder_216804:@
encoder_216806:@
encoder_216808:@
encoder_216810:@"
encoder_216812:
��
encoder_216814:	�"
encoder_216816:
��
encoder_216818:	� 
model_216823:
��
model_216825:	�
model_216827:	�
model_216829:	�
model_216831:	�
model_216833:	�&
model_216835:@@
model_216837:@
model_216839:@
model_216841:@
model_216843:@
model_216845:@&
model_216847:@@
model_216849:@
model_216851:@
model_216853:@
model_216855:@
model_216857:@&
model_216859:@@
model_216861:@
model_216863:@
model_216865:@
model_216867:@
model_216869:@&
model_216871:@@
model_216873:@
model_216875:@
model_216877:@
model_216879:@
model_216881:@&
model_216883:@@
model_216885:@
model_216887:@
model_216889:@
model_216891:@
model_216893:@&
model_216895:@
model_216897:
identity

identity_1

identity_2��encoder/StatefulPartitionedCall�model/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_216752encoder_216754encoder_216756encoder_216758encoder_216760encoder_216762encoder_216764encoder_216766encoder_216768encoder_216770encoder_216772encoder_216774encoder_216776encoder_216778encoder_216780encoder_216782encoder_216784encoder_216786encoder_216788encoder_216790encoder_216792encoder_216794encoder_216796encoder_216798encoder_216800encoder_216802encoder_216804encoder_216806encoder_216808encoder_216810encoder_216812encoder_216814encoder_216816encoder_216818*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_215300�
model/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:2model_216823model_216825model_216827model_216829model_216831model_216833model_216835model_216837model_216839model_216841model_216843model_216845model_216847model_216849model_216851model_216853model_216855model_216857model_216859model_216861model_216863model_216865model_216867model_216869model_216871model_216873model_216875model_216877model_216879model_216881model_216883model_216885model_216887model_216889model_216891model_216893model_216895model_216897*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*<
_read_only_resource_inputs
	
 !"%&*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_216443x
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������z

Identity_1Identity(encoder/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������

Identity_2Identity&model/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@d
NoOpNoOp ^encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:&H"
 
_user_specified_name216897:&G"
 
_user_specified_name216895:&F"
 
_user_specified_name216893:&E"
 
_user_specified_name216891:&D"
 
_user_specified_name216889:&C"
 
_user_specified_name216887:&B"
 
_user_specified_name216885:&A"
 
_user_specified_name216883:&@"
 
_user_specified_name216881:&?"
 
_user_specified_name216879:&>"
 
_user_specified_name216877:&="
 
_user_specified_name216875:&<"
 
_user_specified_name216873:&;"
 
_user_specified_name216871:&:"
 
_user_specified_name216869:&9"
 
_user_specified_name216867:&8"
 
_user_specified_name216865:&7"
 
_user_specified_name216863:&6"
 
_user_specified_name216861:&5"
 
_user_specified_name216859:&4"
 
_user_specified_name216857:&3"
 
_user_specified_name216855:&2"
 
_user_specified_name216853:&1"
 
_user_specified_name216851:&0"
 
_user_specified_name216849:&/"
 
_user_specified_name216847:&."
 
_user_specified_name216845:&-"
 
_user_specified_name216843:&,"
 
_user_specified_name216841:&+"
 
_user_specified_name216839:&*"
 
_user_specified_name216837:&)"
 
_user_specified_name216835:&("
 
_user_specified_name216833:&'"
 
_user_specified_name216831:&&"
 
_user_specified_name216829:&%"
 
_user_specified_name216827:&$"
 
_user_specified_name216825:&#"
 
_user_specified_name216823:&""
 
_user_specified_name216818:&!"
 
_user_specified_name216816:& "
 
_user_specified_name216814:&"
 
_user_specified_name216812:&"
 
_user_specified_name216810:&"
 
_user_specified_name216808:&"
 
_user_specified_name216806:&"
 
_user_specified_name216804:&"
 
_user_specified_name216802:&"
 
_user_specified_name216800:&"
 
_user_specified_name216798:&"
 
_user_specified_name216796:&"
 
_user_specified_name216794:&"
 
_user_specified_name216792:&"
 
_user_specified_name216790:&"
 
_user_specified_name216788:&"
 
_user_specified_name216786:&"
 
_user_specified_name216784:&"
 
_user_specified_name216782:&"
 
_user_specified_name216780:&"
 
_user_specified_name216778:&"
 
_user_specified_name216776:&"
 
_user_specified_name216774:&"
 
_user_specified_name216772:&
"
 
_user_specified_name216770:&	"
 
_user_specified_name216768:&"
 
_user_specified_name216766:&"
 
_user_specified_name216764:&"
 
_user_specified_name216762:&"
 
_user_specified_name216760:&"
 
_user_specified_name216758:&"
 
_user_specified_name216756:&"
 
_user_specified_name216754:&"
 
_user_specified_name216752:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�

�
6__inference_batch_normalization_8_layer_call_fn_218470

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_215994�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218466:&"
 
_user_specified_name218464:&"
 
_user_specified_name218462:&"
 
_user_specified_name218460:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_217724

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
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
:���������@
 
_user_specified_nameinputs
�
_
C__inference_reshape_layer_call_and_return_conditional_losses_216335

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215680

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_217633

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
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
:���������  @
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218501

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_5_layer_call_fn_218091

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215680p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218087:&"
 
_user_specified_name218085:&"
 
_user_specified_name218083:&"
 
_user_specified_name218081:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_216415

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������  @*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
H
,__inference_leaky_re_lu_layer_call_fn_217609

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_215111h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217604

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
q
D__inference_sampling_layer_call_and_return_conditional_losses_215295

inputs
inputs_1
identity�I
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
shrink_axis_maskK
Shape_1Shapeinputs*
T0*
_output_shapes
::��_
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
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed2���*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:����������}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:����������F
ExpExpmul:z:0*
T0*(
_output_shapes
:����������[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:����������R
addAddV2inputs	mul_1:z:0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214788

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�&
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218138

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�8
�
$__inference_vae_layer_call_fn_217363
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:	�

unknown_36:	�

unknown_37:	�

unknown_38:	�$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@$

unknown_45:@@

unknown_46:@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@

unknown_56:@$

unknown_57:@@

unknown_58:@

unknown_59:@

unknown_60:@

unknown_61:@

unknown_62:@$

unknown_63:@@

unknown_64:@

unknown_65:@

unknown_66:@

unknown_67:@

unknown_68:@$

unknown_69:@

unknown_70:
identity

identity_1

identity_2��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:����������:����������:���������@@*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_217057p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&H"
 
_user_specified_name217355:&G"
 
_user_specified_name217353:&F"
 
_user_specified_name217351:&E"
 
_user_specified_name217349:&D"
 
_user_specified_name217347:&C"
 
_user_specified_name217345:&B"
 
_user_specified_name217343:&A"
 
_user_specified_name217341:&@"
 
_user_specified_name217339:&?"
 
_user_specified_name217337:&>"
 
_user_specified_name217335:&="
 
_user_specified_name217333:&<"
 
_user_specified_name217331:&;"
 
_user_specified_name217329:&:"
 
_user_specified_name217327:&9"
 
_user_specified_name217325:&8"
 
_user_specified_name217323:&7"
 
_user_specified_name217321:&6"
 
_user_specified_name217319:&5"
 
_user_specified_name217317:&4"
 
_user_specified_name217315:&3"
 
_user_specified_name217313:&2"
 
_user_specified_name217311:&1"
 
_user_specified_name217309:&0"
 
_user_specified_name217307:&/"
 
_user_specified_name217305:&."
 
_user_specified_name217303:&-"
 
_user_specified_name217301:&,"
 
_user_specified_name217299:&+"
 
_user_specified_name217297:&*"
 
_user_specified_name217295:&)"
 
_user_specified_name217293:&("
 
_user_specified_name217291:&'"
 
_user_specified_name217289:&&"
 
_user_specified_name217287:&%"
 
_user_specified_name217285:&$"
 
_user_specified_name217283:&#"
 
_user_specified_name217281:&""
 
_user_specified_name217279:&!"
 
_user_specified_name217277:& "
 
_user_specified_name217275:&"
 
_user_specified_name217273:&"
 
_user_specified_name217271:&"
 
_user_specified_name217269:&"
 
_user_specified_name217267:&"
 
_user_specified_name217265:&"
 
_user_specified_name217263:&"
 
_user_specified_name217261:&"
 
_user_specified_name217259:&"
 
_user_specified_name217257:&"
 
_user_specified_name217255:&"
 
_user_specified_name217253:&"
 
_user_specified_name217251:&"
 
_user_specified_name217249:&"
 
_user_specified_name217247:&"
 
_user_specified_name217245:&"
 
_user_specified_name217243:&"
 
_user_specified_name217241:&"
 
_user_specified_name217239:&"
 
_user_specified_name217237:&"
 
_user_specified_name217235:&"
 
_user_specified_name217233:&
"
 
_user_specified_name217231:&	"
 
_user_specified_name217229:&"
 
_user_specified_name217227:&"
 
_user_specified_name217225:&"
 
_user_specified_name217223:&"
 
_user_specified_name217221:&"
 
_user_specified_name217219:&"
 
_user_specified_name217217:&"
 
_user_specified_name217215:&"
 
_user_specified_name217213:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�

�
6__inference_batch_normalization_7_layer_call_fn_218369

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215908�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218365:&"
 
_user_specified_name218363:&"
 
_user_specified_name218361:&"
 
_user_specified_name218359:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_217989

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_217705

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_3_layer_call_fn_217882

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_215201h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_218529

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�8
�
$__inference_signature_wrapper_217523
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:	�

unknown_36:	�

unknown_37:	�

unknown_38:	�$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@$

unknown_45:@@

unknown_46:@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@

unknown_56:@$

unknown_57:@@

unknown_58:@

unknown_59:@

unknown_60:@

unknown_61:@

unknown_62:@$

unknown_63:@@

unknown_64:@

unknown_65:@

unknown_66:@

unknown_67:@

unknown_68:@$

unknown_69:@

unknown_70:
identity

identity_1

identity_2��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:����������:����������:���������@@*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_214770p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&H"
 
_user_specified_name217515:&G"
 
_user_specified_name217513:&F"
 
_user_specified_name217511:&E"
 
_user_specified_name217509:&D"
 
_user_specified_name217507:&C"
 
_user_specified_name217505:&B"
 
_user_specified_name217503:&A"
 
_user_specified_name217501:&@"
 
_user_specified_name217499:&?"
 
_user_specified_name217497:&>"
 
_user_specified_name217495:&="
 
_user_specified_name217493:&<"
 
_user_specified_name217491:&;"
 
_user_specified_name217489:&:"
 
_user_specified_name217487:&9"
 
_user_specified_name217485:&8"
 
_user_specified_name217483:&7"
 
_user_specified_name217481:&6"
 
_user_specified_name217479:&5"
 
_user_specified_name217477:&4"
 
_user_specified_name217475:&3"
 
_user_specified_name217473:&2"
 
_user_specified_name217471:&1"
 
_user_specified_name217469:&0"
 
_user_specified_name217467:&/"
 
_user_specified_name217465:&."
 
_user_specified_name217463:&-"
 
_user_specified_name217461:&,"
 
_user_specified_name217459:&+"
 
_user_specified_name217457:&*"
 
_user_specified_name217455:&)"
 
_user_specified_name217453:&("
 
_user_specified_name217451:&'"
 
_user_specified_name217449:&&"
 
_user_specified_name217447:&%"
 
_user_specified_name217445:&$"
 
_user_specified_name217443:&#"
 
_user_specified_name217441:&""
 
_user_specified_name217439:&!"
 
_user_specified_name217437:& "
 
_user_specified_name217435:&"
 
_user_specified_name217433:&"
 
_user_specified_name217431:&"
 
_user_specified_name217429:&"
 
_user_specified_name217427:&"
 
_user_specified_name217425:&"
 
_user_specified_name217423:&"
 
_user_specified_name217421:&"
 
_user_specified_name217419:&"
 
_user_specified_name217417:&"
 
_user_specified_name217415:&"
 
_user_specified_name217413:&"
 
_user_specified_name217411:&"
 
_user_specified_name217409:&"
 
_user_specified_name217407:&"
 
_user_specified_name217405:&"
 
_user_specified_name217403:&"
 
_user_specified_name217401:&"
 
_user_specified_name217399:&"
 
_user_specified_name217397:&"
 
_user_specified_name217395:&"
 
_user_specified_name217393:&
"
 
_user_specified_name217391:&	"
 
_user_specified_name217389:&"
 
_user_specified_name217387:&"
 
_user_specified_name217385:&"
 
_user_specified_name217383:&"
 
_user_specified_name217381:&"
 
_user_specified_name217379:&"
 
_user_specified_name217377:&"
 
_user_specified_name217375:&"
 
_user_specified_name217373:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�
f
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_218757

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@@@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214868

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_217887

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_3_layer_call_fn_217828

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214974�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217824:&"
 
_user_specified_name217822:&"
 
_user_specified_name217820:&"
 
_user_specified_name217818:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218405

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�k
�
C__inference_encoder_layer_call_and_return_conditional_losses_215300
encoder_input'
conv2d_215093:@
conv2d_215095:@(
batch_normalization_215098:@(
batch_normalization_215100:@(
batch_normalization_215102:@(
batch_normalization_215104:@)
conv2d_1_215123:@@
conv2d_1_215125:@*
batch_normalization_1_215128:@*
batch_normalization_1_215130:@*
batch_normalization_1_215132:@*
batch_normalization_1_215134:@)
conv2d_2_215153:@@
conv2d_2_215155:@*
batch_normalization_2_215158:@*
batch_normalization_2_215160:@*
batch_normalization_2_215162:@*
batch_normalization_2_215164:@)
conv2d_3_215183:@@
conv2d_3_215185:@*
batch_normalization_3_215188:@*
batch_normalization_3_215190:@*
batch_normalization_3_215192:@*
batch_normalization_3_215194:@)
conv2d_4_215213:@@
conv2d_4_215215:@*
batch_normalization_4_215218:@*
batch_normalization_4_215220:@*
batch_normalization_4_215222:@*
batch_normalization_4_215224:@!
z_mean_215250:
��
z_mean_215252:	�$
z_log_var_215265:
��
z_log_var_215267:	�
identity

identity_1

identity_2��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� sampling/StatefulPartitionedCall�!z_log_var/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_215093conv2d_215095*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_215092�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_215098batch_normalization_215100batch_normalization_215102batch_normalization_215104*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214788�
leaky_re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_215111�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv2d_1_215123conv2d_1_215125*
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
GPU 2J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_215122�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_215128batch_normalization_1_215130batch_normalization_1_215132batch_normalization_1_215134*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214850�
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_215141�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0conv2d_2_215153conv2d_2_215155*
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
GPU 2J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_215152�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_215158batch_normalization_2_215160batch_normalization_2_215162batch_normalization_2_215164*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214912�
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_215171�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv2d_3_215183conv2d_3_215185*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_215182�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_215188batch_normalization_3_215190batch_normalization_3_215192batch_normalization_3_215194*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214974�
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_215201�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv2d_4_215213conv2d_4_215215*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_215212�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_215218batch_normalization_4_215220batch_normalization_4_215222batch_normalization_4_215224*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215036�
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_215231�
flatten/PartitionedCallPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_215238�
z_mean/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0z_mean_215250z_mean_215252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_215249�
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0z_log_var_215265z_log_var_215267*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_215264�
 sampling/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sampling_layer_call_and_return_conditional_losses_215295w
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������|

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������{

Identity_2Identity)sampling/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^sampling/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 sampling/StatefulPartitionedCall sampling/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:&""
 
_user_specified_name215267:&!"
 
_user_specified_name215265:& "
 
_user_specified_name215252:&"
 
_user_specified_name215250:&"
 
_user_specified_name215224:&"
 
_user_specified_name215222:&"
 
_user_specified_name215220:&"
 
_user_specified_name215218:&"
 
_user_specified_name215215:&"
 
_user_specified_name215213:&"
 
_user_specified_name215194:&"
 
_user_specified_name215192:&"
 
_user_specified_name215190:&"
 
_user_specified_name215188:&"
 
_user_specified_name215185:&"
 
_user_specified_name215183:&"
 
_user_specified_name215164:&"
 
_user_specified_name215162:&"
 
_user_specified_name215160:&"
 
_user_specified_name215158:&"
 
_user_specified_name215155:&"
 
_user_specified_name215153:&"
 
_user_specified_name215134:&"
 
_user_specified_name215132:&
"
 
_user_specified_name215130:&	"
 
_user_specified_name215128:&"
 
_user_specified_name215125:&"
 
_user_specified_name215123:&"
 
_user_specified_name215104:&"
 
_user_specified_name215102:&"
 
_user_specified_name215100:&"
 
_user_specified_name215098:&"
 
_user_specified_name215095:&"
 
_user_specified_name215093:^ Z
/
_output_shapes
:���������@@
'
_user_specified_nameencoder_input
�
�
3__inference_conv2d_transpose_5_layer_call_fn_218766

inputs!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_216280�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218762:&"
 
_user_specified_name218760:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_8_layer_call_fn_218524

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_216395h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_1_layer_call_fn_218310

inputs!
unknown:@@
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_215863�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218306:&"
 
_user_specified_name218304:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_4_layer_call_fn_217919

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215036�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217915:&"
 
_user_specified_name217913:&"
 
_user_specified_name217911:&"
 
_user_specified_name217909:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217695

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_217815

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
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
�
�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216220

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218291

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217786

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_215152

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
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
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
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
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_214974

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_1_layer_call_fn_217646

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214850�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217642:&"
 
_user_specified_name217640:&"
 
_user_specified_name217638:&"
 
_user_specified_name217636:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214850

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
4__inference_batch_normalization_layer_call_fn_217568

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214806�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217564:&"
 
_user_specified_name217562:&"
 
_user_specified_name217560:&"
 
_user_specified_name217558:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_3_layer_call_fn_218538

inputs!
unknown:@@
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_216071�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218534:&"
 
_user_specified_name218532:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_215036

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_215470
encoder_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_215300p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&""
 
_user_specified_name215462:&!"
 
_user_specified_name215460:& "
 
_user_specified_name215458:&"
 
_user_specified_name215456:&"
 
_user_specified_name215454:&"
 
_user_specified_name215452:&"
 
_user_specified_name215450:&"
 
_user_specified_name215448:&"
 
_user_specified_name215446:&"
 
_user_specified_name215444:&"
 
_user_specified_name215442:&"
 
_user_specified_name215440:&"
 
_user_specified_name215438:&"
 
_user_specified_name215436:&"
 
_user_specified_name215434:&"
 
_user_specified_name215432:&"
 
_user_specified_name215430:&"
 
_user_specified_name215428:&"
 
_user_specified_name215426:&"
 
_user_specified_name215424:&"
 
_user_specified_name215422:&"
 
_user_specified_name215420:&"
 
_user_specified_name215418:&"
 
_user_specified_name215416:&
"
 
_user_specified_name215414:&	"
 
_user_specified_name215412:&"
 
_user_specified_name215410:&"
 
_user_specified_name215408:&"
 
_user_specified_name215406:&"
 
_user_specified_name215404:&"
 
_user_specified_name215402:&"
 
_user_specified_name215400:&"
 
_user_specified_name215398:&"
 
_user_specified_name215396:^ Z
/
_output_shapes
:���������@@
'
_user_specified_nameencoder_input
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214930

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_2_layer_call_fn_217737

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214912�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217733:&"
 
_user_specified_name217731:&"
 
_user_specified_name217729:&"
 
_user_specified_name217727:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�	
&__inference_model_layer_call_fn_216705
decoder_input
unknown:
��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@$

unknown_35:@

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_216543w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&&"
 
_user_specified_name216701:&%"
 
_user_specified_name216699:&$"
 
_user_specified_name216697:&#"
 
_user_specified_name216695:&""
 
_user_specified_name216693:&!"
 
_user_specified_name216691:& "
 
_user_specified_name216689:&"
 
_user_specified_name216687:&"
 
_user_specified_name216685:&"
 
_user_specified_name216683:&"
 
_user_specified_name216681:&"
 
_user_specified_name216679:&"
 
_user_specified_name216677:&"
 
_user_specified_name216675:&"
 
_user_specified_name216673:&"
 
_user_specified_name216671:&"
 
_user_specified_name216669:&"
 
_user_specified_name216667:&"
 
_user_specified_name216665:&"
 
_user_specified_name216663:&"
 
_user_specified_name216661:&"
 
_user_specified_name216659:&"
 
_user_specified_name216657:&"
 
_user_specified_name216655:&"
 
_user_specified_name216653:&"
 
_user_specified_name216651:&"
 
_user_specified_name216649:&"
 
_user_specified_name216647:&
"
 
_user_specified_name216645:&	"
 
_user_specified_name216643:&"
 
_user_specified_name216641:&"
 
_user_specified_name216639:&"
 
_user_specified_name216637:&"
 
_user_specified_name216635:&"
 
_user_specified_name216633:&"
 
_user_specified_name216631:&"
 
_user_specified_name216629:&"
 
_user_specified_name216627:W S
(
_output_shapes
:����������
'
_user_specified_namedecoder_input
�

�
7__inference_batch_normalization_10_layer_call_fn_218698

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216202�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218694:&"
 
_user_specified_name218692:&"
 
_user_specified_name218690:&"
 
_user_specified_name218688:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_9_layer_call_fn_218597

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216116�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218593:&"
 
_user_specified_name218591:&"
 
_user_specified_name218589:&"
 
_user_specified_name218587:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_216355

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215700

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_216375

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215890

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217877

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
'__inference_conv2d_layer_call_fn_217532

inputs!
unknown:@
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
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_215092w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217528:&"
 
_user_specified_name217526:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
D
(__inference_flatten_layer_call_fn_217983

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
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_215238a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�	
&__inference_model_layer_call_fn_216624
decoder_input
unknown:
��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@$

unknown_35:@

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*<
_read_only_resource_inputs
	
 !"%&*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_216443w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&&"
 
_user_specified_name216620:&%"
 
_user_specified_name216618:&$"
 
_user_specified_name216616:&#"
 
_user_specified_name216614:&""
 
_user_specified_name216612:&!"
 
_user_specified_name216610:& "
 
_user_specified_name216608:&"
 
_user_specified_name216606:&"
 
_user_specified_name216604:&"
 
_user_specified_name216602:&"
 
_user_specified_name216600:&"
 
_user_specified_name216598:&"
 
_user_specified_name216596:&"
 
_user_specified_name216594:&"
 
_user_specified_name216592:&"
 
_user_specified_name216590:&"
 
_user_specified_name216588:&"
 
_user_specified_name216586:&"
 
_user_specified_name216584:&"
 
_user_specified_name216582:&"
 
_user_specified_name216580:&"
 
_user_specified_name216578:&"
 
_user_specified_name216576:&"
 
_user_specified_name216574:&"
 
_user_specified_name216572:&"
 
_user_specified_name216570:&"
 
_user_specified_name216568:&"
 
_user_specified_name216566:&
"
 
_user_specified_name216564:&	"
 
_user_specified_name216562:&"
 
_user_specified_name216560:&"
 
_user_specified_name216558:&"
 
_user_specified_name216556:&"
 
_user_specified_name216554:&"
 
_user_specified_name216552:&"
 
_user_specified_name216550:&"
 
_user_specified_name216548:&"
 
_user_specified_name216546:W S
(
_output_shapes
:����������
'
_user_specified_namedecoder_input
�
e
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_215231

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_5_layer_call_fn_218163

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
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_216320a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_2_layer_call_fn_217714

inputs!
unknown:@@
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
GPU 2J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_215152w
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
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217710:&"
 
_user_specified_name217708:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215804

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_1_layer_call_fn_217659

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_214868�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217655:&"
 
_user_specified_name217653:&"
 
_user_specified_name217651:&"
 
_user_specified_name217649:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_215863

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�

�
4__inference_batch_normalization_layer_call_fn_217555

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_214788�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217551:&"
 
_user_specified_name217549:&"
 
_user_specified_name217547:&"
 
_user_specified_name217545:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_10_layer_call_fn_218711

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216220�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218707:&"
 
_user_specified_name218705:&"
 
_user_specified_name218703:&"
 
_user_specified_name218701:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_215547
encoder_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_215393p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&""
 
_user_specified_name215539:&!"
 
_user_specified_name215537:& "
 
_user_specified_name215535:&"
 
_user_specified_name215533:&"
 
_user_specified_name215531:&"
 
_user_specified_name215529:&"
 
_user_specified_name215527:&"
 
_user_specified_name215525:&"
 
_user_specified_name215523:&"
 
_user_specified_name215521:&"
 
_user_specified_name215519:&"
 
_user_specified_name215517:&"
 
_user_specified_name215515:&"
 
_user_specified_name215513:&"
 
_user_specified_name215511:&"
 
_user_specified_name215509:&"
 
_user_specified_name215507:&"
 
_user_specified_name215505:&"
 
_user_specified_name215503:&"
 
_user_specified_name215501:&"
 
_user_specified_name215499:&"
 
_user_specified_name215497:&"
 
_user_specified_name215495:&"
 
_user_specified_name215493:&
"
 
_user_specified_name215491:&	"
 
_user_specified_name215489:&"
 
_user_specified_name215487:&"
 
_user_specified_name215485:&"
 
_user_specified_name215483:&"
 
_user_specified_name215481:&"
 
_user_specified_name215479:&"
 
_user_specified_name215477:&"
 
_user_specified_name215475:&"
 
_user_specified_name215473:^ Z
/
_output_shapes
:���������@@
'
_user_specified_nameencoder_input
�!
�
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_218685

inputsB
(conv2d_transpose_readvariableop_resource:@@-
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
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
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
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@]
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
�8
�
$__inference_vae_layer_call_fn_217210
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:	�

unknown_36:	�

unknown_37:	�

unknown_38:	�$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@$

unknown_45:@@

unknown_46:@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@

unknown_56:@$

unknown_57:@@

unknown_58:@

unknown_59:@

unknown_60:@

unknown_61:@

unknown_62:@$

unknown_63:@@

unknown_64:@

unknown_65:@

unknown_66:@

unknown_67:@

unknown_68:@$

unknown_69:@

unknown_70:
identity

identity_1

identity_2��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:����������:����������:���������@@*T
_read_only_resource_inputs6
42	
 !"#$'()*+,/0125678;<=>ABCDGH*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_vae_layer_call_and_return_conditional_losses_216903p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&H"
 
_user_specified_name217202:&G"
 
_user_specified_name217200:&F"
 
_user_specified_name217198:&E"
 
_user_specified_name217196:&D"
 
_user_specified_name217194:&C"
 
_user_specified_name217192:&B"
 
_user_specified_name217190:&A"
 
_user_specified_name217188:&@"
 
_user_specified_name217186:&?"
 
_user_specified_name217184:&>"
 
_user_specified_name217182:&="
 
_user_specified_name217180:&<"
 
_user_specified_name217178:&;"
 
_user_specified_name217176:&:"
 
_user_specified_name217174:&9"
 
_user_specified_name217172:&8"
 
_user_specified_name217170:&7"
 
_user_specified_name217168:&6"
 
_user_specified_name217166:&5"
 
_user_specified_name217164:&4"
 
_user_specified_name217162:&3"
 
_user_specified_name217160:&2"
 
_user_specified_name217158:&1"
 
_user_specified_name217156:&0"
 
_user_specified_name217154:&/"
 
_user_specified_name217152:&."
 
_user_specified_name217150:&-"
 
_user_specified_name217148:&,"
 
_user_specified_name217146:&+"
 
_user_specified_name217144:&*"
 
_user_specified_name217142:&)"
 
_user_specified_name217140:&("
 
_user_specified_name217138:&'"
 
_user_specified_name217136:&&"
 
_user_specified_name217134:&%"
 
_user_specified_name217132:&$"
 
_user_specified_name217130:&#"
 
_user_specified_name217128:&""
 
_user_specified_name217126:&!"
 
_user_specified_name217124:& "
 
_user_specified_name217122:&"
 
_user_specified_name217120:&"
 
_user_specified_name217118:&"
 
_user_specified_name217116:&"
 
_user_specified_name217114:&"
 
_user_specified_name217112:&"
 
_user_specified_name217110:&"
 
_user_specified_name217108:&"
 
_user_specified_name217106:&"
 
_user_specified_name217104:&"
 
_user_specified_name217102:&"
 
_user_specified_name217100:&"
 
_user_specified_name217098:&"
 
_user_specified_name217096:&"
 
_user_specified_name217094:&"
 
_user_specified_name217092:&"
 
_user_specified_name217090:&"
 
_user_specified_name217088:&"
 
_user_specified_name217086:&"
 
_user_specified_name217084:&"
 
_user_specified_name217082:&"
 
_user_specified_name217080:&
"
 
_user_specified_name217078:&	"
 
_user_specified_name217076:&"
 
_user_specified_name217074:&"
 
_user_specified_name217072:&"
 
_user_specified_name217070:&"
 
_user_specified_name217068:&"
 
_user_specified_name217066:&"
 
_user_specified_name217064:&"
 
_user_specified_name217062:&"
 
_user_specified_name217060:X T
/
_output_shapes
:���������@@
!
_user_specified_name	input_1
�

�
6__inference_batch_normalization_6_layer_call_fn_218242

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
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
GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215786�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218238:&"
 
_user_specified_name218236:&"
 
_user_specified_name218234:&"
 
_user_specified_name218232:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
r
)__inference_sampling_layer_call_fn_218033
inputs_0
inputs_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sampling_layer_call_and_return_conditional_losses_215295p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������22
StatefulPartitionedCallStatefulPartitionedCall:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs_0
�
f
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_216435

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@@@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218729

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_215201

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_215141

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������@*
alpha%���>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_8_layer_call_fn_218483

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_216012�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name218479:&"
 
_user_specified_name218477:&"
 
_user_specified_name218475:&"
 
_user_specified_name218473:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216202

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
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
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_2_layer_call_fn_217750

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_214930�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name217746:&"
 
_user_specified_name217744:&"
 
_user_specified_name217742:&"
 
_user_specified_name217740:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�u
�
A__inference_model_layer_call_and_return_conditional_losses_216543
decoder_input 
dense_216446:
��
dense_216448:	�+
batch_normalization_5_216451:	�+
batch_normalization_5_216453:	�+
batch_normalization_5_216455:	�+
batch_normalization_5_216457:	�1
conv2d_transpose_216462:@@%
conv2d_transpose_216464:@*
batch_normalization_6_216467:@*
batch_normalization_6_216469:@*
batch_normalization_6_216471:@*
batch_normalization_6_216473:@3
conv2d_transpose_1_216477:@@'
conv2d_transpose_1_216479:@*
batch_normalization_7_216482:@*
batch_normalization_7_216484:@*
batch_normalization_7_216486:@*
batch_normalization_7_216488:@3
conv2d_transpose_2_216492:@@'
conv2d_transpose_2_216494:@*
batch_normalization_8_216497:@*
batch_normalization_8_216499:@*
batch_normalization_8_216501:@*
batch_normalization_8_216503:@3
conv2d_transpose_3_216507:@@'
conv2d_transpose_3_216509:@*
batch_normalization_9_216512:@*
batch_normalization_9_216514:@*
batch_normalization_9_216516:@*
batch_normalization_9_216518:@3
conv2d_transpose_4_216522:@@'
conv2d_transpose_4_216524:@+
batch_normalization_10_216527:@+
batch_normalization_10_216529:@+
batch_normalization_10_216531:@+
batch_normalization_10_216533:@3
conv2d_transpose_5_216537:@'
conv2d_transpose_5_216539:
identity��.batch_normalization_10/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�*conv2d_transpose_3/StatefulPartitionedCall�*conv2d_transpose_4/StatefulPartitionedCall�*conv2d_transpose_5/StatefulPartitionedCall�dense/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_216446dense_216448*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_216301�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_5_216451batch_normalization_5_216453batch_normalization_5_216455batch_normalization_5_216457*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_215700�
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_216320�
reshape/PartitionedCallPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_216335�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_216462conv2d_transpose_216464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_215759�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_6_216467batch_normalization_6_216469batch_normalization_6_216471batch_normalization_6_216473*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_215804�
leaky_re_lu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_216355�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv2d_transpose_1_216477conv2d_transpose_1_216479*
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_215863�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_216482batch_normalization_7_216484batch_normalization_7_216486batch_normalization_7_216488*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_215908�
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_216375�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_2_216492conv2d_transpose_2_216494*
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
GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_215967�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_216497batch_normalization_8_216499batch_normalization_8_216501batch_normalization_8_216503*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_216012�
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_216395�
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_3_216507conv2d_transpose_3_216509*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_216071�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_216512batch_normalization_9_216514batch_normalization_9_216516batch_normalization_9_216518*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_216116�
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_216415�
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_4_216522conv2d_transpose_4_216524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_216175�
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0batch_normalization_10_216527batch_normalization_10_216529batch_normalization_10_216531batch_normalization_10_216533*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_216220�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_216435�
*conv2d_transpose_5/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_5_216537conv2d_transpose_5_216539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_216280�
IdentityIdentity3conv2d_transpose_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall+^conv2d_transpose_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2X
*conv2d_transpose_5/StatefulPartitionedCall*conv2d_transpose_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:&&"
 
_user_specified_name216539:&%"
 
_user_specified_name216537:&$"
 
_user_specified_name216533:&#"
 
_user_specified_name216531:&""
 
_user_specified_name216529:&!"
 
_user_specified_name216527:& "
 
_user_specified_name216524:&"
 
_user_specified_name216522:&"
 
_user_specified_name216518:&"
 
_user_specified_name216516:&"
 
_user_specified_name216514:&"
 
_user_specified_name216512:&"
 
_user_specified_name216509:&"
 
_user_specified_name216507:&"
 
_user_specified_name216503:&"
 
_user_specified_name216501:&"
 
_user_specified_name216499:&"
 
_user_specified_name216497:&"
 
_user_specified_name216494:&"
 
_user_specified_name216492:&"
 
_user_specified_name216488:&"
 
_user_specified_name216486:&"
 
_user_specified_name216484:&"
 
_user_specified_name216482:&"
 
_user_specified_name216479:&"
 
_user_specified_name216477:&"
 
_user_specified_name216473:&"
 
_user_specified_name216471:&
"
 
_user_specified_name216469:&	"
 
_user_specified_name216467:&"
 
_user_specified_name216464:&"
 
_user_specified_name216462:&"
 
_user_specified_name216457:&"
 
_user_specified_name216455:&"
 
_user_specified_name216453:&"
 
_user_specified_name216451:&"
 
_user_specified_name216448:&"
 
_user_specified_name216446:W S
(
_output_shapes
:����������
'
_user_specified_namedecoder_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������@@=
output_11
StatefulPartitionedCall:0����������=
output_21
StatefulPartitionedCall:1����������D
output_38
StatefulPartitionedCall:2���������@@tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

total_loss_tracker
reconstruction_loss_tracker
kl_loss_tracker
	optimizer
loss

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18
#19
$20
%21
&22
'23
(24
)25
*26
+27
,28
-29
.30
/31
032
133
234
335
436
537
638
739
840
941
:42
;43
<44
=45
>46
?47
@48
A49
B50
C51
D52
E53
F54
G55
H56
I57
J58
K59
L60
M61
N62
O63
P64
Q65
R66
S67
T68
U69
V70
W71
X72
Y73
Z74
[75
\76
]77"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
"12
#13
$14
%15
(16
)17
*18
+19
.20
/21
022
123
224
325
426
527
828
929
:30
;31
>32
?33
@34
A35
D36
E37
F38
G39
J40
K41
L42
M43
P44
Q45
R46
S47
V48
W49"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_0
dtrace_12�
$__inference_vae_layer_call_fn_217210
$__inference_vae_layer_call_fn_217363�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 zctrace_0zdtrace_1
�
etrace_0
ftrace_12�
?__inference_vae_layer_call_and_return_conditional_losses_216903
?__inference_vae_layer_call_and_return_conditional_losses_217057�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 zetrace_0zftrace_1
�B�
!__inference__wrapped_model_214770input_1"�
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
�
glayer-0
hlayer_with_weights-0
hlayer-1
ilayer_with_weights-1
ilayer-2
jlayer-3
klayer_with_weights-2
klayer-4
llayer_with_weights-3
llayer-5
mlayer-6
nlayer_with_weights-4
nlayer-7
olayer_with_weights-5
olayer-8
player-9
qlayer_with_weights-6
qlayer-10
rlayer_with_weights-7
rlayer-11
slayer-12
tlayer_with_weights-8
tlayer-13
ulayer_with_weights-9
ulayer-14
vlayer-15
wlayer-16
xlayer_with_weights-10
xlayer-17
ylayer_with_weights-11
ylayer-18
zlayer-19
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
�
�layer-0
�layer_with_weights-0
�layer-1
�layer_with_weights-1
�layer-2
�layer-3
�layer-4
�layer_with_weights-2
�layer-5
�layer_with_weights-3
�layer-6
�layer-7
�layer_with_weights-4
�layer-8
�layer_with_weights-5
�layer-9
�layer-10
�layer_with_weights-6
�layer-11
�layer_with_weights-7
�layer-12
�layer-13
�layer_with_weights-8
�layer-14
�layer_with_weights-9
�layer-15
�layer-16
�layer_with_weights-10
�layer-17
�layer_with_weights-11
�layer-18
�layer-19
�layer_with_weights-12
�layer-20
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
P
�	variables
�	keras_api
	Xtotal
	Ycount"
_tf_keras_metric
P
�	variables
�	keras_api
	Ztotal
	[count"
_tf_keras_metric
P
�	variables
�	keras_api
	\total
	]count"
_tf_keras_metric
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�m�m�m�m�m�m�m�m�m�m�"m�#m�$m�%m�(m�)m�*m�+m�.m�/m�0m�1m�2m�3m�4m�5m�8m�9m�:m�;m�>m�?m�@m�Am�Dm�Em�Fm�Gm�Jm�Km�Lm�Mm�Pm�Qm�Rm�Sm�Vm�Wm�v�v�v�v�v�v�v�v�v�v�v�v�"v�#v�$v�%v�(v�)v�*v�+v�.v�/v�0v�1v�2v�3v�4v�5v�8v�9v�:v�;v�>v�?v�@v�Av�Dv�Ev�Fv�Gv�Jv�Kv�Lv�Mv�Pv�Qv�Rv�Sv�Vv�Wv�"
	optimizer
 "
trackable_dict_wrapper
-
�serving_default"
signature_map
':%@2conv2d/kernel
:@2conv2d/bias
':%@2batch_normalization/gamma
&:$@2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
):'@2batch_normalization_3/gamma
(:&@2batch_normalization_3/beta
1:/@ (2!batch_normalization_3/moving_mean
5:3@ (2%batch_normalization_3/moving_variance
):'@@2conv2d_4/kernel
:@2conv2d_4/bias
):'@2batch_normalization_4/gamma
(:&@2batch_normalization_4/beta
1:/@ (2!batch_normalization_4/moving_mean
5:3@ (2%batch_normalization_4/moving_variance
!:
��2z_mean/kernel
:�2z_mean/bias
$:"
��2z_log_var/kernel
:�2z_log_var/bias
 :
��2dense/kernel
:�2
dense/bias
*:(�2batch_normalization_5/gamma
):'�2batch_normalization_5/beta
2:0� (2!batch_normalization_5/moving_mean
6:4� (2%batch_normalization_5/moving_variance
1:/@@2conv2d_transpose/kernel
#:!@2conv2d_transpose/bias
):'@2batch_normalization_6/gamma
(:&@2batch_normalization_6/beta
1:/@ (2!batch_normalization_6/moving_mean
5:3@ (2%batch_normalization_6/moving_variance
3:1@@2conv2d_transpose_1/kernel
%:#@2conv2d_transpose_1/bias
):'@2batch_normalization_7/gamma
(:&@2batch_normalization_7/beta
1:/@ (2!batch_normalization_7/moving_mean
5:3@ (2%batch_normalization_7/moving_variance
3:1@@2conv2d_transpose_2/kernel
%:#@2conv2d_transpose_2/bias
):'@2batch_normalization_8/gamma
(:&@2batch_normalization_8/beta
1:/@ (2!batch_normalization_8/moving_mean
5:3@ (2%batch_normalization_8/moving_variance
3:1@@2conv2d_transpose_3/kernel
%:#@2conv2d_transpose_3/bias
):'@2batch_normalization_9/gamma
(:&@2batch_normalization_9/beta
1:/@ (2!batch_normalization_9/moving_mean
5:3@ (2%batch_normalization_9/moving_variance
3:1@@2conv2d_transpose_4/kernel
%:#@2conv2d_transpose_4/bias
*:(@2batch_normalization_10/gamma
):'@2batch_normalization_10/beta
2:0@ (2"batch_normalization_10/moving_mean
6:4@ (2&batch_normalization_10/moving_variance
3:1@2conv2d_transpose_5/kernel
%:#2conv2d_transpose_5/bias
:  (2total
:  (2count
:  (2total
:  (2count
:  (2total
:  (2count
�
0
1
2
3
 4
!5
&6
'7
,8
-9
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
X22
Y23
Z24
[25
\26
]27"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
5

0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
V


total_loss
reconstruction_loss
kl_loss"
trackable_dict_wrapper
�B�
$__inference_vae_layer_call_fn_217210input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
$__inference_vae_layer_call_fn_217363input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
?__inference_vae_layer_call_and_return_conditional_losses_216903input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
?__inference_vae_layer_call_and_return_conditional_losses_217057input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
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

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
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

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
 moving_mean
!moving_variance"
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

"kernel
#bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	$gamma
%beta
&moving_mean
'moving_variance"
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

(kernel
)bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta
,moving_mean
-moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18
#19
$20
%21
&22
'23
(24
)25
*26
+27
,28
-29
.30
/31
032
133"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
"12
#13
$14
%15
(16
)17
*18
+19
.20
/21
022
123"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_encoder_layer_call_fn_215470
(__inference_encoder_layer_call_fn_215547�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_encoder_layer_call_and_return_conditional_losses_215300
C__inference_encoder_layer_call_and_return_conditional_losses_215393�
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
 z�trace_0z�trace_1
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	4gamma
5beta
6moving_mean
7moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

8kernel
9bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	:gamma
;beta
<moving_mean
=moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

>kernel
?bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel
Kbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Vkernel
Wbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
D18
E19
F20
G21
H22
I23
J24
K25
L26
M27
N28
O29
P30
Q31
R32
S33
T34
U35
V36
W37"
trackable_list_wrapper
�
20
31
42
53
84
95
:6
;7
>8
?9
@10
A11
D12
E13
F14
G15
J16
K17
L18
M19
P20
Q21
R22
S23
V24
W25"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
&__inference_model_layer_call_fn_216624
&__inference_model_layer_call_fn_216705�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
A__inference_model_layer_call_and_return_conditional_losses_216443
A__inference_model_layer_call_and_return_conditional_losses_216543�
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
 z�trace_0z�trace_1
.
X0
Y1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
.
\0
]1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_217523input_1"�
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_layer_call_fn_217532�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_layer_call_and_return_conditional_losses_217542�
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
 z�trace_0
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
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_batch_normalization_layer_call_fn_217555
4__inference_batch_normalization_layer_call_fn_217568�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217586
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217604�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_leaky_re_lu_layer_call_fn_217609�
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
 z�trace_0
�
�trace_02�
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_217614�
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
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_1_layer_call_fn_217623�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_217633�
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
 z�trace_0
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
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_1_layer_call_fn_217646
6__inference_batch_normalization_1_layer_call_fn_217659�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217677
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217695�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_1_layer_call_fn_217700�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_217705�
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
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_2_layer_call_fn_217714�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_217724�
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
 z�trace_0
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
<
0
1
 2
!3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_2_layer_call_fn_217737
6__inference_batch_normalization_2_layer_call_fn_217750�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217768
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217786�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_2_layer_call_fn_217791�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_217796�
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
 z�trace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_3_layer_call_fn_217805�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_217815�
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
 z�trace_0
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
<
$0
%1
&2
'3"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_3_layer_call_fn_217828
6__inference_batch_normalization_3_layer_call_fn_217841�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217859
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217877�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_3_layer_call_fn_217882�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_217887�
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
 z�trace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_4_layer_call_fn_217896�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_217906�
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
 z�trace_0
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
<
*0
+1
,2
-3"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_4_layer_call_fn_217919
6__inference_batch_normalization_4_layer_call_fn_217932�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217950
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217968�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_4_layer_call_fn_217973�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_217978�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_flatten_layer_call_fn_217983�
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
 z�trace_0
�
�trace_02�
C__inference_flatten_layer_call_and_return_conditional_losses_217989�
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
 z�trace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_z_mean_layer_call_fn_217998�
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
 z�trace_0
�
�trace_02�
B__inference_z_mean_layer_call_and_return_conditional_losses_218008�
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
 z�trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_z_log_var_layer_call_fn_218017�
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
 z�trace_0
�
�trace_02�
E__inference_z_log_var_layer_call_and_return_conditional_losses_218027�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_sampling_layer_call_fn_218033�
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
 z�trace_0
�
�trace_02�
D__inference_sampling_layer_call_and_return_conditional_losses_218059�
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
 z�trace_0
f
0
1
2
3
 4
!5
&6
'7
,8
-9"
trackable_list_wrapper
�
g0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12
t13
u14
v15
w16
x17
y18
z19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_encoder_layer_call_fn_215470encoder_input"�
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
(__inference_encoder_layer_call_fn_215547encoder_input"�
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
C__inference_encoder_layer_call_and_return_conditional_losses_215300encoder_input"�
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
C__inference_encoder_layer_call_and_return_conditional_losses_215393encoder_input"�
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
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_layer_call_fn_218068�
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
 z�trace_0
�
�trace_02�
A__inference_dense_layer_call_and_return_conditional_losses_218078�
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
 z�trace_0
<
40
51
62
73"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_5_layer_call_fn_218091
6__inference_batch_normalization_5_layer_call_fn_218104�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218138
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218158�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_5_layer_call_fn_218163�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_218168�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_reshape_layer_call_fn_218173�
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
 z�trace_0
�
�trace_02�
C__inference_reshape_layer_call_and_return_conditional_losses_218187�
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
 z�trace_0
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_conv2d_transpose_layer_call_fn_218196�
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
 z�trace_0
�
�trace_02�
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_218229�
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
 z�trace_0
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
<
:0
;1
<2
=3"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_6_layer_call_fn_218242
6__inference_batch_normalization_6_layer_call_fn_218255�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218273
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218291�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_6_layer_call_fn_218296�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_218301�
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
 z�trace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_1_layer_call_fn_218310�
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
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_218343�
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
 z�trace_0
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
<
@0
A1
B2
C3"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_7_layer_call_fn_218356
6__inference_batch_normalization_7_layer_call_fn_218369�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218387
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218405�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_7_layer_call_fn_218410�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_218415�
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
 z�trace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_2_layer_call_fn_218424�
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
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_218457�
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
 z�trace_0
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
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_8_layer_call_fn_218470
6__inference_batch_normalization_8_layer_call_fn_218483�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218501
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218519�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_8_layer_call_fn_218524�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_218529�
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
 z�trace_0
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_3_layer_call_fn_218538�
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
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_218571�
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
 z�trace_0
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
<
L0
M1
N2
O3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_9_layer_call_fn_218584
6__inference_batch_normalization_9_layer_call_fn_218597�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218615
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218633�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_9_layer_call_fn_218638�
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
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_218643�
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
 z�trace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_4_layer_call_fn_218652�
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
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_218685�
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
 z�trace_0
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
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_10_layer_call_fn_218698
7__inference_batch_normalization_10_layer_call_fn_218711�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218729
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218747�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_leaky_re_lu_10_layer_call_fn_218752�
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
 z�trace_0
�
�trace_02�
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_218757�
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
 z�trace_0
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_5_layer_call_fn_218766�
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
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_218800�
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
 z�trace_0
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
v
60
71
<2
=3
B4
C5
H6
I7
N8
O9
T10
U11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_layer_call_fn_216624decoder_input"�
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
&__inference_model_layer_call_fn_216705decoder_input"�
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
A__inference_model_layer_call_and_return_conditional_losses_216443decoder_input"�
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
A__inference_model_layer_call_and_return_conditional_losses_216543decoder_input"�
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
'__inference_conv2d_layer_call_fn_217532inputs"�
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
B__inference_conv2d_layer_call_and_return_conditional_losses_217542inputs"�
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
0
1"
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
4__inference_batch_normalization_layer_call_fn_217555inputs"�
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
4__inference_batch_normalization_layer_call_fn_217568inputs"�
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
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217586inputs"�
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
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217604inputs"�
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
,__inference_leaky_re_lu_layer_call_fn_217609inputs"�
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
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_217614inputs"�
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
)__inference_conv2d_1_layer_call_fn_217623inputs"�
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_217633inputs"�
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
0
1"
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
6__inference_batch_normalization_1_layer_call_fn_217646inputs"�
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
6__inference_batch_normalization_1_layer_call_fn_217659inputs"�
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
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217677inputs"�
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
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217695inputs"�
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
.__inference_leaky_re_lu_1_layer_call_fn_217700inputs"�
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
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_217705inputs"�
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
)__inference_conv2d_2_layer_call_fn_217714inputs"�
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_217724inputs"�
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
 0
!1"
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
6__inference_batch_normalization_2_layer_call_fn_217737inputs"�
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
6__inference_batch_normalization_2_layer_call_fn_217750inputs"�
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
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217768inputs"�
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
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217786inputs"�
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
.__inference_leaky_re_lu_2_layer_call_fn_217791inputs"�
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
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_217796inputs"�
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
)__inference_conv2d_3_layer_call_fn_217805inputs"�
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_217815inputs"�
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
&0
'1"
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
6__inference_batch_normalization_3_layer_call_fn_217828inputs"�
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
6__inference_batch_normalization_3_layer_call_fn_217841inputs"�
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
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217859inputs"�
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
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217877inputs"�
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
.__inference_leaky_re_lu_3_layer_call_fn_217882inputs"�
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
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_217887inputs"�
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
)__inference_conv2d_4_layer_call_fn_217896inputs"�
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_217906inputs"�
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
,0
-1"
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
6__inference_batch_normalization_4_layer_call_fn_217919inputs"�
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
6__inference_batch_normalization_4_layer_call_fn_217932inputs"�
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
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217950inputs"�
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
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217968inputs"�
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
.__inference_leaky_re_lu_4_layer_call_fn_217973inputs"�
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
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_217978inputs"�
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
(__inference_flatten_layer_call_fn_217983inputs"�
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
C__inference_flatten_layer_call_and_return_conditional_losses_217989inputs"�
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
'__inference_z_mean_layer_call_fn_217998inputs"�
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
B__inference_z_mean_layer_call_and_return_conditional_losses_218008inputs"�
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
*__inference_z_log_var_layer_call_fn_218017inputs"�
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_218027inputs"�
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
)__inference_sampling_layer_call_fn_218033inputs_0inputs_1"�
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
D__inference_sampling_layer_call_and_return_conditional_losses_218059inputs_0inputs_1"�
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
&__inference_dense_layer_call_fn_218068inputs"�
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
A__inference_dense_layer_call_and_return_conditional_losses_218078inputs"�
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
60
71"
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
6__inference_batch_normalization_5_layer_call_fn_218091inputs"�
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
6__inference_batch_normalization_5_layer_call_fn_218104inputs"�
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
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218138inputs"�
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
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218158inputs"�
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
.__inference_leaky_re_lu_5_layer_call_fn_218163inputs"�
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
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_218168inputs"�
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
(__inference_reshape_layer_call_fn_218173inputs"�
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
C__inference_reshape_layer_call_and_return_conditional_losses_218187inputs"�
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
1__inference_conv2d_transpose_layer_call_fn_218196inputs"�
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
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_218229inputs"�
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
<0
=1"
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
6__inference_batch_normalization_6_layer_call_fn_218242inputs"�
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
6__inference_batch_normalization_6_layer_call_fn_218255inputs"�
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
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218273inputs"�
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
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218291inputs"�
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
.__inference_leaky_re_lu_6_layer_call_fn_218296inputs"�
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
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_218301inputs"�
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
3__inference_conv2d_transpose_1_layer_call_fn_218310inputs"�
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_218343inputs"�
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
B0
C1"
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
6__inference_batch_normalization_7_layer_call_fn_218356inputs"�
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
6__inference_batch_normalization_7_layer_call_fn_218369inputs"�
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
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218387inputs"�
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
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218405inputs"�
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
.__inference_leaky_re_lu_7_layer_call_fn_218410inputs"�
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
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_218415inputs"�
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
3__inference_conv2d_transpose_2_layer_call_fn_218424inputs"�
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_218457inputs"�
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
H0
I1"
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
6__inference_batch_normalization_8_layer_call_fn_218470inputs"�
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
6__inference_batch_normalization_8_layer_call_fn_218483inputs"�
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
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218501inputs"�
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
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218519inputs"�
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
.__inference_leaky_re_lu_8_layer_call_fn_218524inputs"�
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
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_218529inputs"�
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
3__inference_conv2d_transpose_3_layer_call_fn_218538inputs"�
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_218571inputs"�
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
N0
O1"
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
6__inference_batch_normalization_9_layer_call_fn_218584inputs"�
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
6__inference_batch_normalization_9_layer_call_fn_218597inputs"�
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
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218615inputs"�
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
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218633inputs"�
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
.__inference_leaky_re_lu_9_layer_call_fn_218638inputs"�
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
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_218643inputs"�
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
3__inference_conv2d_transpose_4_layer_call_fn_218652inputs"�
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_218685inputs"�
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
T0
U1"
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
7__inference_batch_normalization_10_layer_call_fn_218698inputs"�
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
7__inference_batch_normalization_10_layer_call_fn_218711inputs"�
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
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218729inputs"�
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
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218747inputs"�
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
/__inference_leaky_re_lu_10_layer_call_fn_218752inputs"�
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
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_218757inputs"�
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
3__inference_conv2d_transpose_5_layer_call_fn_218766inputs"�
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
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_218800inputs"�
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
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
,:*@2 Adam/batch_normalization/gamma/m
+:)@2Adam/batch_normalization/beta/m
.:,@@2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
.:,@2"Adam/batch_normalization_1/gamma/m
-:+@2!Adam/batch_normalization_1/beta/m
.:,@@2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
.:,@2"Adam/batch_normalization_2/gamma/m
-:+@2!Adam/batch_normalization_2/beta/m
.:,@@2Adam/conv2d_3/kernel/m
 :@2Adam/conv2d_3/bias/m
.:,@2"Adam/batch_normalization_3/gamma/m
-:+@2!Adam/batch_normalization_3/beta/m
.:,@@2Adam/conv2d_4/kernel/m
 :@2Adam/conv2d_4/bias/m
.:,@2"Adam/batch_normalization_4/gamma/m
-:+@2!Adam/batch_normalization_4/beta/m
&:$
��2Adam/z_mean/kernel/m
:�2Adam/z_mean/bias/m
):'
��2Adam/z_log_var/kernel/m
": �2Adam/z_log_var/bias/m
%:#
��2Adam/dense/kernel/m
:�2Adam/dense/bias/m
/:-�2"Adam/batch_normalization_5/gamma/m
.:,�2!Adam/batch_normalization_5/beta/m
6:4@@2Adam/conv2d_transpose/kernel/m
(:&@2Adam/conv2d_transpose/bias/m
.:,@2"Adam/batch_normalization_6/gamma/m
-:+@2!Adam/batch_normalization_6/beta/m
8:6@@2 Adam/conv2d_transpose_1/kernel/m
*:(@2Adam/conv2d_transpose_1/bias/m
.:,@2"Adam/batch_normalization_7/gamma/m
-:+@2!Adam/batch_normalization_7/beta/m
8:6@@2 Adam/conv2d_transpose_2/kernel/m
*:(@2Adam/conv2d_transpose_2/bias/m
.:,@2"Adam/batch_normalization_8/gamma/m
-:+@2!Adam/batch_normalization_8/beta/m
8:6@@2 Adam/conv2d_transpose_3/kernel/m
*:(@2Adam/conv2d_transpose_3/bias/m
.:,@2"Adam/batch_normalization_9/gamma/m
-:+@2!Adam/batch_normalization_9/beta/m
8:6@@2 Adam/conv2d_transpose_4/kernel/m
*:(@2Adam/conv2d_transpose_4/bias/m
/:-@2#Adam/batch_normalization_10/gamma/m
.:,@2"Adam/batch_normalization_10/beta/m
8:6@2 Adam/conv2d_transpose_5/kernel/m
*:(2Adam/conv2d_transpose_5/bias/m
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
,:*@2 Adam/batch_normalization/gamma/v
+:)@2Adam/batch_normalization/beta/v
.:,@@2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
.:,@2"Adam/batch_normalization_1/gamma/v
-:+@2!Adam/batch_normalization_1/beta/v
.:,@@2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
.:,@2"Adam/batch_normalization_2/gamma/v
-:+@2!Adam/batch_normalization_2/beta/v
.:,@@2Adam/conv2d_3/kernel/v
 :@2Adam/conv2d_3/bias/v
.:,@2"Adam/batch_normalization_3/gamma/v
-:+@2!Adam/batch_normalization_3/beta/v
.:,@@2Adam/conv2d_4/kernel/v
 :@2Adam/conv2d_4/bias/v
.:,@2"Adam/batch_normalization_4/gamma/v
-:+@2!Adam/batch_normalization_4/beta/v
&:$
��2Adam/z_mean/kernel/v
:�2Adam/z_mean/bias/v
):'
��2Adam/z_log_var/kernel/v
": �2Adam/z_log_var/bias/v
%:#
��2Adam/dense/kernel/v
:�2Adam/dense/bias/v
/:-�2"Adam/batch_normalization_5/gamma/v
.:,�2!Adam/batch_normalization_5/beta/v
6:4@@2Adam/conv2d_transpose/kernel/v
(:&@2Adam/conv2d_transpose/bias/v
.:,@2"Adam/batch_normalization_6/gamma/v
-:+@2!Adam/batch_normalization_6/beta/v
8:6@@2 Adam/conv2d_transpose_1/kernel/v
*:(@2Adam/conv2d_transpose_1/bias/v
.:,@2"Adam/batch_normalization_7/gamma/v
-:+@2!Adam/batch_normalization_7/beta/v
8:6@@2 Adam/conv2d_transpose_2/kernel/v
*:(@2Adam/conv2d_transpose_2/bias/v
.:,@2"Adam/batch_normalization_8/gamma/v
-:+@2!Adam/batch_normalization_8/beta/v
8:6@@2 Adam/conv2d_transpose_3/kernel/v
*:(@2Adam/conv2d_transpose_3/bias/v
.:,@2"Adam/batch_normalization_9/gamma/v
-:+@2!Adam/batch_normalization_9/beta/v
8:6@@2 Adam/conv2d_transpose_4/kernel/v
*:(@2Adam/conv2d_transpose_4/bias/v
/:-@2#Adam/batch_normalization_10/gamma/v
.:,@2"Adam/batch_normalization_10/beta/v
8:6@2 Adam/conv2d_transpose_5/kernel/v
*:(2Adam/conv2d_transpose_5/bias/v�
!__inference__wrapped_model_214770�H !"#$%&'()*+,-./0123746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW8�5
.�+
)�&
input_1���������@@
� "���
/
output_1#� 
output_1����������
/
output_2#� 
output_2����������
6
output_3*�'
output_3���������@@�
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218729�RSTUQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_218747�RSTUQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
7__inference_batch_normalization_10_layer_call_fn_218698�RSTUQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
7__inference_batch_normalization_10_layer_call_fn_218711�RSTUQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217677�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_217695�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_1_layer_call_fn_217646�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_1_layer_call_fn_217659�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217768� !Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_217786� !Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_2_layer_call_fn_217737� !Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_2_layer_call_fn_217750� !Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217859�$%&'Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_217877�$%&'Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_3_layer_call_fn_217828�$%&'Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_3_layer_call_fn_217841�$%&'Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217950�*+,-Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_217968�*+,-Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_4_layer_call_fn_217919�*+,-Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_4_layer_call_fn_217932�*+,-Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218138o67458�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_218158o74658�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
6__inference_batch_normalization_5_layer_call_fn_218091d67458�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
6__inference_batch_normalization_5_layer_call_fn_218104d74658�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218273�:;<=Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_218291�:;<=Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_6_layer_call_fn_218242�:;<=Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_6_layer_call_fn_218255�:;<=Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218387�@ABCQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_218405�@ABCQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_7_layer_call_fn_218356�@ABCQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_7_layer_call_fn_218369�@ABCQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218501�FGHIQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_218519�FGHIQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_8_layer_call_fn_218470�FGHIQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_8_layer_call_fn_218483�FGHIQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218615�LMNOQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_218633�LMNOQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
6__inference_batch_normalization_9_layer_call_fn_218584�LMNOQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
6__inference_batch_normalization_9_layer_call_fn_218597�LMNOQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217586�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_217604�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
4__inference_batch_normalization_layer_call_fn_217555�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
4__inference_batch_normalization_layer_call_fn_217568�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_217633s7�4
-�*
(�%
inputs���������  @
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_1_layer_call_fn_217623h7�4
-�*
(�%
inputs���������  @
� ")�&
unknown���������@�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_217724s7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_2_layer_call_fn_217714h7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_217815s"#7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_3_layer_call_fn_217805h"#7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_217906s()7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_4_layer_call_fn_217896h()7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
B__inference_conv2d_layer_call_and_return_conditional_losses_217542s7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������  @
� �
'__inference_conv2d_layer_call_fn_217532h7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������  @�
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_218343�>?I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
3__inference_conv2d_transpose_1_layer_call_fn_218310�>?I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_218457�DEI�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
3__inference_conv2d_transpose_2_layer_call_fn_218424�DEI�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_218571�JKI�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
3__inference_conv2d_transpose_3_layer_call_fn_218538�JKI�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_218685�PQI�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
3__inference_conv2d_transpose_4_layer_call_fn_218652�PQI�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
N__inference_conv2d_transpose_5_layer_call_and_return_conditional_losses_218800�VWI�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_conv2d_transpose_5_layer_call_fn_218766�VWI�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+����������������������������
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_218229�89I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
1__inference_conv2d_transpose_layer_call_fn_218196�89I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
A__inference_dense_layer_call_and_return_conditional_losses_218078e230�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
&__inference_dense_layer_call_fn_218068Z230�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_encoder_layer_call_and_return_conditional_losses_215300�" !"#$%&'()*+,-./01F�C
<�9
/�,
encoder_input���������@@
p

 
� "��
x�u
%�"

tensor_0_0����������
%�"

tensor_0_1����������
%�"

tensor_0_2����������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_215393�" !"#$%&'()*+,-./01F�C
<�9
/�,
encoder_input���������@@
p 

 
� "��
x�u
%�"

tensor_0_0����������
%�"

tensor_0_1����������
%�"

tensor_0_2����������
� �
(__inference_encoder_layer_call_fn_215470�" !"#$%&'()*+,-./01F�C
<�9
/�,
encoder_input���������@@
p

 
� "r�o
#� 
tensor_0����������
#� 
tensor_1����������
#� 
tensor_2�����������
(__inference_encoder_layer_call_fn_215547�" !"#$%&'()*+,-./01F�C
<�9
/�,
encoder_input���������@@
p 

 
� "r�o
#� 
tensor_0����������
#� 
tensor_1����������
#� 
tensor_2�����������
C__inference_flatten_layer_call_and_return_conditional_losses_217989h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
tensor_0����������
� �
(__inference_flatten_layer_call_fn_217983]7�4
-�*
(�%
inputs���������@
� ""�
unknown�����������
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_218757o7�4
-�*
(�%
inputs���������@@@
� "4�1
*�'
tensor_0���������@@@
� �
/__inference_leaky_re_lu_10_layer_call_fn_218752d7�4
-�*
(�%
inputs���������@@@
� ")�&
unknown���������@@@�
I__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_217705o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_1_layer_call_fn_217700d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_217796o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_2_layer_call_fn_217791d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_217887o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_3_layer_call_fn_217882d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_217978o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_4_layer_call_fn_217973d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_218168a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
.__inference_leaky_re_lu_5_layer_call_fn_218163V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
I__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_218301o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_6_layer_call_fn_218296d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_218415o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_7_layer_call_fn_218410d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_218529o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_leaky_re_lu_8_layer_call_fn_218524d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_218643o7�4
-�*
(�%
inputs���������  @
� "4�1
*�'
tensor_0���������  @
� �
.__inference_leaky_re_lu_9_layer_call_fn_218638d7�4
-�*
(�%
inputs���������  @
� ")�&
unknown���������  @�
G__inference_leaky_re_lu_layer_call_and_return_conditional_losses_217614o7�4
-�*
(�%
inputs���������  @
� "4�1
*�'
tensor_0���������  @
� �
,__inference_leaky_re_lu_layer_call_fn_217609d7�4
-�*
(�%
inputs���������  @
� ")�&
unknown���������  @�
A__inference_model_layer_call_and_return_conditional_losses_216443�&23674589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW?�<
5�2
(�%
decoder_input����������
p

 
� "4�1
*�'
tensor_0���������@@
� �
A__inference_model_layer_call_and_return_conditional_losses_216543�&23746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW?�<
5�2
(�%
decoder_input����������
p 

 
� "4�1
*�'
tensor_0���������@@
� �
&__inference_model_layer_call_fn_216624�&23674589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW?�<
5�2
(�%
decoder_input����������
p

 
� ")�&
unknown���������@@�
&__inference_model_layer_call_fn_216705�&23746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW?�<
5�2
(�%
decoder_input����������
p 

 
� ")�&
unknown���������@@�
C__inference_reshape_layer_call_and_return_conditional_losses_218187h0�-
&�#
!�
inputs����������
� "4�1
*�'
tensor_0���������@
� �
(__inference_reshape_layer_call_fn_218173]0�-
&�#
!�
inputs����������
� ")�&
unknown���������@�
D__inference_sampling_layer_call_and_return_conditional_losses_218059�\�Y
R�O
M�J
#� 
inputs_0����������
#� 
inputs_1����������
� "-�*
#� 
tensor_0����������
� �
)__inference_sampling_layer_call_fn_218033�\�Y
R�O
M�J
#� 
inputs_0����������
#� 
inputs_1����������
� ""�
unknown�����������
$__inference_signature_wrapper_217523�H !"#$%&'()*+,-./0123746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWC�@
� 
9�6
4
input_1)�&
input_1���������@@"���
/
output_1#� 
output_1����������
/
output_2#� 
output_2����������
6
output_3*�'
output_3���������@@�
?__inference_vae_layer_call_and_return_conditional_losses_216903�H !"#$%&'()*+,-./0123674589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWH�E
.�+
)�&
input_1���������@@
�

trainingp"���
�|
%�"

tensor_0_0����������
%�"

tensor_0_1����������
,�)

tensor_0_2���������@@
� �
?__inference_vae_layer_call_and_return_conditional_losses_217057�H !"#$%&'()*+,-./0123746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWH�E
.�+
)�&
input_1���������@@
�

trainingp "���
�|
%�"

tensor_0_0����������
%�"

tensor_0_1����������
,�)

tensor_0_2���������@@
� �
$__inference_vae_layer_call_fn_217210�H !"#$%&'()*+,-./0123674589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWH�E
.�+
)�&
input_1���������@@
�

trainingp"y�v
#� 
tensor_0����������
#� 
tensor_1����������
*�'
tensor_2���������@@�
$__inference_vae_layer_call_fn_217363�H !"#$%&'()*+,-./0123746589:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWH�E
.�+
)�&
input_1���������@@
�

trainingp "y�v
#� 
tensor_0����������
#� 
tensor_1����������
*�'
tensor_2���������@@�
E__inference_z_log_var_layer_call_and_return_conditional_losses_218027e010�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_z_log_var_layer_call_fn_218017Z010�-
&�#
!�
inputs����������
� ""�
unknown�����������
B__inference_z_mean_layer_call_and_return_conditional_losses_218008e./0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
'__inference_z_mean_layer_call_fn_217998Z./0�-
&�#
!�
inputs����������
� ""�
unknown����������