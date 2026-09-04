```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DevOpsLab // Command Center</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Courier New", monospace;
    background: #02040a;
    color: #e8faff;
    overflow-x: hidden;
}

/* ---------- BACKGROUND ---------- */

body::before {
    content: "";
    position: fixed;
    inset: 0;
    background:
        linear-gradient(rgba(0,255,255,0.035) 1px, transparent 1px),
        linear-gradient(90deg, rgba(0,255,255,0.035) 1px, transparent 1px);
    background-size: 50px 50px;
    animation: gridMove 15s linear infinite;
    pointer-events: none;
    z-index: -2;
}

body::after {
    content: "";
    position: fixed;
    inset: 0;
    background:
        radial-gradient(circle at 20% 20%, rgba(0,255,255,.12), transparent 30%),
        radial-gradient(circle at 80% 70%, rgba(140,0,255,.12), transparent 30%);
    pointer-events: none;
    z-index: -3;
}

@keyframes gridMove {
    from {
        background-position: 0 0;
    }
    to {
        background-position: 50px 50px;
    }
}

/* ---------- PARTICLES ---------- */

.particle {
    position: fixed;
    width: 3px;
    height: 3px;
    background: #00ffff;
    border-radius: 50%;
    opacity: .6;
    animation: float 8s infinite ease-in-out;
    pointer-events: none;
    z-index: -1;
}

.p1 { left: 10%; top: 30%; animation-delay: 0s; }
.p2 { left: 30%; top: 70%; animation-delay: 2s; }
.p3 { left: 55%; top: 20%; animation-delay: 4s; }
.p4 { left: 75%; top: 60%; animation-delay: 1s; }
.p5 { left: 90%; top: 25%; animation-delay: 3s; }

@keyframes float {
    0%,100% { transform: translateY(0) scale(1); opacity:.2; }
    50% { transform: translateY(-80px) scale(2); opacity:1; }
}

/* ---------- NAV ---------- */

nav {
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 100;
    padding: 20px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    backdrop-filter: blur(15px);
    background: rgba(2,4,10,.65);
    border-bottom: 1px solid rgba(0,255,255,.15);
}

.logo {
    color: #00ffff;
    font-size: 20px;
    font-weight: bold;
    letter-spacing: 3px;
    text-shadow: 0 0 15px #00ffff;
}

.logo span {
    color: white;
}

nav a {
    color: #8ea9b5;
    text-decoration: none;
    margin-left: 25px;
    font-size: 13px;
    transition: .3s;
}

nav a:hover {
    color: #00ffff;
    text-shadow: 0 0 10px #00ffff;
}

/* ---------- HERO ---------- */

.hero {
    min-height: 100vh;
    padding: 150px 7% 80px;
    display: grid;
    grid-template-columns: 1.1fr .9fr;
    gap: 60px;
    align-items: center;
}

.status {
    display: inline-block;
    padding: 8px 15px;
    border: 1px solid rgba(0,255,255,.4);
    border-radius: 30px;
    color: #00ffff;
    font-size: 12px;
    letter-spacing: 2px;
    background: rgba(0,255,255,.04);
    box-shadow: 0 0 20px rgba(0,255,255,.1);
}

.hero h1 {
    margin-top: 25px;
    font-family: Arial, sans-serif;
    font-size: clamp(50px, 7vw, 100px);
    line-height: .95;
    letter-spacing: -5px;
}

.hero h1 span {
    color: #00ffff;
    text-shadow:
        0 0 10px #00ffff,
        0 0 40px rgba(0,255,255,.5);
}

.hero p {
    margin-top: 30px;
    max-width: 650px;
    color: #91aab5;
    line-height: 1.8;
    font-size: 16px;
}

/* ---------- BUTTONS ---------- */

.buttons {
    margin-top: 35px;
    display: flex;
    gap: 15px;
    flex-wrap: wrap;
}

button,
.btn {
    padding: 14px 22px;
    border-radius: 5px;
    border: 1px solid #00ffff;
    background: rgba(0,255,255,.05);
    color: #00ffff;
    text-decoration: none;
    cursor: pointer;
    font-family: inherit;
    font-weight: bold;
    transition: .3s;
}

button:hover,
.btn:hover {
    background: #00ffff;
    color: #02040a;
    box-shadow: 0 0 30px rgba(0,255,255,.6);
    transform: translateY(-3px);
}

/* ---------- HOLOGRAM ---------- */

.hologram {
    height: 430px;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}

.core {
    width: 230px;
    height: 230px;
    border-radius: 50%;
    border: 1px solid #00ffff;
    box-shadow:
        0 0 30px #00ffff,
        inset 0 0 40px rgba(0,255,255,.2);
    display: flex;
    align-items: center;
    justify-content: center;
    animation: pulse 3s infinite ease-in-out;
}

.core::before,
.core::after {
    content: "";
    position: absolute;
    border-radius: 50%;
    border: 1px dashed rgba(0,255,255,.5);
}

.core::before {
    width: 320px;
    height: 320px;
    animation: spin 12s linear infinite;
}

.core::after {
    width: 390px;
    height: 390px;
    border-color: rgba(160,0,255,.35);
    animation: spinReverse 18s linear infinite;
}

.core-text {
    text-align: center;
    z-index: 2;
}

.core-text strong {
    display: block;
    font-family: Arial;
    font-size: 35px;
    color: #fff;
}

.core-text small {
    color: #00ffff;
}

@keyframes pulse {
    50% { transform: scale(1.08); }
}

@keyframes spin {
    to { transform: rotate(360deg); }
}

@keyframes spinReverse {
    to { transform: rotate(-360deg); }
}

/* ---------- WELCOME ---------- */

.welcome {
    text-align: center;
    padding: 70px 20px;
}

.welcome h2 {
    font-family: Arial;
    font-size: 42px;
}

.welcome h2 span {
    color: #00ffff;
    text-shadow: 0 0 20px #00ffff;
}

.welcome p {
    margin-top: 15px;
    color: #8299a5;
}

/* ---------- SECTION ---------- */

section {
    padding: 100px 7%;
}

.section-title {
    margin-bottom: 50px;
}

.section-title small {
    color: #00ffff;
    letter-spacing: 3px;
}

.section-title h2 {
    font-family: Arial;
    font-size: 48px;
    margin-top: 10px;
}

/* ---------- CARDS ---------- */

.cards {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.card {
    padding: 28px;
    min-height: 200px;
    border: 1px solid rgba(0,255,255,.15);
    background: rgba(255,255,255,.025);
    backdrop-filter: blur(15px);
    border-radius: 12px;
    transition: .4s;
}

.card:hover {
    transform: translateY(-8px);
    border-color: #00ffff;
    box-shadow: 0 0 35px rgba(0,255,255,.12);
}

.icon {
    font-size: 35px;
    margin-bottom: 20px;
}

.card h3 {
    color: #fff;
    margin-bottom: 12px;
}

.card p {
    color: #8299a5;
    line-height: 1.6;
    font-size: 13px;
}

/* ---------- TERMINAL ---------- */

.terminal {
    max-width: 1000px;
    margin: auto;
    background: #010205;
    border: 1px solid rgba(0,255,255,.25);
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 0 50px rgba(0,255,255,.08);
}

.terminal-header {
    padding: 13px 18px;
    background: rgba(255,255,255,.04);
    border-bottom: 1px solid rgba(255,255,255,.08);
    color: #71858f;
}

.dot {
    display: inline-block;
    width: 9px;
    height: 9px;
    border-radius: 50%;
    background: #59666d;
    margin-right: 6px;
}

.terminal-body {
    padding: 30px;
    min-height: 350px;
    color: #00ff9d;
    line-height: 2;
    font-size: 14px;
}

.cursor {
    display: inline-block;
    width: 8px;
    height: 16px;
    background: #00ff9d;
    animation: blink .8s infinite;
}

@keyframes blink {
    50% { opacity: 0; }
}

/* ---------- PIPELINE ---------- */

.pipeline {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 15px;
}

.node {
    width: 180px;
    padding: 25px 15px;
    text-align: center;
    border: 1px solid rgba(0,255,255,.25);
    border-radius: 10px;
    background: rgba(255,255,255,.025);
    transition: .3s;
}

.node:hover {
    border-color: #00ffff;
    box-shadow: 0 0 25px rgba(0,255,255,.2);
    transform: scale(1.05);
}

.node-icon {
    font-size: 35px;
    margin-bottom: 10px;
}

.node strong {
    display: block;
    color: white;
}

.node small {
    color: #00ffff;
}

.arrow {
    color: #00ffff;
    font-size: 25px;
    animation: arrowPulse 1.5s infinite;
}

@keyframes arrowPulse {
    50% { opacity: .2; transform: translateX(5px); }
}

/* ---------- STATUS ---------- */

.status-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.status-card {
    padding: 25px;
    border-left: 3px solid #00ff9d;
    background: rgba(0,255,150,.03);
}

.status-card h3 {
    color: #00ff9d;
    font-size: 13px;
}

.status-card strong {
    display: block;
    margin-top: 10px;
    font-family: Arial;
    font-size: 25px;
}

/* ---------- FOOTER ---------- */

footer {
    padding: 40px 7%;
    border-top: 1px solid rgba(0,255,255,.1);
    color: #566b75;
    text-align: center;
    font-size: 12px;
}

footer span {
    color: #00ffff;
}

/* ---------- RESPONSIVE ---------- */

@media(max-width:900px) {

    .hero {
        grid-template-columns: 1fr;
    }

    .cards,
    .status-grid {
        grid-template-columns: repeat(2,1fr);
    }

    nav a {
        display: none;
    }
}

@media(max-width:550px) {

    .cards,
    .status-grid {
        grid-template-columns: 1fr;
    }

    .hero h1 {
        font-size: 55px;
    }

    .section-title h2 {
        font-size: 36px;
    }

    .hologram {
        transform: scale(.75);
    }
}
</style>
</head>

<body>

<div class="particle p1"></div>
<div class="particle p2"></div>
<div class="particle p3"></div>
<div class="particle p4"></div>
<div class="particle p5"></div>

<nav>
    <div class="logo">⚡ DEVOPS<span>LAB</span></div>

    <div>
        <a href="#platform">PLATFORM</a>
        <a href="#pipeline">PIPELINE</a>
        <a href="#terminal">TERMINAL</a>
        <a href="#status">STATUS</a>
    </div>
</nav>

<!-- HERO -->

<header class="hero">

    <div>

        <div class="status">
            ● SYSTEM ONLINE
        </div>

        <h1>
            BUILD.<br>
            <span>DEPLOY.</span><br>
            SCALE.
        </h1>

        <p>
            Welcome to a futuristic DevOps command center powered by
            GitHub, Jenkins, Docker and AWS.
            Automate software delivery from source code to production.
        </p>

        <div class="buttons">
            <a class="btn" href="#pipeline">EXPLORE PIPELINE →</a>

            <button onclick="welcomeUser()">
                🔊 PLAY WELCOME
            </button>
        </div>

    </div>

    <div class="hologram">

        <div class="core">

            <div class="core-text">
                <strong>ONLINE</strong>
                <small>DEVOPS CORE</small>
            </div>

        </div>

    </div>

</header>

<!-- WELCOME -->

<div class="welcome">

    <h2>
        Welcome, <span>Asim Khan</span> 👋
    </h2>

    <p>
        Your cloud infrastructure is online.
        Your deployment system is ready.
    </p>

    <button onclick="welcomeUser()" style="margin-top:25px;">
        🔊 HEAR SYSTEM GREETING
    </button>

</div>

<!-- PLATFORM -->

<section id="platform">

    <div class="section-title">
        <small>// PLATFORM</small>
        <h2>Everything connected.</h2>
    </div>

    <div class="cards">

        <div class="card">
            <div class="icon">🐙</div>
            <h3>GitHub</h3>
            <p>
                Source control and collaboration.
                Every code change becomes part of the delivery pipeline.
            </p>
        </div>

        <div class="card">
            <div class="icon">⚙️</div>
            <h3>Jenkins</h3>
            <p>
                Continuous integration and deployment automation
                orchestrating the software delivery process.
            </p>
        </div>

        <div class="card">
            <div class="icon">🐳</div>
            <h3>Docker</h3>
            <p>
                Applications are packaged into portable containers
                for consistent deployments.
            </p>
        </div>

        <div class="card">
            <div class="icon">☁️</div>
            <h3>AWS</h3>
            <p>
                Cloud compute infrastructure running the application
                inside an EC2 environment.
            </p>
        </div>

    </div>

</section>

<!-- PIPELINE -->

<section id="pipeline">

    <div class="section-title">
        <small>// CI/CD PIPELINE</small>
        <h2>From commit to container.</h2>
    </div>

    <div class="pipeline">

        <div class="node">
            <div class="node-icon">👨‍💻</div>
            <strong>Developer</strong>
            <small>git push</small>
        </div>

        <div class="arrow">→</div>

        <div class="node">
            <div class="node-icon">🐙</div>
            <strong>GitHub</strong>
            <small>Source Code</small>
        </div>

        <div class="arrow">→</div>

        <div class="node">
            <div class="node-icon">⚙️</div>
            <strong>Jenkins</strong>
            <small>CI/CD</small>
        </div>

        <div class="arrow">→</div>

        <div class="node">
            <div class="node-icon">🐳</div>
            <strong>Docker</strong>
            <small>Build Image</small>
        </div>

        <div class="arrow">→</div>

        <div class="node">
            <div class="node-icon">☁️</div>
            <strong>AWS EC2</strong>
            <small>Deployment</small>
        </div>

    </div>

</section>

<!-- TERMINAL -->

<section id="terminal">

    <div class="section-title">
        <small>// SYSTEM TERMINAL</small>
        <h2>Deployment console.</h2>
    </div>

    <div class="terminal">

        <div class="terminal-header">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            &nbsp; devops@ec2-server
        </div>

        <div class="terminal-body" id="terminalOutput">

            <div>devops@ec2:~$ systemctl status devops-core</div>

            <div>✓ Jenkins agent ................. ONLINE</div>
            <div>✓ Docker engine ................. ONLINE</div>
            <div>✓ Nginx container ................ ONLINE</div>
            <div>✓ AWS infrastructure ........... ONLINE</div>

            <br>

            <div>devops@ec2:~$ docker ps</div>

            <div>
                CONTAINER
                &nbsp;&nbsp; IMAGE
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STATUS
            </div>

            <div>
                devops-demo
                &nbsp;&nbsp; devops-demo:latest
                &nbsp;&nbsp; UP
            </div>

            <br>

            <div>devops@ec2:~$ ./deployment-status.sh</div>

            <div>
                <span id="typing"></span><span class="cursor"></span>
            </div>

        </div>

    </div>

</section>

<!-- STATUS -->

<section id="status">

    <div class="section-title">
        <small>// INFRASTRUCTURE</small>
        <h2>System status.</h2>
    </div>

    <div class="status-grid">

        <div class="status-card">
            <h3>JENKINS</h3>
            <strong>ONLINE</strong>
        </div>

        <div class="status-card">
            <h3>DOCKER</h3>
            <strong>RUNNING</strong>
        </div>

        <div class="status-card">
            <h3>CONTAINER</h3>
            <strong>HEALTHY</strong>
        </div>

        <div class="status-card">
            <h3>DEPLOYMENT</h3>
            <strong>READY</strong>
        </div>

    </div>

</section>

<footer>

    ⚡ <span>DEVOPSLAB</span>
    — Build • Deploy • Scale

    <br><br>

    CI/CD Demonstration • GitHub • Jenkins • Docker • AWS

</footer>

<script>

/* ---------- VOICE ---------- */

function welcomeUser() {

    if (!("speechSynthesis" in window)) {
        alert("Your browser does not support speech synthesis.");
        return;
    }

    speechSynthesis.cancel();

    const message =
        "Welcome, Asim Khan. How are you doing today? " +
        "Your Cyber security environment is online. " +
        "Jenkins is operational, Docker is running, " +
        "and your application has been successfully deployed to AWS.";

    const speech = new SpeechSynthesisUtterance(message);

    speech.rate = 0.9;
    speech.pitch = 1.0;
    speech.volume = 1.0;

    speechSynthesis.speak(speech);
}


/* ---------- TERMINAL ANIMATION ---------- */

const messages = [
    "Scanning infrastructure...",
    "Checking Jenkins agent...",
    "Checking Docker engine...",
    "Verifying container...",
    "Checking deployment...",
    "All systems operational.",
    "Deployment pipeline ready."
];

let messageIndex = 0;
let charIndex = 0;

function typeMessage() {

    const element = document.getElementById("typing");

    if (charIndex < messages[messageIndex].length) {

        element.textContent += messages[messageIndex].charAt(charIndex);

        charIndex++;

        setTimeout(typeMessage, 45);

    } else {

        setTimeout(() => {

            element.textContent = "";
            charIndex = 0;

            messageIndex++;

            if (messageIndex >= messages.length) {
                messageIndex = 0;
            }

            typeMessage();

        }, 1200);
    }
}

typeMessage();

</script>

</body>
</html>
```
