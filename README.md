<div align="center">
  <h1>Scripts for my setup</h1>
</div>

<div align="center">
  <img src="https://img.shields.io/maintenance/yes/2020?label=maintained&style=flat-square"> <img src="https://img.shields.io/badge/contribution-welcome-brightgreen&?style=flat-square">

  <h2>Welcome to the scripts of Kelaun</h2>
</div>

<div align="left">
  <p>
    This repository contains the code for the scripts that are used for each new Arch Linux installation by puppet.<br>
  </p>
	<br>
	<h3>Autokey</h3>
		<p>
			<ul>
				<li><code>WoWStart.sh</code> is a script used to enable autoclick in WoW for use with lazy macros.</li>
				<li><code>WoWStop.sh</code> is a script used to disable autoclick in WoW for use with lazy macros.</li>
			</ul>
		</p>
	<h3>Dmenu</h3>
		<p>
			<ul>
				<li><code>dmenu-lpass</code> is a script used to access lastpass vault using <code>dmenu</code> and <code>lpass</code>.</li>
				<li><code>dmenu-recency.sh</code> is a script that wraps around <code>dmenu</code> to enable recency and different ordering based on usage of software.</li>
				<li><code>dmenu.sh</code> is a script to run <code>dmenu</code> using custom configuration.</li>
			</ul>
		</p>
	<h3>Puppet</h3>
		<p>
			<ul>
				<li><code>post-merge</code> is a script used by <code>puppet</code> to apply its configuration when there are changes detected once the repository is pulled.</li>
			</ul>
		</p>
	<h3>Spectrwm</h3>
		<p>
			<ul>
				<li><code>autostart.sh</code> is a script used by <code>spectrwm</code> to define what needs to be run at boot.</li>
				<li><code>baraction.sh</code> is a script that output custom data to the bar of <code>spectrwm</code>.</li>
				<li><code>exitmenu.sh</code> is a script used to shutdown, reboot, or suspend the system.</li>
				<li><code>screenshot.sh</code> is a script used as a wrapper around scrot.</li>
			</ul>
		</p>
	<h3>Utils</h3>
		<p>
			<ul>
				<li><code>kfetch</code> is a custom fetch script focused on speed.</li>
				<li><code>lock.service</code> is a systemd service to enable a screenlock when suspend is called.</li>
				<li><code>qemu.sh</code> is a wrapper around <code>qemu</code>.</li>
				<li><code>twitch</code> is a wrapper around <code>mpv</code> and <code>youtube-dl</code> to enable direct streaming from twitch.</li>
				<li><code>volume.sh</code> is a script used to manage volume and send notifications upon changes.</li>
			</ul>
		</p>
</div>
