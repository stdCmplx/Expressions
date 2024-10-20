Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EDivision class >> fithteenDividedByThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant value: 15.
	ep2 := EConstant constant3.
	^ self new left: ep1; right: ep2


]

{ #category : 'instance creation' }
EDivision class >> left: anExp1 right: anExp2 [

	^ self new left: anExp1; right: anExp2

]

{ #category : 'public access' }
EDivision >> evaluateWith: anObject [

	^ (left evaluateWith: anObject) / (right evaluateWith: anObject)

]

{ #category : 'accessing' }
EDivision >> operatorString [

	^ ' / '

]
