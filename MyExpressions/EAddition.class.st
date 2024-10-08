Class {
	#name : 'EAddition',
	#superclass : 'Object',
	#instVars : [
		'left',
		'right'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

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
EAddition >> negated [
	
	^ ENegation new expression: self

]

{ #category : 'accessing' }
EAddition >> right: anExpression [
	"Set an expression at the right subexpression."
	
	right := anExpression

]
