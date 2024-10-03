Class {
	#name : 'EConstant',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'public access' }
EConstant >> evaluate [
	"the method evaluate return the value of the constant."
	
	^ value

]

{ #category : 'accessing' }
EConstant >> value: anInteger [
	"set the value of the instance variable value."
	
	value := anInteger
]
