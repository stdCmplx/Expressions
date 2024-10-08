Class {
	#name : 'EAddition',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	
	^ self new left: anInteger ; right: anInteger2

]

{ #category : 'accessing' }
EAddition >> evaluate [
	"The evaluate method for addition."
	
	^ (left evaluate) + (right evaluate)


]

{ #category : 'accessing' }
EAddition >> left: anExpression [
	"Set an expression at the left subexpression."
	
	left := anExpression

]

{ #category : 'accessing' }
EAddition >> right: anExpression [
	"Set an expression at the right subexpression."
	
	right := anExpression

]
