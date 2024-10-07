Class {
	#name : 'ENegation',
	#superclass : 'Object',
	#instVars : [
		'expression'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'accessing' }
ENegation >> evaluate [
	"The evaluate method should request the evaluation of the
	 expression and negate it."

	^ (expression evaluate) negated

]

{ #category : 'accessing' }
ENegation >> expression: anExpression [
	"A setter method to be able to set the expression under negation."

	expression := anExpression

]
