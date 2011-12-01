<?php
    //Read In XML from Raw Post Data.
	$xml = $GLOBALS['HTTP_RAW_POST_DATA'];
	//Process XML using DOM PHP extension.
	$document = xmldoc($xml);
	//Read root element<gameinfo>.
	$rootElement = $document->root();
	//Read child nodes <username> and <score>.
	$childNodes = $rootElement->children();
	$data = "";
	//Loop through child nodes and place in array.
	foreach($childNodes as $childNode) {
        //Add data to array
		$name = $childNode-> tagName();
		$value = $childNode-> get_content();
		$data[$name] = $value;
	}
	//Append data to scores.txt(format:username|score)
	$fp = fopen("scores.txt", "a+");
	$dataString = $data['username']."|".$data['score']."\n";
	fputs($fp, $dataString, strlen($dataString));
	fclose($fp);
	//Return success code to Flash
	echo "<succuss>1</succuss>";
?>