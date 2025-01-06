// Utility to get cart data from localStorage
function getCart() {
    return JSON.parse(localStorage.getItem("cart")) || [];
}

// Utility to save cart data to localStorage
function saveCart(cart) {
    localStorage.setItem("cart", JSON.stringify(cart));
}

// Add item to the cart
function addItem(name, price) {
    const cart = getCart();
    const existingItem = cart.find(item => item.name === name);

    if (existingItem) {
        existingItem.quantity += 1;
    } else {
        cart.push({ name, price, quantity: 1 });
    }

    saveCart(cart);
    alert(`${name} has been added to the cart.`);
}

// Remove item from the cart
function removeItem(name) {
    let cart = getCart();
    cart = cart.filter(item => item.name !== name);
    saveCart(cart);
    displayCart();
}

// Display items in the cart (for cart.html)
function displayCart() {
    const cart = getCart();
    const cartItems = document.getElementById("cart-items");
    const totalPriceElement = document.getElementById("total-price");

    if (!cartItems || !totalPriceElement) return;

    cartItems.innerHTML = ""; // Clear existing items
    let totalPrice = 0;

    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        totalPrice += itemTotal;

        cartItems.innerHTML += `
            <tr>
                <td>${item.name}</td>
                <td>Php ${item.price.toFixed(2)}</td>
                <td>
                    <button onclick="updateQuantity('${item.name}', -1)">-</button>
                    ${item.quantity}
                    <button onclick="updateQuantity('${item.name}', 1)">+</button>
                </td>
                <td>Php ${itemTotal.toFixed(2)}</td>
                <td>
                    <button class="btn btn-danger btn-sm" onclick="removeItem('${item.name}')">Remove</button>
                </td>
            </tr>`;
    });

    totalPriceElement.innerText = `Total: Php ${totalPrice.toFixed(2)}`;
}

// Update quantity of an item
function updateQuantity(name, change) {
    const cart = getCart();
    const item = cart.find(item => item.name === name);

    if (item) {
        item.quantity += change;
        if (item.quantity <= 0) {
            removeItem(name);
            return;
        }
        saveCart(cart);
        displayCart();
    }
}

// Handle checkout (for cart.html)
function handleCheckout() {
    const cart = getCart();

    if (cart.length === 0) {
        alert("NO ITEM TO CHECK OUT");
    } else {
        alert("Your order has been submitted. Thank you!");
        localStorage.removeItem("cart");
        displayCart();
    }
}

// Initialize cart on page load
document.addEventListener("DOMContentLoaded", displayCart);