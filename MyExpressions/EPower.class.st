Class {
	#name : 'EPower',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EPower class >> fivePowerThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2

]

{ #category : 'instance creation' }
EPower class >> left: anExp1 right: anExp2 [
	
	^ self new left: anExp1 ; right: anExp2

]

{ #category : 'public access' }
EPower >> evaluateWith: anObject [

	^ (left evaluateWith: anObject) ** (right evaluateWith: anObject)

]

{ #category : 'public access' }
EPower >> operatorString [

	^ ' ^ '

]
