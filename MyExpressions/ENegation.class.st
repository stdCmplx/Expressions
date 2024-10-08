Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
ENegation class >> expression: anExpression [
	
	^ self new expression: anExpression

]

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
