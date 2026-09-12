<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Everyday goods, chosen well</title>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Public+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
/* ============ TOKENS ============ */
:root{
  --paper:#f6f2e9;
  --paper-raised:#fffdf8;
  --ink:#201a14;
  --ink-soft:#5c5346;
  --line:rgba(32,26,20,.14);
  --forest:#2f4b3c;
  --forest-deep:#203527;
  --marigold:#e8a33d;
  --marigold-deep:#c6852a;
  --clay:#b5482f;
  --clay-deep:#96371f;
  --ok:#3d7a5c;
  --radius:14px;
  --radius-sm:8px;
  --focus:0 0 0 3px rgba(232,163,61,.55);
  --container:1220px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
@media (prefers-reduced-motion:reduce){
  html{scroll-behavior:auto}
  *{animation-duration:.001ms !important;transition-duration:.001ms !important}
}
body{
  font-family:'Public Sans',system-ui,-apple-system,sans-serif;
  background:var(--paper);
  color:var(--ink);
  line-height:1.5;
  -webkit-font-smoothing:antialiased;
}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit}
input,select{font-family:inherit;font-size:inherit}
:focus-visible{outline:none;box-shadow:var(--focus);border-radius:6px}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}
.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}

/* ============ BUTTONS ============ */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:13px 26px;border-radius:999px;font-weight:700;font-size:15px;transition:transform .18s ease,box-shadow .18s ease,background .18s ease;border:2px solid transparent;white-space:nowrap}
.btn-marigold{background:var(--marigold);color:var(--ink)}
.btn-marigold:hover{background:var(--marigold-deep);transform:translateY(-2px);box-shadow:0 10px 22px rgba(198,133,42,.35)}
.btn-forest{background:var(--forest);color:#fff}
.btn-forest:hover{background:var(--forest-deep);transform:translateY(-2px);box-shadow:0 10px 22px rgba(32,53,39,.30)}
.btn-line{background:transparent;color:var(--paper);border-color:rgba(255,255,255,.4)}
.btn-line:hover{background:rgba(255,255,255,.14);border-color:rgba(255,255,255,.7)}
.btn-outline{background:transparent;color:var(--ink);border-color:var(--line)}
.btn-outline:hover{background:var(--ink);color:var(--paper);border-color:var(--ink)}
.btn-sm{padding:9px 18px;font-size:13px}
.btn:disabled{opacity:.5;cursor:not-allowed;transform:none !important;box-shadow:none !important}

/* ============ HEADER ============ */
header{position:sticky;top:0;z-index:200;background:rgba(246,242,233,.90);backdrop-filter:blur(14px);-webkit-backdrop-filter:blur(14px);border-bottom:1px solid var(--line)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:18px;padding:14px 0;min-height:66px}
.brand{display:flex;align-items:center;gap:9px;font-family:'Fraunces',serif;font-weight:600;font-size:23px;letter-spacing:-.2px;flex-shrink:0}
.brand .dot{color:var(--marigold)}
nav.main-nav ul{display:flex;gap:2px;list-style:none;align-items:center}
nav.main-nav li a{display:block;padding:9px 15px;border-radius:999px;font-weight:600;font-size:14px;color:var(--ink-soft);transition:background .18s,color .18s}
nav.main-nav li a:hover,nav.main-nav li a.active{background:rgba(32,26,20,.06);color:var(--ink)}
.header-actions{display:flex;align-items:center;gap:4px;flex-shrink:0}
.icon-btn{width:42px;height:42px;display:grid;place-items:center;border-radius:50%;font-size:17px;color:var(--ink-soft);transition:background .18s,color .18s;position:relative}
.icon-btn:hover{background:rgba(32,26,20,.06);color:var(--ink)}
.icon-btn.active-heart{color:var(--clay)}
.badge-count{position:absolute;top:-1px;right:-1px;background:var(--clay);color:#fff;font-size:10px;font-weight:800;width:18px;height:18px;border-radius:50%;display:grid;place-items:center;border:2px solid var(--paper)}
.search-wrap{display:flex;align-items:center;background:var(--paper-raised);border-radius:999px;padding:0 8px 0 16px;border:1.5px solid var(--line);min-width:230px;transition:border-color .18s,box-shadow .18s}
.search-wrap:focus-within{border-color:var(--marigold-deep);box-shadow:var(--focus)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:10px 0;font-size:14px;color:var(--ink)}
.search-wrap input::placeholder{color:var(--ink-soft);opacity:.65}
.search-wrap button{padding:8px;color:var(--ink-soft);font-size:15px;border-radius:50%}
.search-wrap button:hover{color:var(--forest)}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:50%;font-size:19px;background:rgba(32,26,20,.06)}
#mobileMenu{display:none;background:var(--paper);border-top:1px solid var(--line);padding:10px 0 18px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:2px}
#mobileMenu ul li a{display:flex;align-items:center;gap:12px;padding:13px 16px;border-radius:var(--radius-sm);font-weight:600}
#mobileMenu ul li a:hover{background:rgba(32,26,20,.06)}
#mobileMenu ul li a i{width:20px;color:var(--ink-soft)}

/* ============ HERO ============ */
.hero{position:relative;background:var(--forest);border-radius:20px;overflow:hidden;margin:20px 24px 0;min-height:460px;display:flex;align-items:stretch}
.hero-grid{display:grid;grid-template-columns:1.1fr .9fr;width:100%}
.hero-copy{padding:64px 56px;display:flex;flex-direction:column;justify-content:center;position:relative;z-index:1}
.hero-copy .eyebrow-line{display:flex;align-items:center;gap:10px;margin-bottom:18px}
.hero-copy .eyebrow-line .dash{width:26px;height:2px;background:var(--marigold)}
.hero-copy .eyebrow-line span{color:var(--marigold);font-weight:700;font-size:14px}
.hero-copy h1{font-family:'Fraunces',serif;font-weight:600;font-size:50px;line-height:1.08;color:#fff;max-width:520px;margin-bottom:18px}
.hero-copy p{color:rgba(255,255,255,.78);font-size:17px;max-width:440px;margin-bottom:30px;line-height:1.6}
.hero-copy .actions{display:flex;gap:12px;flex-wrap:wrap}
.hero-visual{position:relative;background:linear-gradient(160deg,#3a5c48,#233a2c)}
.hero-visual img{width:100%;height:100%;object-fit:cover;opacity:.92}
.hero-tag{position:absolute;bottom:28px;left:28px;background:var(--paper-raised);border-radius:var(--radius-sm);padding:14px 18px;box-shadow:0 14px 30px rgba(0,0,0,.25);max-width:220px}
.hero-tag .label{font-size:11px;font-weight:700;color:var(--ink-soft);text-transform:uppercase;letter-spacing:.06em}
.hero-tag .val{font-family:'Fraunces',serif;font-size:22px;font-weight:600;margin-top:2px}

/* ============ SECTION ============ */
.section{padding:60px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:30px;flex-wrap:wrap}
.section-header h2{font-family:'Fraunces',serif;font-size:30px;font-weight:600;letter-spacing:-.2px}
.section-header p{color:var(--ink-soft);margin-top:5px;font-size:15px}

/* ============ CATEGORY CHIPS ============ */
.chip-row{display:flex;flex-wrap:wrap;gap:10px}
.chip{display:flex;align-items:center;gap:9px;padding:11px 20px;border-radius:999px;background:var(--paper-raised);border:1.5px solid var(--line);font-weight:600;font-size:14px;transition:border-color .18s,background .18s,color .18s}
.chip i{color:var(--forest);font-size:14px}
.chip .count{color:var(--ink-soft);font-weight:500}
.chip:hover{border-color:var(--forest)}
.chip.is-active{background:var(--forest);border-color:var(--forest);color:#fff}
.chip.is-active i,.chip.is-active .count{color:rgba(255,255,255,.75)}

/* ============ PRODUCTS TOOLBAR ============ */
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:16px;margin:26px 0 22px;flex-wrap:wrap}
.result-count{font-size:14px;color:var(--ink-soft)}
.result-count strong{color:var(--ink)}
.sort-wrap{display:flex;align-items:center;gap:10px}
.sort-wrap label{font-size:13px;color:var(--ink-soft);font-weight:600}
.sort-wrap select{padding:9px 14px;border-radius:999px;border:1.5px solid var(--line);background:var(--paper-raised);font-weight:600;font-size:13px}

/* ============ PRODUCTS ============ */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:22px}
.product-card{background:var(--paper-raised);border-radius:var(--radius);overflow:hidden;border:1.5px solid var(--line);display:flex;flex-direction:column;transition:border-color .2s,transform .2s,box-shadow .2s}
.product-card:hover{border-color:var(--forest);transform:translateY(-4px);box-shadow:0 16px 34px rgba(32,26,20,.10)}
.product-card .img-wrap{position:relative;overflow:hidden;background:var(--paper);aspect-ratio:1/1}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:transform .35s ease}
.product-card:hover .img-wrap img{transform:scale(1.05)}
.product-card .tag{position:absolute;top:12px;left:12px;background:var(--forest);color:#fff;padding:5px 12px;border-radius:999px;font-size:11px;font-weight:800;letter-spacing:.03em}
.product-card .tag.sale{background:var(--clay)}
.product-card .wish-btn{position:absolute;top:10px;right:10px;width:36px;height:36px;border-radius:50%;background:rgba(255,253,248,.92);display:grid;place-items:center;font-size:16px;color:var(--ink-soft);transition:transform .18s,color .18s}
.product-card .wish-btn:hover{transform:scale(1.1)}
.product-card .wish-btn.is-wished{color:var(--clay)}
.product-card .wish-btn.is-wished i{font-weight:900}
.product-card .body{padding:16px 18px 12px;flex:1;display:flex;flex-direction:column;gap:6px}
.product-card .category-tag{font-size:12px;color:var(--ink-soft);font-weight:600}
.product-card h5{font-family:'Fraunces',serif;font-size:17px;font-weight:600;line-height:1.3}
.product-card .price-row{display:flex;align-items:center;gap:10px;margin-top:2px}
.product-card .price{font-weight:800;font-size:19px;color:var(--forest-deep)}
.product-card .old-price{color:var(--ink-soft);text-decoration:line-through;font-size:14px}
.product-card .rating{display:flex;align-items:center;gap:5px;font-size:13px;color:var(--marigold-deep)}
.product-card .rating span{color:var(--ink-soft)}
.product-card .footer{padding:6px 18px 18px}
.product-card .add-btn{width:100%;padding:11px;border-radius:var(--radius-sm);background:var(--ink);color:var(--paper);font-weight:700;font-size:14px;display:flex;align-items:center;justify-content:center;gap:8px;transition:background .18s,transform .18s}
.product-card .add-btn:hover{background:var(--forest);transform:scale(1.015)}
.product-card .add-btn.added{background:var(--ok)}
.empty-state{grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--ink-soft)}
.empty-state i{font-size:34px;color:var(--line);margin-bottom:14px;display:block}
.empty-state .clear-search{margin-top:14px}

/* ============ DEAL ============ */
.deal-wrap{display:flex;background:var(--ink);border-radius:var(--radius);overflow:hidden;color:var(--paper)}
.deal-wrap .deal-img{flex:0 0 44%;background:#151009;position:relative}
.deal-wrap .deal-img img{width:100%;height:100%;object-fit:cover;opacity:.85}
.deal-wrap .deal-content{flex:1;padding:44px 48px;display:flex;flex-direction:column;justify-content:center}
.deal-wrap .flag{display:inline-flex;align-items:center;gap:7px;background:var(--marigold);color:var(--ink);padding:5px 14px;border-radius:999px;font-size:12px;font-weight:800;align-self:flex-start;margin-bottom:16px}
.deal-wrap h3{font-family:'Fraunces',serif;font-size:30px;font-weight:600;margin-bottom:6px}
.deal-wrap .desc{color:rgba(246,242,233,.68);margin-bottom:20px;max-width:380px}
.deal-wrap .price-big{font-size:34px;font-weight:800;color:var(--marigold)}
.deal-wrap .price-big .old{font-size:19px;font-weight:400;color:rgba(246,242,233,.5);text-decoration:line-through;margin-left:10px}
.deal-wrap .stock{font-size:14px;color:rgba(246,242,233,.68);margin:6px 0 18px}
.deal-wrap .stock strong{color:var(--marigold)}
.timer-grid{display:flex;gap:10px;margin:18px 0 22px}
.timer-box{background:rgba(246,242,233,.08);border:1px solid rgba(246,242,233,.14);padding:11px 16px;border-radius:var(--radius-sm);min-width:66px;text-align:center}
.timer-box .num{font-size:24px;font-weight:800;line-height:1.15;font-variant-numeric:tabular-nums}
.timer-box .label{font-size:11px;opacity:.6}

/* ============ TESTIMONIALS ============ */
.testi-wrap{position:relative}
.testimonials-scroll{display:flex;gap:20px;overflow-x:auto;padding:6px 4px 8px;scroll-snap-type:x mandatory;scrollbar-width:none}
.testimonials-scroll::-webkit-scrollbar{display:none}
.testimonial-card{flex:0 0 350px;background:var(--paper-raised);border:1.5px solid var(--line);border-radius:var(--radius);padding:26px 28px;scroll-snap-align:start}
.testimonial-card .stars{color:var(--marigold-deep);font-size:15px;letter-spacing:2px;margin-bottom:12px}
.testimonial-card blockquote{font-family:'Fraunces',serif;font-size:17px;font-weight:500;line-height:1.5;margin-bottom:16px}
.testimonial-card .author{display:flex;align-items:center;gap:12px}
.testimonial-card .avatar{width:42px;height:42px;border-radius:50%;object-fit:cover}
.testimonial-card .name{font-weight:700;font-size:14px}
.testimonial-card .role{font-size:13px;color:var(--ink-soft)}
.testi-nav{display:flex;gap:8px;justify-content:center;margin-top:20px}
.testi-nav button{width:38px;height:38px;border-radius:50%;border:1.5px solid var(--line);display:grid;place-items:center;transition:background .18s,color .18s}
.testi-nav button:hover{background:var(--forest);color:#fff;border-color:var(--forest)}

/* ============ NEWSLETTER ============ */
.newsletter-wrap{background:var(--forest);border-radius:var(--radius);padding:48px 54px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:32px;flex-wrap:wrap}
.newsletter-wrap .text h3{font-family:'Fraunces',serif;font-size:27px;font-weight:600;margin-bottom:5px}
.newsletter-wrap .text p{opacity:.72;font-size:15px}
.newsletter-wrap form{display:flex;gap:10px;flex-wrap:wrap;flex:1;max-width:460px}
.newsletter-wrap form input{flex:1;min-width:200px;padding:14px 20px;border-radius:999px;border:0;font-size:15px;background:rgba(255,255,255,.12);color:#fff}
.newsletter-wrap form input::placeholder{color:rgba(255,255,255,.5)}
.newsletter-wrap form input:focus{box-shadow:var(--focus)}
#newsletterMsg{margin-top:12px;font-size:14px;width:100%}

/* ============ FOOTER ============ */
footer{margin-top:20px;padding:46px 0 30px;border-top:1px solid var(--line)}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:32px}
.footer-grid .brand-col .brand{font-size:20px;margin-bottom:9px}
.footer-grid .brand-col p{color:var(--ink-soft);font-size:14px;max-width:300px;line-height:1.6}
.footer-grid .brand-col .socials{display:flex;gap:9px;margin-top:15px}
.footer-grid .brand-col .socials a{width:38px;height:38px;border-radius:50%;background:var(--paper-raised);border:1.5px solid var(--line);display:grid;place-items:center;font-size:15px;transition:background .18s,color .18s}
.footer-grid .brand-col .socials a:hover{background:var(--forest);color:#fff;border-color:var(--forest)}
.footer-grid .col h5{font-family:'Fraunces',serif;font-weight:600;font-size:15px;margin-bottom:13px}
.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:8px}
.footer-grid .col ul li a{color:var(--ink-soft);font-size:14px;transition:color .18s}
.footer-grid .col ul li a:hover{color:var(--forest)}
.footer-bottom{text-align:center;padding-top:20px;border-top:1px solid var(--line);color:var(--ink-soft);font-size:13px}

/* ============ CART DRAWER ============ */
.overlay{position:fixed;inset:0;background:rgba(32,26,20,.45);opacity:0;pointer-events:none;transition:opacity .25s ease;z-index:300}
.overlay.is-open{opacity:1;pointer-events:auto}
.cart-drawer{position:fixed;top:0;right:0;height:100%;width:420px;max-width:92vw;background:var(--paper);z-index:301;transform:translateX(100%);transition:transform .3s cubic-bezier(.4,0,.2,1);display:flex;flex-direction:column;box-shadow:-20px 0 50px rgba(0,0,0,.2)}
.cart-drawer.is-open{transform:translateX(0)}
.cart-head{display:flex;align-items:center;justify-content:space-between;padding:22px 24px;border-bottom:1px solid var(--line)}
.cart-head h3{font-family:'Fraunces',serif;font-size:21px;font-weight:600}
.cart-close{width:38px;height:38px;border-radius:50%;display:grid;place-items:center;font-size:16px}
.cart-close:hover{background:rgba(32,26,20,.06)}
.cart-items{flex:1;overflow-y:auto;padding:14px 24px}
.cart-line{display:flex;gap:14px;padding:16px 0;border-bottom:1px solid var(--line)}
.cart-line img{width:64px;height:64px;border-radius:var(--radius-sm);object-fit:cover;background:var(--paper-raised);flex-shrink:0}
.cart-line .info{flex:1;min-width:0}
.cart-line .info h6{font-weight:700;font-size:14px;line-height:1.3}
.cart-line .info .unit{font-size:13px;color:var(--ink-soft);margin-top:2px}
.cart-line .qty-row{display:flex;align-items:center;gap:10px;margin-top:8px}
.qty-btn{width:26px;height:26px;border-radius:50%;border:1.5px solid var(--line);display:grid;place-items:center;font-size:12px}
.qty-btn:hover{border-color:var(--forest)}
.cart-line .qty-num{font-weight:700;font-size:14px;min-width:16px;text-align:center}
.cart-line .line-price{font-weight:800;font-size:14px;align-self:flex-start}
.remove-line{font-size:12px;color:var(--clay);font-weight:600;margin-left:auto}
.cart-empty{text-align:center;padding:70px 20px;color:var(--ink-soft)}
.cart-empty i{font-size:36px;color:var(--line);display:block;margin-bottom:14px}
.cart-foot{padding:22px 24px;border-top:1px solid var(--line)}
.cart-foot .row{display:flex;justify-content:space-between;font-size:15px;margin-bottom:8px;color:var(--ink-soft)}
.cart-foot .row.total{font-weight:800;font-size:19px;color:var(--ink);margin:12px 0 18px}
.cart-foot .btn{width:100%}

/* ============ RESPONSIVE ============ */
@media (max-width:1200px){
  .products-grid{grid-template-columns:repeat(3,1fr)}
  .footer-grid{grid-template-columns:1fr 1fr;gap:28px}
}
@media (max-width:992px){
  .hero-grid{grid-template-columns:1fr}
  .hero-visual{display:none}
  .hero-copy{padding:52px 40px}
  .hero-copy h1{font-size:38px}
  .deal-wrap{flex-direction:column}
  .deal-wrap .deal-img{flex:0 0 220px}
  .deal-wrap .deal-content{padding:32px 34px}
  .newsletter-wrap{padding:34px 30px;flex-direction:column;text-align:center;justify-content:center}
  .newsletter-wrap form{max-width:100%}
  .search-wrap{min-width:160px}
}
@media (max-width:768px){
  nav.main-nav{display:none}
  .mobile-toggle{display:grid;place-items:center}
  .products-grid{grid-template-columns:repeat(2,1fr);gap:14px}
  .hero{margin:14px 14px 0}
  .hero-copy{padding:40px 26px}
  .hero-copy h1{font-size:30px}
  .section{padding:40px 0}
  .section-header h2{font-size:24px}
  .toolbar{flex-direction:column;align-items:flex-start}
  .footer-grid{grid-template-columns:1fr;gap:22px}
  .cart-drawer{width:100%;max-width:100%}
  .search-wrap{display:none}
  .icon-btn{width:38px;height:38px;font-size:15px}
}
@media (max-width:480px){
  .products-grid{grid-template-columns:1fr 1fr;gap:10px}
  .product-card h5{font-size:14px}
  .product-card .price{font-size:16px}
  .deal-wrap .deal-content{padding:24px 20px}
  .deal-wrap h3{font-size:24px}
  .timer-box{min-width:52px;padding:8px 10px}
  .timer-box .num{font-size:19px}
  .container{padding:0 16px}
}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu" aria-expanded="false">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#"><span>Nexus</span><span class="dot">Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Shop</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#testimonials">Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" id="wishBtn" title="Wishlist" aria-label="Wishlist">
          <i class="far fa-heart"></i>
          <span class="badge-count" id="wishCount" style="display:none">0</span>
        </button>
        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Open cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="badge-count" id="cartCount" style="display:none">0</span>
        </button>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Shop</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#testimonials">Reviews</a></li>
      </ul>
      <form id="mobileSearchForm" style="margin-top:14px;display:flex;gap:8px;">
        <input type="search" id="mobileSearchInput" placeholder="Search products..." style="flex:1;padding:11px 16px;border-radius:999px;border:1.5px solid var(--line);background:var(--paper-raised);" />
      </form>
    </div>
  </div>
</header>

<main>
  <section class="hero" aria-label="Featured">
    <div class="hero-grid">
      <div class="hero-copy">
        <div class="eyebrow-line"><span class="dash"></span><span>Autumn arrivals</span></div>
        <h1>Good things, chosen carefully.</h1>
        <p>A tight edit of tech, footwear and everyday carry — picked by people who actually use it, not an algorithm.</p>
        <div class="actions">
          <button class="btn btn-marigold" id="shopNow">Shop the edit</button>
          <button class="btn btn-line" id="exploreDeals">See today's deal</button>
        </div>
      </div>
      <div class="hero-visual">
        <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=900&q=80" alt="Featured headphones product shot" loading="lazy">
        <div class="hero-tag">
          <div class="label">Most added this week</div>
          <div class="val">Sony WH‑1000XM5</div>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="cat-title">Shop by category</h2>
          <p>Tap a category to filter what's below</p>
        </div>
      </div>
      <div class="chip-row" id="categoryChips" role="group" aria-label="Filter by category"></div>
    </div>
  </section>

  <section class="section" id="products" aria-labelledby="prod-title" style="padding-top:0">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="prod-title">All products</h2>
          <p>Browse the full range, or narrow it down above</p>
        </div>
      </div>
      <div class="toolbar">
        <p class="result-count" id="resultCount" aria-live="polite"></p>
        <div class="sort-wrap">
          <label for="sortSelect">Sort by</label>
          <select id="sortSelect">
            <option value="featured">Featured</option>
            <option value="price-asc">Price: low to high</option>
            <option value="price-desc">Price: high to low</option>
            <option value="rating">Highest rated</option>
          </select>
        </div>
      </div>
      <div class="products-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="deals-title">Today's deal</h2>
          <p>One product, meaningfully discounted, until the timer runs out</p>
        </div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="flag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light and quiet — the M2 chip runs all day without a fan.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> left at this price.</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-marigold" id="buyDeal" style="align-self:flex-start"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="test-title">What people say</h2>
          <p>Real reviews from recent orders</p>
        </div>
      </div>
      <div class="testi-wrap">
        <div class="testimonials-scroll" id="testimonialsList"></div>
        <div class="testi-nav">
          <button id="testiPrev" aria-label="Previous review"><i class="fas fa-arrow-left"></i></button>
          <button id="testiNext" aria-label="Next review"><i class="fas fa-arrow-right"></i></button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3 id="news-title">Stay in the loop</h3>
          <p>One email a week — new arrivals and the odd good deal</p>
        </div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn btn-marigold" id="subscribeBtn">Subscribe</button>
          <div id="newsletterMsg" role="status"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><span>Nexus</span><span class="dot">Shop</span></div>
        <p>A small, carefully edited store. Quality products, no noise.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart" aria-hidden="true">
  <div class="cart-head">
    <h3>Your cart</h3>
    <button class="cart-close" id="cartClose" aria-label="Close cart"><i class="fas fa-times"></i></button>
  </div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-foot" id="cartFoot" style="display:none">
    <div class="row"><span>Subtotal</span><span id="cartSubtotal">$0</span></div>
    <div class="row"><span>Shipping</span><span>Free</span></div>
    <div class="row total"><span>Total</span><span id="cartTotal">$0</span></div>
    <button class="btn btn-forest" id="checkoutBtn">Checkout</button>
  </div>
</aside>

<script>
// ============================================================
// DATA
// ============================================================
const CATEGORIES = [
  { id:'all', name:'All products', icon:'fa-border-all' },
  { id:'Smartphones', name:'Smartphones', icon:'fa-mobile-alt' },
  { id:'Laptops', name:'Laptops', icon:'fa-laptop' },
  { id:'Footwear', name:'Footwear', icon:'fa-shoe-prints' },
  { id:'Gadgets', name:'Gadgets', icon:'fa-headphones' },
  { id:'Accessories', name:'Accessories', icon:'fa-watch' }
];

const PRODUCTS = [
  { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
  { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, badge:'', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
  { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, badge:'', img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
  { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, badge:'New', img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'Gadgets' },
  { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, badge:'', img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, badge:'Sale', img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, badge:'', img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'Gadgets' }
];

const TESTIMONIALS = [
  { name:'Ava Martin', role:'Verified buyer', avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text:'Fast shipping and excellent support. The product exceeded my expectations.', stars:5 },
  { name:'Michael Lee', role:'Frequent shopper', avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text:'Great selection and a smooth checkout. I will shop here again.', stars:4 },
  { name:'Sophia Chen', role:'Designer', avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text:'Loved the packaging as much as the product. Everything arrived intact.', stars:5 },
  { name:'James Wilson', role:'Tech enthusiast', avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text:'Genuinely good prices on electronics — the MacBook deal was unbeatable.', stars:5 }
];

// ============================================================
// STATE
// ============================================================
let activeCategory = 'all';
let searchQuery = '';
let sortMode = 'featured';
let wishlist = new Set();
let cart = new Map(); // id -> qty

// ============================================================
// DOM REFS
// ============================================================
const $ = (id) => document.getElementById(id);
const categoryChips = $('categoryChips');
const productsGrid = $('productsGrid');
const resultCount = $('resultCount');
const sortSelect = $('sortSelect');
const cartCountEl = $('cartCount');
const wishCountEl = $('wishCount');
const wishBtn = $('wishBtn');
const searchInput = $('searchInput');
const searchBtn = $('searchBtn');
const mobileSearchInput = $('mobileSearchInput');
const mobileToggle = $('mobileToggle');
const mobileMenu = $('mobileMenu');
const newsletterForm = $('newsletterForm');
const newsletterEmail = $('newsletterEmail');
const newsletterMsg = $('newsletterMsg');
const testimonialsList = $('testimonialsList');
const overlay = $('overlay');
const cartDrawer = $('cartDrawer');
const cartItemsEl = $('cartItems');
const cartFoot = $('cartFoot');

// ============================================================
// UTILITIES
// ============================================================
function escapeHtml(text){
  return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}
function money(n){ return '$' + n.toLocaleString(); }

// ============================================================
// CATEGORY CHIPS
// ============================================================
function renderChips(){
  categoryChips.innerHTML = '';
  CATEGORIES.forEach(cat => {
    const count = cat.id === 'all' ? PRODUCTS.length : PRODUCTS.filter(p => p.category === cat.id).length;
    const el = document.createElement('button');
    el.className = 'chip' + (activeCategory === cat.id ? ' is-active' : '');
    el.setAttribute('aria-pressed', activeCategory === cat.id);
    el.innerHTML = `<i class="fas ${cat.icon}"></i> ${cat.name} <span class="count">(${count})</span>`;
    el.addEventListener('click', () => {
      activeCategory = cat.id;
      renderChips();
      renderProducts();
      document.getElementById('products').scrollIntoView({behavior:'smooth', block:'start'});
    });
    categoryChips.appendChild(el);
  });
}

// ============================================================
// PRODUCTS
// ============================================================
function getFilteredProducts(){
  let list = PRODUCTS.slice();
  if (activeCategory !== 'all') list = list.filter(p => p.category === activeCategory);
  const q = searchQuery.trim().toLowerCase();
  if (q) list = list.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
  if (sortMode === 'price-asc') list.sort((a,b) => a.price - b.price);
  else if (sortMode === 'price-desc') list.sort((a,b) => b.price - a.price);
  else if (sortMode === 'rating') list.sort((a,b) => b.rating - a.rating);
  return list;
}

function renderProducts(){
  const list = getFilteredProducts();
  resultCount.innerHTML = `<strong>${list.length}</strong> product${list.length !== 1 ? 's' : ''}${searchQuery ? ` for "${escapeHtml(searchQuery)}"` : ''}`;
  productsGrid.innerHTML = '';

  if (!list.length){
    productsGrid.innerHTML = `
      <div class="empty-state">
        <i class="fas fa-box-open"></i>
        <p>No products match that search or category.</p>
        <button class="btn btn-outline btn-sm clear-search" id="clearFilters">Clear filters</button>
      </div>`;
    $('clearFilters').addEventListener('click', () => {
      searchQuery = ''; activeCategory = 'all';
      searchInput.value = ''; if (mobileSearchInput) mobileSearchInput.value = '';
      renderChips(); renderProducts();
    });
    return;
  }

  list.forEach(p => {
    const el = document.createElement('article');
    el.className = 'product-card';
    const badgeClass = p.badge === 'Sale' ? 'sale' : '';
    const badgeHtml = p.badge ? `<span class="tag ${badgeClass}">${p.badge}</span>` : '';
    const oldPriceHtml = p.oldPrice ? `<span class="old-price">${money(p.oldPrice)}</span>` : '';
    const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
    const wished = wishlist.has(p.id);
    el.innerHTML = `
      <div class="img-wrap">
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        ${badgeHtml}
        <button class="wish-btn${wished ? ' is-wished' : ''}" data-id="${p.id}" aria-label="${wished ? 'Remove from wishlist' : 'Add to wishlist'}" aria-pressed="${wished}">
          <i class="${wished ? 'fas' : 'far'} fa-heart"></i>
        </button>
      </div>
      <div class="body">
        <div class="category-tag">${p.category}</div>
        <h5>${escapeHtml(p.title)}</h5>
        <div class="price-row"><span class="price">${money(p.price)}</span>${oldPriceHtml}</div>
        <div class="rating">${stars} <span>(${p.reviews})</span></div>
      </div>
      <div class="footer">
        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
      </div>`;
    productsGrid.appendChild(el);
  });

  productsGrid.querySelectorAll('.add-btn').forEach(btn => {
    btn.addEventListener('click', function(){
      addToCart(Number(this.dataset.id), this);
    });
  });
  productsGrid.querySelectorAll('.wish-btn').forEach(btn => {
    btn.addEventListener('click', function(){
      toggleWish(Number(this.dataset.id), this);
    });
  });
}

// ============================================================
// WISHLIST
// ============================================================
function toggleWish(id, btnEl){
  if (wishlist.has(id)) wishlist.delete(id); else wishlist.add(id);
  const wished = wishlist.has(id);
  if (btnEl){
    btnEl.classList.toggle('is-wished', wished);
    btnEl.querySelector('i').className = (wished ? 'fas' : 'far') + ' fa-heart';
    btnEl.setAttribute('aria-pressed', wished);
    btnEl.setAttribute('aria-label', wished ? 'Remove from wishlist' : 'Add to wishlist');
  }
  wishCountEl.textContent = wishlist.size;
  wishCountEl.style.display = wishlist.size ? 'grid' : 'none';
  wishBtn.classList.toggle('active-heart', wishlist.size > 0);
}

// ============================================================
// CART
// ============================================================
function addToCart(id, btnEl){
  cart.set(id, (cart.get(id) || 0) + 1);
  renderCartBadge();
  renderCartDrawer();
  if (btnEl){
    const orig = btnEl.innerHTML;
    btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
    btnEl.classList.add('added');
    setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1300);
  }
}
function changeQty(id, delta){
  const current = cart.get(id) || 0;
  const next = current + delta;
  if (next <= 0) cart.delete(id); else cart.set(id, next);
  renderCartBadge();
  renderCartDrawer();
}
function cartTotalCount(){
  let n = 0; cart.forEach(q => n += q); return n;
}
function cartSubtotal(){
  let sum = 0;
  cart.forEach((qty, id) => {
    const p = PRODUCTS.find(x => x.id === id);
    if (p) sum += p.price * qty;
  });
  return sum;
}
function renderCartBadge(){
  const n = cartTotalCount();
  cartCountEl.textContent = n;
  cartCountEl.style.display = n ? 'grid' : 'none';
}
function renderCartDrawer(){
  if (!cart.size){
    cartItemsEl.innerHTML = `
      <div class="cart-empty">
        <i class="fas fa-shopping-bag"></i>
        <p>Your cart is empty.</p>
      </div>`;
    cartFoot.style.display = 'none';
    return;
  }
  cartItemsEl.innerHTML = '';
  cart.forEach((qty, id) => {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;
    const row = document.createElement('div');
    row.className = 'cart-line';
    row.innerHTML = `
      <img src="${p.img}" alt="${escapeHtml(p.title)}">
      <div class="info">
        <h6>${escapeHtml(p.title)}</h6>
        <div class="unit">${money(p.price)} each</div>
        <div class="qty-row">
          <button class="qty-btn" data-id="${p.id}" data-delta="-1" aria-label="Decrease quantity">−</button>
          <span class="qty-num">${qty}</span>
          <button class="qty-btn" data-id="${p.id}" data-delta="1" aria-label="Increase quantity">+</button>
          <span class="remove-line" data-id="${p.id}" role="button" tabindex="0">Remove</span>
        </div>
      </div>
      <div class="line-price">${money(p.price * qty)}</div>`;
    cartItemsEl.appendChild(row);
  });
  cartItemsEl.querySelectorAll('.qty-btn').forEach(btn => {
    btn.addEventListener('click', () => changeQty(Number(btn.dataset.id), Number(btn.dataset.delta)));
  });
  cartItemsEl.querySelectorAll('.remove-line').forEach(el => {
    el.addEventListener('click', () => { cart.delete(Number(el.dataset.id)); renderCartBadge(); renderCartDrawer(); });
    el.addEventListener('keydown', (e) => { if (e.key === 'Enter') { cart.delete(Number(el.dataset.id)); renderCartBadge(); renderCartDrawer(); }});
  });
  cartFoot.style.display = 'block';
  $('cartSubtotal').textContent = money(cartSubtotal());
  $('cartTotal').textContent = money(cartSubtotal());
}
function openCart(){
  overlay.classList.add('is-open');
  cartDrawer.classList.add('is-open');
  cartDrawer.setAttribute('aria-hidden', 'false');
}
function closeCart(){
  overlay.classList.remove('is-open');
  cartDrawer.classList.remove('is-open');
  cartDrawer.setAttribute('aria-hidden', 'true');
}

// ============================================================
// TESTIMONIALS
// ============================================================
function renderTestimonials(){
  testimonialsList.innerHTML = '';
  TESTIMONIALS.forEach(t => {
    const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
    const el = document.createElement('div');
    el.className = 'testimonial-card';
    el.innerHTML = `
      <div class="stars">${stars}</div>
      <blockquote>${escapeHtml(t.text)}</blockquote>
      <div class="author">
        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
        <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
      </div>`;
    testimonialsList.appendChild(el);
  });
}
function scrollTestimonials(dir){
  const card = testimonialsList.querySelector('.testimonial-card');
  const step = card ? card.getBoundingClientRect().width + 20 : 340;
  testimonialsList.scrollBy({ left: dir * step, behavior: 'smooth' });
}

// ============================================================
// DEAL TIMER
// ============================================================
(function setupDealTimer(){
  const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
  function tick(){
    const diff = target - new Date();
    if (diff <= 0){
      ['dealDays','dealHours','dealMinutes','dealSeconds'].forEach(id => $(id).textContent = '00');
      return;
    }
    const days = Math.floor(diff / 86400000);
    const hours = Math.floor((diff % 86400000) / 3600000);
    const mins = Math.floor((diff % 3600000) / 60000);
    const secs = Math.floor((diff % 60000) / 1000);
    $('dealDays').textContent = days;
    $('dealHours').textContent = String(hours).padStart(2,'0');
    $('dealMinutes').textContent = String(mins).padStart(2,'0');
    $('dealSeconds').textContent = String(secs).padStart(2,'0');
  }
  tick();
  setInterval(tick, 1000);
})();

// ============================================================
// EVENT BINDINGS
// ============================================================
searchBtn.addEventListener('click', () => { searchQuery = searchInput.value; renderProducts(); });
searchInput.addEventListener('input', () => { searchQuery = searchInput.value; renderProducts(); });
searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') { searchQuery = e.target.value; renderProducts(); }});
if (mobileSearchInput){
  mobileSearchInput.addEventListener('input', () => { searchQuery = mobileSearchInput.value; searchInput.value = searchQuery; renderProducts(); });
}
sortSelect.addEventListener('change', () => { sortMode = sortSelect.value; renderProducts(); });

mobileToggle.addEventListener('click', () => {
  const isOpen = mobileMenu.style.display === 'block';
  mobileMenu.style.display = isOpen ? 'none' : 'block';
  mobileToggle.setAttribute('aria-expanded', String(!isOpen));
  mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
});
mobileMenu.querySelectorAll('nav a, ul a').forEach(link => {
  link.addEventListener('click', () => {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  });
});

$('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({behavior:'smooth', block:'start'}));
$('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({behavior:'smooth', block:'start'}));

$('buyDeal').addEventListener('click', function(){
  addToCart(2, null); // MacBook Pro used as stand-in id for deal item family
  const orig = this.innerHTML;
  this.innerHTML = '<i class="fas fa-check"></i> Added';
  setTimeout(() => { this.innerHTML = orig; }, 1300);
});

newsletterForm.addEventListener('submit', (e) => {
  e.preventDefault();
  const email = newsletterEmail.value.trim();
  if (!email || !email.includes('@')){
    newsletterMsg.textContent = 'Please enter a valid email address.';
    newsletterMsg.style.color = '#ffb3b3';
    return;
  }
  newsletterMsg.textContent = 'Thanks — you\'re subscribed.';
  newsletterMsg.style.color = '#c9e8d8';
  newsletterEmail.value = '';
  setTimeout(() => { newsletterMsg.textContent = ''; }, 3500);
});

cartBtn.addEventListener('click', openCart);
$('cartClose').addEventListener('click', closeCart);
overlay.addEventListener('click', closeCart);
document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeCart(); });
$('checkoutBtn').addEventListener('click', () => {
  newsletterMsg.textContent = '';
  closeCart();
});
wishBtn.addEventListener('click', () => document.getElementById('products').scrollIntoView({behavior:'smooth', block:'start'}));

$('testiPrev').addEventListener('click', () => scrollTestimonials(-1));
$('testiNext').addEventListener('click', () => scrollTestimonials(1));

$('year').textContent = new Date().getFullYear();

window.addEventListener('resize', () => {
  if (window.innerWidth > 768){
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  }
});

// ============================================================
// INIT
// ============================================================
renderChips();
renderProducts();
renderTestimonials();
renderCartDrawer();
renderCartBadge();
</script>
</body>
</html>
