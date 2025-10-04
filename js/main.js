/* ===================================
   EO4 Concert Website - Main JavaScript
   =================================== */

// ===== Initialize AOS (Animate On Scroll) =====
document.addEventListener('DOMContentLoaded', function() {
    AOS.init({
        duration: 1000,
        easing: 'ease-in-out',
        once: true,
        offset: 100
    });
});

// ===== Navigation Bar =====
const navbar = document.getElementById('navbar');
const hamburger = document.getElementById('hamburger');
const navMenu = document.querySelector('.nav-menu');
const navLinks = document.querySelectorAll('.nav-link');

// Get hero elements for fade effect
const heroContent = document.querySelector('.hero-content');
const heroOverlay = document.querySelector('.hero-overlay');

// Navbar scroll effect + Hero fade effect
window.addEventListener('scroll', function() {
    const scrollY = window.scrollY;
    
    // Navbar scroll effect
    if (scrollY > 100) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
    
    // Hero content and overlay fade effect
    // 當滾動超過 150px 時開始漸淡
    if (scrollY > 150) {
        if (heroContent) heroContent.classList.add('fade-out');
        if (heroOverlay) heroOverlay.classList.add('fade-out');
    } else {
        if (heroContent) heroContent.classList.remove('fade-out');
        if (heroOverlay) heroOverlay.classList.remove('fade-out');
    }
});

// Mobile menu toggle
if (hamburger) {
    hamburger.addEventListener('click', function() {
        hamburger.classList.toggle('active');
        navMenu.classList.toggle('active');
    });
}

// Close mobile menu when clicking on nav links
navLinks.forEach(link => {
    link.addEventListener('click', function() {
        hamburger.classList.remove('active');
        navMenu.classList.remove('active');
    });
});

// ===== Smooth Scroll for Navigation Links =====
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        
        if (target) {
            const offsetTop = target.offsetTop - 80; // Offset for fixed navbar
            
            window.scrollTo({
                top: offsetTop,
                behavior: 'smooth'
            });
        }
    });
});

// ===== Active Navigation Link Based on Scroll =====
const sections = document.querySelectorAll('section[id]');

function highlightNavLink() {
    const scrollY = window.pageYOffset;
    
    sections.forEach(section => {
        const sectionHeight = section.offsetHeight;
        const sectionTop = section.offsetTop - 100;
        const sectionId = section.getAttribute('id');
        const navLink = document.querySelector(`.nav-link[href="#${sectionId}"]`);
        
        if (scrollY > sectionTop && scrollY <= sectionTop + sectionHeight) {
            navLinks.forEach(link => link.classList.remove('active'));
            if (navLink) {
                navLink.classList.add('active');
            }
        }
    });
}

window.addEventListener('scroll', highlightNavLink);

// ===== Back to Top Button =====
const backToTopButton = document.getElementById('backToTop');

window.addEventListener('scroll', function() {
    if (window.scrollY > 500) {
        backToTopButton.classList.add('visible');
    } else {
        backToTopButton.classList.remove('visible');
    }
});

