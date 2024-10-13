Class {
	#name : 'EBinaryExpression',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [
	"Set an expression at the left subexpression."

	left := anExpression

]

{ #category : 'accessing' }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility

]

{ #category : 'accessing' }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [
	"Set an expression at the right subexpression."

	right := anExpression

]
