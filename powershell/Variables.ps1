


$url = "http://novocontent-integracao-ws-wf10-homol.grupotci.com.br/EasyContentService?wsdl"
$webservicex = New-WebServiceProxy -Uri $url -namespace WebServiceProxy -Class GlobalWeatherSoap



[xml]$lotes =  $webservicex.obterLotes();