if (backToTopButton) {
    backToTopButton.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// ===== Social Share Functions =====
function shareOnFacebook() {
    const url = encodeURIComponent(window.location.href);
    const shareUrl = `https://www.facebook.com/sharer/sharer.php?u=${url}`;
    window.open(shareUrl, '_blank', 'width=600,height=400');
}

function shareOnInstagram() {
    // Instagram doesn't support direct web sharing, so we copy the link
    // and guide users to share manually
    const url = window.location.href;
    
    // Try to use the modern Clipboard API
    if (navigator.clipboard && navigator.clipboard.writeText) {
        navigator.clipboard.writeText(url).then(function() {
            alert('連結已複製！\n請開啟 Instagram App，在限時動態或貼文中貼上連結分享。');
        }).catch(function() {
            // Fallback
            copyToClipboardFallback(url, 'Instagram');
        });
    } else {
        // Fallback for older browsers
        copyToClipboardFallback(url, 'Instagram');
    }
}

function shareOnTwitter() {
    const url = encodeURIComponent(window.location.href);
    const text = encodeURIComponent('EO4 演唱會 2025.11.01 台中 Words Live！');
    const shareUrl = `https://twitter.com/intent/tweet?url=${url}&text=${text}`;
    window.open(shareUrl, '_blank', 'width=600,height=400');
}

function shareOnLine() {
    const url = encodeURIComponent(window.location.href);
    const text = encodeURIComponent('EO4 演唱會 2025.11.01 台中 Words Live！');
    const shareUrl = `https://social-plugins.line.me/lineit/share?url=${url}&text=${text}`;
    window.open(shareUrl, '_blank', 'width=600,height=400');
}

function copyLink() {
    const url = window.location.href;
    
    // Create temporary input element
    const tempInput = document.createElement('input');
    tempInput.value = url;
    document.body.appendChild(tempInput);
    
    // Select and copy
    tempInput.select();
    tempInput.setSelectionRange(0, 99999); // For mobile devices
    
    try {
        document.execCommand('copy');
        alert('連結已複製到剪貼簿！');
    } catch (err) {
        // Fallback for modern browsers
        navigator.clipboard.writeText(url).then(function() {
            alert('連結已複製到剪貼簿！');
        }, function() {
            alert('複製失敗，請手動複製連結');
        });
    }
    
    document.body.removeChild(tempInput);
}

// Helper function for clipboard fallback
function copyToClipboardFallback(text, platform) {
    const tempInput = document.createElement('input');
    tempInput.value = text;
    document.body.appendChild(tempInput);
    
    tempInput.select();
    tempInput.setSelectionRange(0, 99999);
    
    try {
        document.execCommand('copy');
        if (platform === 'Instagram') {
            alert('連結已複製！\n請開啟 Instagram App，在限時動態或貼文中貼上連結分享。');
        } else {
            alert('連結已複製到剪貼簿！');
        }
    } catch (err) {
        alert('複製失敗，請手動複製連結：\n' + text);
    }
    
    document.body.removeChild(tempInput);
}

// ===== Image Lazy Loading (Fallback for older browsers) =====
if ('loading' in HTMLImageElement.prototype === false) {
    const images = document.querySelectorAll('img[loading="lazy"]');
    
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('lazy');
                observer.unobserve(img);
            }
        });
    });
    
    images.forEach(img => imageObserver.observe(img));
}

// ===== Prevent Context Menu on Images (Optional) =====
// Uncomment if you want to protect images from right-click
/*
document.querySelectorAll('img').forEach(img => {
    img.addEventListener('contextmenu', function(e) {
        e.preventDefault();
        return false;
    });
});
*/

// ===== Console Welcome Message =====
console.log('%cEO4 演唱會 🎵', 'color: #D4AF37; font-size: 24px; font-weight: bold;');
console.log('%c2025.11.01 | Words Live 忠明館', 'color: #666; font-size: 14px;');
console.log('%cDeveloped with ❤️ for Music Lovers', 'color: #999; font-size: 12px;');

// ===== Performance Monitoring (Optional) =====
window.addEventListener('load', function() {
    const loadTime = window.performance.timing.domContentLoadedEventEnd - window.performance.timing.navigationStart;
    console.log(`⚡ Page loaded in ${loadTime}ms`);
});

// ===== Easter Egg: Konami Code =====
let konamiCode = [];
const konamiSequence = ['ArrowUp', 'ArrowUp', 'ArrowDown', 'ArrowDown', 'ArrowLeft', 'ArrowRight', 'ArrowLeft', 'ArrowRight', 'KeyB', 'KeyA'];

document.addEventListener('keydown', function(e) {
    konamiCode.push(e.code);
    konamiCode = konamiCode.slice(-10);
    
    if (konamiCode.join('') === konamiSequence.join('')) {
        activateEasterEgg();
    }
});

function activateEasterEgg() {
    // Add fun animation or special content
    document.body.style.animation = 'rainbow 2s infinite';
    
    const style = document.createElement('style');
    style.textContent = `
        @keyframes rainbow {
            0% { filter: hue-rotate(0deg); }
            100% { filter: hue-rotate(360deg); }
        }
    `;
    document.head.appendChild(style);
    
    setTimeout(() => {
        document.body.style.animation = '';
    }, 5000);
    
    console.log('🎉 Easter egg activated! You found the secret!');
}