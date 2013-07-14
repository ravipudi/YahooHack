<?php
if (!isset($_COOKIE['eeyam-patta']))
{
header('Location: /scribble/signin');
}
else
{
$cok=$_COOKIE["eeyam-patta"];
	$con = mysql_connect('localhost', 'root', 'root');
	if (!$con)
	  {
	  die('Could not connect: ' . mysql_error());
	  }
	$uid=substr($cok,12);
	$code_c =substr($cok,0,12);
	$user=mysql_query("SELECT `u_code`,`u_name` FROM `scribble_db`.`users` WHERE `u_id`='".$uid."';");
	if (mysql_num_rows($user)==0)
		{
		header('Location: /scribble/signin');
		}
	else
	{
	$code_t=mysql_result($user,0,'u_code');
	$uname=mysql_result($user,0,'u_name');
	}
	if($code_c==$code_t)
		{
		$auth='true';
		}
		else
		{
		header('Location: /scribble/signin');
		}
		
	
}
if($auth=='true')
{
$hashtags=mysql_query("SELECT DISTINCT `h_text` FROM `scribble_db`.`hashtags` WHERE `u_id`='".$uid."' ORDER BY `p_count`;");
$topic_string="";
while($row = mysql_fetch_array($hashtags))
  {
	 $topic_string=$topic_string."<a href='/scribble/search.php?search=".$row['h_text']."' id='tags'>".$row['h_text']."</a>";
}
$posts=mysql_query("SELECT  `p_text`,`p_url` FROM `scribble_db`.`posts` WHERE `u_id`='".$uid."' ;");
$post_string="";
while($row = mysql_fetch_array($posts))
  {
  
	$e=$row['p_text'];
	$f=strpos ( $e ,'#'  );
	$l=strpos ( $e ,' ', $f );
	if($l===false)
	{
	$l= strlen($e);
	}
	$h=substr($e,$f,$l-$f);
	 $post_string=$post_string."<div id='post'>
			<div id='r_note'>
				<div id='h_note' onclick='fetch('".$h."')'>".$h."</div>
				<div id='c_note'>".$row['p_text']."</div>
			</div></div>";
}
echo "<head>
<link rel='stylesheet' href='http://yui.yahooapis.com/pure/0.2.0/forms-min.css'></link>
	<link rel='stylesheet' type='text/css' href='contents/styles.css'></link>
	<link rel='stylesheet' type='text/css' href='http://yui.yahooapis.com/pure/0.2.0/buttons-min.css'></link>
	<script type='text/javascript' src='contents/main.js'></script>

</head>
<body>
<div id='header'>
	<div id='hcontainer'>
		<div id='hcontainer1'>
			<div id='logo'><img src='contents/logo.png' /></div>
			<div id='h_right'>
				<div id='h_login'></div>
			</div>
		</div>
	</div>
</div>
<div id='container'>
	<div id='l_container'>
		<div id='topic_box'>
							<div id='topic_l'>
								<div id='topic_pic'><img src='contents/user/user.png'></div>
							</div>
							<div id='topic_r'>
								<h1>".$uname."</h1>
								<des>Sign out</des>
							</div>
						</div>
		<div id='topics'>
			<h1>Topics</h1>
			
			".$topic_string."
		</div>
	</div>
	<div id='r_container'>
		<div id='new'>
			<div id='t_c'>
			<form name='sub' method='POST' action='contents/post.php'>
				<textarea style='resize: none;' name='new_p' cols='72' rows='8'  id='newnote'></textarea>
					<input type='submit' value='save'   id='s_b' class='pure-button pure-input-1-2 pure-button-primary'/>
			</form>
			</div>
			
		</div>
		<div id='post_c'>
			
						".$post_string."
		</div>
	</div>
</div>


</body>";

}
?>
