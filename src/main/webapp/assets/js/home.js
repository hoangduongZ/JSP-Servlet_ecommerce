// Form validation
function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function validatePhone(phone) {
    const phoneRegex = /^(\+84|0)[0-9]{9,10}$/;
    return phoneRegex.test(phone);
}

function isValidLoginId(loginId) {
    return validateEmail(loginId) || validatePhone(loginId);
}

function togglePassword() {
    const field = document.getElementById('password');
    const icon = document.getElementById('passwordEyeIcon');

    if (field.type === 'password') {
        field.type = 'text';
        icon.innerHTML = `
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.878 9.878L8.464 8.464M9.878 9.878l4.242 4.242m0 0L16.536 16.536M21.542 12c-1.274 4.057-5.064 7-9.542 7M3 3l18 18"></path>
                `;
    } else {
        field.type = 'password';
        icon.innerHTML = `
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                `;
    }
}

function clearErrors() {
    document.getElementById('loginIdError').classList.add('hidden');
    document.getElementById('passwordError').classList.add('hidden');
    document.getElementById('loginError').classList.add('hidden');
}

function showError(fieldId, show = true) {
    const errorElement = document.getElementById(fieldId + 'Error');
    if (show) {
        errorElement.classList.remove('hidden');
    } else {
        errorElement.classList.add('hidden');
    }
}

function showLoginError(message) {
    document.getElementById('loginErrorMessage').textContent = message;
    document.getElementById('loginError').classList.remove('hidden');
}

// Quick login functions
function quickLogin(type) {
    if (type === 'customer') {
        document.getElementById('loginId').value = 'customer@demo.com';
        document.getElementById('password').value = '123456';
    } else if (type === 'admin') {
        document.getElementById('loginId').value = 'admin@demo.com';
        document.getElementById('password').value = 'admin123';
    }

    // Auto submit after a brief delay
    setTimeout(() => {
        document.getElementById('loginForm').dispatchEvent(new Event('submit'));
    }, 300);
}

// Social login functions
function loginWithGoogle() {
    alert('The feature is developing...');
    // Here you would redirect to Google OAuth
}

function loginWithFacebook() {
    alert('?ang chuy?n h??ng ??n Facebook...');
    // Here you would redirect to Facebook OAuth
}

// Forgot password functions
function showForgotPassword() {
    document.getElementById('forgotPasswordModal').classList.remove('hidden');
    document.getElementById('resetEmail').focus();
}

function closeForgotPassword() {
    document.getElementById('forgotPasswordModal').classList.add('hidden');
    document.getElementById('forgotPasswordForm').reset();
    document.getElementById('resetEmailError').classList.add('hidden');
    document.getElementById('resetSuccess').classList.add('hidden');
}

// Real-time validation
document.getElementById('loginId').addEventListener('input', function () {
    const value = this.value.trim();
    showError('loginId', !value);
});

document.getElementById('password').addEventListener('input', function () {
    const value = this.value;
    showError('password', !value);
});

// Login form submission
document.getElementById('loginForm').addEventListener('submit', function (e) {
    e.preventDefault();

    clearErrors();

    const loginId = document.getElementById('loginId').value.trim();
    const password = document.getElementById('password').value;
    const rememberMe = document.getElementById('rememberMe').checked;

    let hasError = false;

    // Validate fields
    if (!loginId) {
        showError('loginId');
        hasError = true;
    }

    if (!password) {
        showError('password');
        hasError = true;
    }

    if (hasError) return;

    // Show loading state
    const submitBtn = document.querySelector('button[type="submit"]');
    const submitText = document.getElementById('submitText');
    const submitLoading = document.getElementById('submitLoading');

    submitBtn.disabled = true;
    submitText.classList.add('hidden');
    submitLoading.classList.remove('hidden');

    // Simulate API call
    setTimeout(() => {
        // Demo authentication
        const validCredentials = [
            {loginId: 'customer@demo.com', password: '123456', role: 'customer', name: 'Kh?ch h?ng Demo'},
            {loginId: 'admin@demo.com', password: 'admin123', role: 'admin', name: 'Admin Demo'},
            {loginId: 'hoangdvdinos@gmail.com', password: 'password123', role: 'customer', name: 'Ho?ng ?inh'},
            {loginId: '0987654321', password: '123456', role: 'customer', name: 'Ng??i d?ng S?T'}
        ];

        const user = validCredentials.find(cred =>
            cred.loginId === loginId && cred.password === password
        );

        if (user) {
            // Store user info (in real app, use proper session management)
            localStorage.setItem('currentUser', JSON.stringify({
                name: user.name,
                email: user.loginId,
                role: user.role,
                rememberMe: rememberMe,
                loginTime: new Date().toISOString()
            }));

            alert(`Đăng nhập th?nh c?ng! Ch?o m?ng ${user.name}`);

            // Redirect based on role
            if (user.role === 'admin') {
                window.location.href = '/admin/dashboard';
            } else {
                window.location.href = '/';
            }
        } else {
            showLoginError('Email/S?T ho?c Mật khẩu kh?ng ch?nh x?c');
        }

        // Reset loading state
        submitBtn.disabled = false;
        submitText.classList.remove('hidden');
        submitLoading.classList.add('hidden');
    }, 1500);
});

// Forgot password form submission
document.getElementById('forgotPasswordForm').addEventListener('submit', function (e) {
    e.preventDefault();

    const email = document.getElementById('resetEmail').value.trim();

    if (!email || !validateEmail(email)) {
        document.getElementById('resetEmailError').classList.remove('hidden');
        return;
    }

    document.getElementById('resetEmailError').classList.add('hidden');

    // Show loading state
    const submitBtn = this.querySelector('button[type="submit"]');
    const submitText = document.getElementById('resetSubmitText');
    const submitLoading = document.getElementById('resetSubmitLoading');

    submitBtn.disabled = true;
    submitText.classList.add('hidden');
    submitLoading.classList.remove('hidden');

    // Simulate API call
    setTimeout(() => {
        document.getElementById('resetSuccess').classList.remove('hidden');

        // Reset loading state
        submitBtn.disabled = false;
        submitText.classList.remove('hidden');
        submitLoading.classList.add('hidden');

        // Auto close after 3 seconds
        setTimeout(() => {
            closeForgotPassword();
        }, 3000);
    }, 1500);
});

// Close modal when clicking outside
document.getElementById('forgotPasswordModal').addEventListener('click', function (e) {
    if (e.target === this) {
        closeForgotPassword();
    }
});

// Initialize
document.addEventListener('DOMContentLoaded', function () {
    // Focus first field
    document.getElementById('loginId').focus();

    // Check if user is already logged in
    const currentUser = localStorage.getItem('currentUser');
    if (currentUser) {
        const user = JSON.parse(currentUser);
        const loginTime = new Date(user.loginTime);
        const now = new Date();
        const hoursDiff = (now - loginTime) / (1000 * 60 * 60);

        // Auto-logout after 24 hours (or immediately if not remember me)
        if (user.rememberMe && hoursDiff < 24) {
            alert(`B?n ?? Đăng nhập r?i! Chuy?n h??ng...`);
            if (user.role === 'admin') {
                window.location.href = '/admin/dashboard';
            } else {
                window.location.href = '/';
            }
        } else {
            localStorage.removeItem('currentUser');
        }
    }
});
