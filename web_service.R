    pacman::p_load(httr, jsonlite, lubridate, RCurl, XML)
    
    
    headerfields = c(
      Accept = "text/xml",
      Accept = "multipart/*",
      'Content-Type' = "text/xml; charset=utf-8",
      SOAPAction = "http://www.banguat.gob.gt/variables/ws/TipoCambioDia"
    )
    
    # version SOAP 1.1
body_1.1 = '<?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><TipoCambioDia xmlns="http://www.banguat.gob.gt/variables/ws/"></soap:Body></soap:Envelope>'
    
    
    
    reader <- basicTextGatherer()
    header <- basicHeaderGatherer()
    handle <- getCurlHandle()

    curlPerform(
      url            = "http://www.banguat.gob.gt/variables/ws/TipoCambioDia.asmx",
      httpheader     = headerfields,
      postfields     = body_1.1)
    

header$value()
