SELECT s.EmailAddress, s.SubscriberKey, b.JobID, b.EventDate,
b. SMTPBounceReason

FROM _Subscribers s

JOIN _Bounce b ON s.SubscriberID = b.SubscriberID

WHERE b.EventDate > DateAdd(DAY, -30, GETDATE())