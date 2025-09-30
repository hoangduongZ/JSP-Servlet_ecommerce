document.addEventListener('DOMContentLoaded', function() {
    // Add click handlers for navigation
    const navLinks = document.querySelectorAll('aside nav a');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            // e.preventDefault();
            // // Remove active class from all links
            // navLinks.forEach(l => {
            //     l.classList.remove('bg-[#0D6EFD]', 'text-white');
            //     l.classList.add('text-[#6C757D]', 'hover:bg-[#F8F9FA]');
            // });
            // // Add active class to clicked link
            // this.classList.add('bg-[#0D6EFD]', 'text-white');
            // this.classList.remove('text-[#6C757D]', 'hover:bg-[#F8F9FA]');

        });
    });

    // Update time
    const now = new Date();
    const timeString = now.toLocaleString('vi-VN', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit'
    });

    // Add real-time clock (optional)
    setInterval(() => {
        const now = new Date();
        // Update any time displays if needed
    }, 60000);
});