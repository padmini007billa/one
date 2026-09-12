<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#ffffff">
<meta name="description" content="NexusShop — simple, modern and user-friendly online shopping.">

<title>NexusShop — Shop Simply</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
/* =========================================================
   DESIGN SYSTEM
========================================================= */
:root{
    --primary:#171923;
    --primary-2:#252838;
    --accent:#e87551;
    --accent-dark:#c95738;
    --accent-soft:#fff0ea;

    --green:#159a79;
    --green-soft:#eaf8f3;

    --yellow:#f5b942;
    --yellow-soft:#fff8df;

    --background:#f7f8fa;
    --surface:#ffffff;
    --surface-2:#f1f3f6;

    --text:#171923;
    --muted:#687080;
    --muted-2:#9299a6;

    --border:#e7e9ee;

    --radius-sm:10px;
    --radius:16px;
    --radius-lg:24px;

    --shadow:0 4px 20px rgba(20,25,40,.06);
    --shadow-lg:0 16px 45px rgba(20,25,40,.12);

    --container:1240px;
    --transition:.2s ease;
}

/* =========================================================
   RESET
========================================================= */
*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
    background:var(--background);
    color:var(--text);
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
}

body.no-scroll{
    overflow:hidden;
}

button,
input,
select{
    font:inherit;
}

button{
    border:0;
    cursor:pointer;
}

a{
    color:inherit;
    text-decoration:none;
}

img{
    display:block;
    max-width:100%;
}

ul{
    list-style:none;
}

.container{
    width:min(100% - 32px,var(--container));
    margin:auto;
}

/* =========================================================
   ACCESSIBILITY
========================================================= */
.sr-only{
    position:absolute;
    width:1px;
    height:1px;
    padding:0;
    margin:-1px;
    overflow:hidden;
    clip:rect(0,0,0,0);
    white-space:nowrap;
    border:0;
}

:focus-visible{
    outline:3px solid rgba(232,117,81,.35);
    outline-offset:3px;
}

/* =========================================================
   BUTTONS
========================================================= */
.btn{
    min-height:46px;
    padding:0 20px;
    border-radius:12px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:8px;
    font-size:14px;
    font-weight:700;
    transition:var(--transition);
}

.btn-primary{
    color:#fff;
    background:var(--accent);
}

.btn-primary:hover{
    background:var(--accent-dark);
    transform:translateY(-1px);
}

.btn-dark{
    background:var(--primary);
    color:#fff;
}

.btn-dark:hover{
    background:var(--primary-2);
}

.btn-light{
    background:var(--surface);
    color:var(--text);
    border:1px solid var(--border);
}

.btn-light:hover{
    background:var(--surface-2);
}

.btn-block{
    width:100%;
}

/* =========================================================
   TOP BAR
========================================================= */
.topbar{
    background:var(--primary);
    color:#fff;
    font-size:12px;
}

.topbar-inner{
    min-height:36px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;
}

.topbar p{
    opacity:.9;
}

.topbar-links{
    display:flex;
    gap:18px;
    opacity:.8;
}

/* =========================================================
   HEADER
========================================================= */
.header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(255,255,255,.94);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--border);
}

.header-main{
    min-height:76px;
    display:flex;
    align-items:center;
    gap:28px;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    flex-shrink:0;
    font-size:22px;
    font-weight:800;
    letter-spacing:-.5px;
}

.logo-mark{
    width:40px;
    height:40px;
    border-radius:12px;
    display:grid;
    place-items:center;
    color:#fff;
    background:var(--accent);
    box-shadow:0 6px 18px rgba(232,117,81,.25);
}

.logo span span{
    color:var(--accent);
}

/* Search */
.search{
    flex:1;
    max-width:580px;
    position:relative;
}

.search input{
    width:100%;
    height:46px;
    padding:0 48px 0 44px;
    border:1px solid var(--border);
    border-radius:12px;
    background:var(--surface-2);
    color:var(--text);
    outline:none;
    transition:var(--transition);
}

.search input:focus{
    border-color:var(--accent);
    background:#fff;
    box-shadow:0 0 0 4px rgba(232,117,81,.08);
}

.search .search-icon{
    position:absolute;
    left:16px;
    top:50%;
    transform:translateY(-50%);
    color:var(--muted);
}

.search button{
    position:absolute;
    right:6px;
    top:6px;
    width:34px;
    height:34px;
    border-radius:9px;
    background:var(--accent);
    color:#fff;
}

/* Header actions */
.header-actions{
    margin-left:auto;
    display:flex;
    align-items:center;
    gap:4px;
}

.icon-button{
    position:relative;
