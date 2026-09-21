<h1 align="center">🖥 SEVASTOLINK Screen Saver</h1>

<p align="center">
Windows screen saver that opens the <b>SEVASTOLINK CRT Dashboard</b> in Microsoft Edge Kiosk Mode.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Ready-brightgreen">
  <img src="https://img.shields.io/badge/Platform-Windows-blue">
  <img src="https://img.shields.io/badge/AutoHotkey-v2-orange">
  <img src="https://img.shields.io/badge/Browser-Microsoft%20Edge-lightgrey">
</p>

---

<h2>📌 About</h2>

<p>
This project turns the <b>SEVASTOLINK CRT Dashboard</b> into a Windows screen saver.
</p>

<p>
When Windows activates the screen saver, Microsoft Edge opens the configured dashboard URL in fullscreen Kiosk Mode.
</p>

<p>
Moving the mouse or pressing a key closes the screen saver and returns to Windows.
</p>

---

<h2>⚙️ Configuration</h2>

<p>
Open <b>Sevastolink.ahk</b> and configure the URL of the SEVASTOLINK dashboard:
</p>

<pre>
url := "http://server:8181/monitor"
</pre>

<p>
Replace the URL with the address of the server hosting your dashboard.
</p>

---

<h2>🔨 Compile</h2>

<ol>
  <li>Install <b>AutoHotkey v2</b></li>
  <li>Open <b>Sevastolink.ahk</b></li>
  <li>Compile the script using <b>Ahk2Exe</b></li>
  <li>The result will be <b>Sevastolink.exe</b></li>
  <li>Rename it to <b>Sevastolink.scr</b></li>
</ol>

<pre>
Sevastolink.ahk
      │
      ▼
   Ahk2Exe
      │
      ▼
Sevastolink.exe
      │
      ▼
Sevastolink.scr
</pre>

---

<h2>🖥 Install</h2>

<ol>
  <li>Copy <b>Sevastolink.scr</b> to Windows</li>
  <li>Right-click the file and select <b>Install</b></li>
  <li>Open the Windows screen saver settings</li>
  <li>Select <b>Sevastolink</b></li>
  <li>Configure the desired inactivity time</li>
  <li>Click <b>Preview</b> to test</li>
</ol>

---

<h2>🌐 Requirements</h2>

<ul>
  <li>Windows</li>
  <li>Microsoft Edge</li>
  <li>SEVASTOLINK dashboard available over HTTP</li>
  <li>Network access to the configured server</li>
</ul>

---

<p align="center">
<b>SEVASTOLINK Screen Saver</b> - Turn your Windows display into a live CRT monitoring terminal. 🖥
</p>
