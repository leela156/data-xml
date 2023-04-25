%dw 2.0
output application/xml
var recent=max (payload.ProofOfDelivery.*Signature.DateTime)
---
ProofOfDelivery : Signature : (payload.ProofOfDelivery.*Signature filter $.DateTime==recent)





//As per the requested output we need to sort the max of which object has the highest Datetime.To sort out which took the highest time to sign the post we have written a condition with the max function and with the help of above written condition we filter the object which has max DateTime.