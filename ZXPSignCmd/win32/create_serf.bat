set /p countryCode=Country Code:
set /p stateOrProvince=State Or Province:
set /p organization=Organiazation/company:
set /p commonName=Common Name:
set /p password=Sefr Password:


ZXPSignCmd -selfSignedCert %countryCode% %stateOrProvince% %organization% "%commonName%" %password% selfDB.p12

pause