Class {
	#name : 'EAddition',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2

]

{ #category : 'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	
	^ self new left: anInteger ; right: anInteger2

]

{ #category : 'accessing' }
EAddition >> evaluateWith: anObject [
	
	^ (left evaluateWith: anObject) + (right evaluateWith: anObject)

]

{ #category : 'accessing' }
EAddition >> operatorString [

	^ ' + '

]
