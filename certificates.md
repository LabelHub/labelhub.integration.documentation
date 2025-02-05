# Certificate authority in LabelHub

LabelHub uses Amazon as its issuer of certificates. So trusting Amazon root certificates is importatant for the functionallity of LabelHub. Most systems nativly trust these root CAs, but in some instances the are for some reason missing. Amazon is  [updating their root certificates starting august 2024](https://aws.amazon.com/blogs/security/acm-will-no-longer-cross-sign-certificates-with-starfield-class-2-starting-august-2024/) and this causes futher trust issues because of apparently missing root certificates on some client devices.

## Amazon root CAs
In order for LabelHub to function properly, make sure the CAs from Amazon are trusted. These can be found here:
[https://www.amazontrust.com/repository/](https://www.amazontrust.com/repository/)

## Specific LabelHub test
For the mostpart LabelHub uses a specific root certificate, namely the "Starfield Services Root Certificate Authority - G2". To validate this certificate on a client device, test this link from Amazon: [https://valid.sfg2.demo.amazontrust.com](https://valid.sfg2.demo.amazontrust.com). This test URL should load in the browser without any certificate warnings, if the certificate fails the client device is missing the proper root certificates for LabelHub(and many other!) services to function properly

## Firewall considerations
We've experienced that some firewalls, especially WatchGuard/Forcepoint, wrongly categorizes some of our domains as "Newly Registered Websites", even though they are registered 2 years ago. Please check that you can access [https://core-api-test.labelportal.io/helloworld](https://core-api-test.labelportal.io/helloworld) and get a proper response and that the certificate is working correctly.
