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
ENegation >> evaluateWith: anObject [

	^ (expression evaluateWith: anObject) negated

]

{ #category : 'accessing' }
ENegation >> expression: anExpression [
	"A setter method to be able to set the expression under negation."

	expression := anExpression

]

{ #category : 'accessing' }
ENegation >> negated [
	
	^ expression

]

{ #category : 'accessing' }
ENegation >> printOn: aStream [

	aStream
		"nextPutAll: '- ';
		 nextPutAll: expression printString"
		nextPutAll: '- '.
		expression printOn: aStream

]
