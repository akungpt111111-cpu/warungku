// Toggle Sidebar
function toggleSidebar() {
    const sidebar = document.querySelector('.sidebar');
    if (sidebar) {
        sidebar.classList.toggle('show');
    }
}

// Close Sidebar when link is clicked
document.addEventListener('DOMContentLoaded', function() {
    const sidebarLinks = document.querySelectorAll('.sidebar a');
    sidebarLinks.forEach(link => {
        link.addEventListener('click', function() {
            const sidebar = document.querySelector('.sidebar');
            if (sidebar && window.innerWidth <= 768) {
                sidebar.classList.remove('show');
            }
        });
    });

    // Set active link
    const currentLocation = location.pathname.split('/').pop();
    sidebarLinks.forEach(link => {
        if (link.getAttribute('href') === currentLocation) {
            link.classList.add('active');
        }
    });
});

// Format Currency
function formatCurrency(amount) {
    return new Intl.NumberFormat('id-ID', {
        style: 'currency',
        currency: 'IDR',
        minimumFractionDigits: 0
    }).format(amount);
}

// Alert Helper
function showAlert(message, type = 'success') {
    const alertDiv = document.createElement('div');
    alertDiv.className = `alert alert-${type} alert-dismissible fade show animate-fade-in`;
    alertDiv.innerHTML = `
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `;
    
    const container = document.querySelector('.container') || document.body;
    container.insertBefore(alertDiv, container.firstChild);
    
    setTimeout(() => {
        alertDiv.remove();
    }, 5000);
}

// Confirm Delete
function confirmDelete(message = 'Apakah Anda yakin ingin menghapus data ini?') {
    return confirm(message);
}

// Update Quantity
function updateQuantity(action, inputId) {
    const input = document.getElementById(inputId);
    let value = parseInt(input.value);
    
    if (action === 'increase') {
        value++;
    } else if (action === 'decrease' && value > 1) {
        value--;
    }
    
    input.value = value;
    calculateTotal();
}

// Calculate Total Price
function calculateTotal() {
    const items = document.querySelectorAll('.cart-item');
    let total = 0;
    
    items.forEach(item => {
        const priceText = item.querySelector('.item-price')?.textContent || '0';
        const qtyInput = item.querySelector('input[type="number"]');
        
        if (priceText && qtyInput) {
            const price = parseInt(priceText.replace(/\D/g, ''));
            const qty = parseInt(qtyInput.value);
            total += price * qty;
        }
    });
    
    const totalElement = document.getElementById('totalPrice');
    if (totalElement) {
        totalElement.textContent = formatCurrency(total);
    }
}

// Preview Image
function previewImage(input, previewId) {
    if (input.files && input.files[0]) {
        const reader = new FileReader();
        reader.onload = function(e) {
            const preview = document.getElementById(previewId);
            if (preview) {
                preview.src = e.target.result;
                preview.style.display = 'block';
            }
        };
        reader.readAsDataURL(input.files[0]);
    }
}

// Validate Form
function validateForm(formId) {
    const form = document.getElementById(formId);
    if (form) {
        return form.checkValidity() === false ? false : true;
    }
    return true;
}

// Auto Calculate Subtotal in Modal
function calculateSubtotal() {
    const qtyInput = document.getElementById('qty');
    const priceInput = document.getElementById('harga');
    const subtotalElement = document.getElementById('subtotal');
    
    if (qtyInput && priceInput && subtotalElement) {
        const qty = parseInt(qtyInput.value) || 0;
        const price = parseInt(priceInput.value) || 0;
        const subtotal = qty * price;
        subtotalElement.textContent = formatCurrency(subtotal);
    }
}

// Search Filter
function filterTable(searchId, tableId) {
    const searchInput = document.getElementById(searchId);
    const table = document.getElementById(tableId);
    
    if (searchInput && table) {
        searchInput.addEventListener('keyup', function() {
            const filter = this.value.toUpperCase();
            const rows = table.querySelectorAll('tbody tr');
            
            rows.forEach(row => {
                const text = row.textContent.toUpperCase();
                row.style.display = text.includes(filter) ? '' : 'none';
            });
        });
    }
}

// Delete with Confirmation
function deleteItem(url, message = 'Apakah Anda yakin ingin menghapus data ini?') {
    if (confirm(message)) {
        window.location.href = url;
    }
}

// Print Struk
function printStruk() {
    window.print();
}

// Reset Form
function resetForm(formId) {
    const form = document.getElementById(formId);
    if (form) {
        form.reset();
    }
}