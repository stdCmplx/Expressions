Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'arithmetic' }
EExpression >> negated [

	^ ENegation new expression: self
]
