<h1 align="center">🖥 SEVASTOLINK Wallpaper</h1>

<p align="center">
Live wallpaper for <b>Wallpaper Engine</b> that shows the <b>SEVASTOLINK CRT Dashboard</b> with real-time server telemetry.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Ready-brightgreen">
  <img src="https://img.shields.io/badge/Platform-Windows-blue">
  <img src="https://img.shields.io/badge/Wallpaper%20Engine-Web-orange">
  <img src="https://img.shields.io/badge/Stack-HTML%20%2F%20CSS%20%2F%20JS-red">
</p>

---

<h2>📌 About</h2>

<p>
This project turns the <b>SEVASTOLINK CRT Dashboard</b> into an animated desktop wallpaper.
</p>

<p>
The wallpaper is a single HTML page that polls the SEVASTOLINK API and displays CPU, RAM, disk, swap, temperature, network speed and LAN IP in a CRT-style terminal.
</p>

<p>
The API URL and the refresh interval can be changed directly in the <b>Wallpaper Engine</b> properties panel, with no need to edit any code.
</p>

---

<h2>📊 Telemetry</h2>

<p>
The page reads plain text from the API, one <b>KEY=VALUE</b> per line:
</p>

<pre>
CPU_USAGE=12.5
RAM_PERCENT=48.2
DISK_PERCENT=63.0
DISK_USED=210
DISK_TOTAL=500
SWAP_PERCENT=3.1
CPU_TEMP=51.0
LAN_IP=192.168.0.10
DOWNLOAD=1.25
UPLOAD=0.30
</pre>

<p>
Bars and values change color (normal, warning, critical) according to the load, and the status pill shows <b>ONLINE</b> or <b>LINK LOST</b> depending on the connection.
</p>

---

<h2>📁 Project Structure</h2>

<pre>
SEVASTOLINK/
├── index.html
├── project.json
└── preview.png
</pre>

---

<h2>⚙️ Configuration</h2>

<p>
The wallpaper exposes two properties in <b>project.json</b>, shown in the Wallpaper Engine panel:
</p>

<ul>
  <li><b>URL da API</b> (<code>apiurl</code>) - address of the SEVASTOLINK API</li>
  <li><b>Intervalo de atualização (ms)</b> (<code>pollms</code>) - refresh interval, from 500 ms to 10000 ms</li>
</ul>

<p>
The default values are defined in <b>project.json</b>:
</p>

<pre>
"apiurl": {
  "order": 0,
  "text": "URL da API",
  "type": "textinput",
  "value": "http://server:8181/api/rainmeter"
}
</pre>

<p>
Replace the URL with the address of the server hosting your API.
</p>

---

<h2>🖥 Install</h2>

<ol>
  <li>Copy the <b>SEVASTOLINK</b> folder to <b>Steam\steamapps\common\wallpaper_engine\projects\myprojects\</b></li>
  <li>Make sure <b>project.json</b> is directly inside the folder, next to <b>index.html</b></li>
  <li>Open <b>Wallpaper Engine</b> and go to the <b>Installed</b> tab</li>
  <li>Select <b>SEVASTOLINK</b></li>
  <li>Set the <b>API URL</b> and the <b>refresh interval</b> in the properties panel</li>
</ol>

<p>
You can also use <b>Open from File</b> in the Installed tab and select <b>index.html</b> or <b>project.json</b>.
</p>

---

<h2>🌐 Run in the Browser</h2>

<p>
The page also works when opened directly in a browser, which is useful for testing.
</p>

<p>
In this case there is no properties panel, so edit the values at the top of the script in <b>index.html</b>:
</p>

<pre>
let API_URL = "http://server:8181/api/rainmeter";
let POLL_MS = 2000;
</pre>

<p>
The API must allow CORS when the page is opened from a local file.
</p>

---

<h2>🔧 Changes from the Original HTML</h2>

<p>
The original dashboard had the API URL and the refresh interval fixed in the code. To make them configurable from the Wallpaper Engine panel, the script needed a few changes.
</p>

<h3>1. Settings changed from const to let</h3>

<p>
A <b>const</b> value cannot be changed after it is declared. Since Wallpaper Engine sends new values at runtime, both settings became <b>let</b>, and a timer variable was added:
</p>

<pre>
// Before
let API_URL = "http://server:8181/api/rainmeter";
const POLL_MS = 2000;

// After
let API_URL = "http://server:8181/api/rainmeter";
let POLL_MS = 2000;
let pollTimer = null;
</pre>

<h3>2. New function to restart the polling</h3>

<p>
An interval created with <b>setInterval</b> does not change speed by itself. When the refresh interval changes, the old timer is cleared and a new one is created:
</p>

<pre>
function reiniciarPolling(){
  if (pollTimer) clearInterval(pollTimer);
  pollTimer = setInterval(poll, POLL_MS);
}
</pre>

<h3>3. Wallpaper Engine property listener</h3>

<p>
Wallpaper Engine calls <b>applyUserProperties</b> when the wallpaper loads and every time a property is edited in the panel. The names <b>apiurl</b> and <b>pollms</b> must match the ones in <b>project.json</b>:
</p>

<pre>
window.wallpaperPropertyListener = {
  applyUserProperties: function(props){
    if (props.apiurl){
      API_URL = props.apiurl.value.trim();
    }
    if (props.pollms){
      POLL_MS = props.pollms.value;
      reiniciarPolling();
    }
  }
};
</pre>

<h3>4. Start of the polling</h3>

<p>
The original last lines were replaced, so the page still works when opened directly in a browser (where the listener is never called):
</p>

<pre>
// Before
poll();
setInterval(poll, POLL_MS);

// After
poll();
reiniciarPolling();
</pre>

<h3>5. Properties in project.json</h3>

<p>
The <b>general.properties</b> block was added to <b>project.json</b> with the <b>apiurl</b> (text input) and <b>pollms</b> (slider) options, as shown in the Configuration section.
</p>

<p>
Nothing else in the dashboard (layout, metrics, colors, log) was changed.
</p>

---

<h2>🌐 Requirements</h2>

<ul>
  <li>Windows</li>
  <li>Wallpaper Engine (Steam)</li>
  <li>SEVASTOLINK API available over HTTP</li>
  <li>Network access to the configured server (VPN such as Tailscale, if needed)</li>
</ul>

---

<p align="center">
<b>SEVASTOLINK Wallpaper</b> - Turn your desktop into a live CRT monitoring terminal. 🖥
</p>
