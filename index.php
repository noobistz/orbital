<?php
	session_start();
	include_once("db.php");
?>

<html>
<head>
	<title>Smart Scheduler</title>
	<link rel="stylesheet" href="stylesheet.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
	<nav>
		<ul>
			<li><span onclick="openNav1()"><b>Select Your Course</b></span></li>
			<li>Instructions</li><!-- To add, if needed?-->
		<ul>
	</nav>
	<br/>

	<div id="faculties" class="overlay">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav1()">x</a>
	  <section class="selectCourse1">
		<span onclick="openNav2()">Arts & Social Sciences</span>
		<div id="fass" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav2()">x</a>
		  <section class="overlay-content">
			<a href="#">Chinese Language</a>
			<a href="#">Chinese Studies</a>
			<a href="#">Japanese Studies</a>
			<a href="#">Malay Studies</a>
			<a href="#">South Asian Studies</a>
			<a href="#">Southeast Asian Studies</a>
			<a href="#">English Language</a>
			<a href="#">English Literature</a>
			<a href="#">History</a>
			<a href="#">Philosophy</a>
			<a href="#">Theatre Studies</a>
			<a href="#">Communications & New Media</a>
			<a href="#">Economics</a>
			<a href="#">Geography</a>
			<a href="#">Political Science</a>
			<a href="#">Psychology</a>
			<a href="#">Social Work</a>
			<a href="#">Sociology</a>
			<a href="#">Environmental Studies in Geography</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav3()">Business & Accountancy</span>
		<div id="ba" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav3()">x</a>
		  <section class="overlay-content">
			<a href="#">Business Administration (Accountancy)</a>
			<a href="#">Business Administration</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav4()">Computing</span>
		<div id="soc" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav4()">x</a>
		  <section class="overlay-content">
				<?php
					$sql_all_soc = "SELECT * FROM courses WHERE (id='1' or id='2' or id='3' or id='4' or id='5') ORDER BY id ASC";
					$res = mysqli_query($db, $sql_all_soc) or die(mysql_error());

					$courses = "";

					if(mysqli_num_rows($res) > 0) {
						while($row = mysqli_fetch_assoc($res)) {
							$id = $row['id'];
							$name = $row['name'];
							$courses .= "<div><a href='view_mods.php?pid=$id'>$name</a></div>";
						}
						echo $courses;
					}
				?>
			<!--<a href="#"><span id="BAC">Business Analytics</span></a>
			<a href="#">Computer Science Courses</a>
			<a href="#">Information Security</a>
			<a href="#">Information System</a>
			<a href="#">Computer Engineering</a>-->
		  </section>
		</div>
		<br />
		<span onclick="openNav5()">Dentistry</span>
		<div id="dentistry" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav5()">x</a>
		  <section class="overlay-content">
			<a href="#">Dentistry</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav6()">Design & Environment</span>
		<div id="sde" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav6()">x</a>
		  <section class="overlay-content">
			<a href="#">Architecture</a>
			<a href="#">Industrial Design</a>
			<a href="#">Project & Facilities Management</a>
			<a href="#">Real Estate</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav7()">Engineering</span>
		<div id="engineering" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav7()">x</a>
		  <section class="overlay-content">
			<a href="#">Engineering</a>
			<a href="#">Biomedical Engineering</a>
			<a href="#">Chemical Engineering</a>
			<a href="#">Civil Engineering</a>
			<a href="#">Engineering Science</a>
			<a href="#">Environmental Engineering</a>
			<a href="#">Electrical Engineering</a>
			<a href="#">Industrial and System Engineering</a>
			<a href="#">Material Science & Engineering</a>
			<a href="#">Mechanical Engineering</a>
			<a href="#">Computer Engineering</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav8()">Law</span>
		<div id="law" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav8()">x</a>
		  <section class="overlay-content">
			<a href="#">Undergraduate Law Programme</a>
			<a href="#">Graduate LL.B. Programme</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav9()">Medicine</span>
		<div id="med" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav9()">x</a>
		  <section class="overlay-content">
			<a href="#">Medicine</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav10()">Nursing</span>
		<div id="nursing" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav10()">x</a>
		  <section class="overlay-content">
			<a href="#">Nursing</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav11()">Music</span>
		<div id="music" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav11()">x</a>
		  <section class="overlay-content">
			<a href="#">Music</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav12()">Science</span>
		<div id="science" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav12()">x</a>
		  <section class="overlay-content">
			<a href="#">Applied Mathematics</a>
			<a href="#">Applied Mathematics with specialisation in Mathematical Modelling and Data Analytics</a>
			<a href="#">Applied Mathematics with specialisation in Operations Research and Financial Mathematics</a>
			<a href="#">Chemistry</a>
			<a href="#">Chemistry (with specialisation in Materials Chemistry)</a>
			<a href="#">Chemistry (with specialistaion in Medicinal Chemistry)</a>
			<a href="#">Chemistry (with specialisation in Environment and Energy)</a>
			<a href="#">Computational Biology</a>
			<a href="#">Data Science and Analytics</a>
			<a href="#">Food Science and Technology</a>
			<a href="#">Life Sciences</a>
			<a href="#">Life Sciences (with specialisation in Biomedical Science)</a>
			<a href="#">Life Sciences (with specialisation in Environmental Biology)</a>
			<a href="#">Life Sciences (with specialisation in Molecular & Cell Biology)</a>
			<a href="#">Mathematics</a>
			<a href="#">Physics</a>
			<a href="#">Physics (with specialisation in Astrophysics)</a>
			<a href="#">Physics (with specialisation in Physics in Technology)</a>
			<a href="#">Quantitative Finance</a>
			<a href="#">Statistics</a>
			<a href="#">Statistics (with specialisation in Biostatistics)</a>
			<a href="#">Statistics (with specialisation in Finance and Business Statistics)</a>
			<a href="#">Pharmacy</a>
			<a href="#">Environmental Studies in Biology</a>
		  </section>
		</div>
		<br />
		<span onclick="openNav13()">Pharmacy</span>
		<div id="pharmacy" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav13()">x</a>
		  <section class="overlay-content">
			<a href="#">Pharmacy</a>
		  </section>
		</div>
	  </section>
	</div>

	<div class="col-sm-9">
		<table border=3 height="900px" width="100%" >
			<tr class="mainTimetable1">
				<th colspan="2">&nbsp;</th>
				<th style="text-align:center">1</th>
				<th style="text-align:center">2</th>
				<th style="text-align:center">3</th>
				<th style="text-align:center">4</th>
				<th style="text-align:center">5</th>
				<th style="text-align:center">6</th>
			</tr>
			<tr class="mainTimetable2">
				<th rowspan="2" style="text-align:center;background-color: white">Year 1</th>
				<th style="text-align:center">Semester 1</th>
				<td id="Y1S11" ondrop="drop(event)" ondragover="allowDrop(event)" style="text-align:center"></td>
				<td id="Y1S11" ondrop="drop(event)" ondragover="allowDrop(event)" style="text-align:center"></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable1">
				<th style="text-align:center">Semester 2</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable2">
				<th rowspan="2" style="text-align:center;background-color: white">Year 2</th>
				<th style="text-align:center">Semester 1</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable1">
				<th style="text-align:center">Semester 2</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable2">
				<th rowspan="2" style="text-align:center;background-color: white">Year 3</th>
				<th style="text-align:center">Semester 1</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable1">
				<th style="text-align:center">Semester 2</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable2">
				<th rowspan="2" style="text-align:center;background-color: white">Year 4</th>
				<th style="text-align:center">Semester 1</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr class="mainTimetable1">
				<th style="text-align:center">Semester 2</th>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</div>

	<div class="col-sm-3">
		<table border=3  width="100%">
			<tr class="modsTableHeader">
				<td>
				<h1 style="text-align: center">Modules to Clear</h1>
				</td>
			</tr>
			<tr class="modulesToClear">
				<td>
				<h1 style="text-align: center">Cores</h1>
				<div class="mods"><span id="cores" class="dragObject" draggable="true" ondragstart="drag(event)"> Mod </span></div>
				</td>
			</tr >
			<tr class="modulesToClear">
				<td id="electives">
				<h1 style="text-align: center">Electives</h1>
				<div class="mods">To put draggable thingy</div>
				</td>
			</tr>
			<tr id="unrestricted" class="modulesToClear">
				<td>
				<h1 style="text-align: center">Unrestricted Electives</h1>
				<div class="mods">To put draggable thingy</div>
				</td>
			</tr>
			<tr id="GEMs" class="modulesToClear">
				<td>
				<h1 style="text-align: center">GEMs</h1>
				<div class="mods">To put draggable thingy</div>
				</td>
			</tr>
		</table>
	</div>

	<footer>Smart Scheduler 2016&copy</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="javaScript.js"></script>
</body>
</html>