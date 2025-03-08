# 🛒 BestView - Ecommerce Platform

<div align="center">

[![Status](https://img.shields.io/badge/Status-Production%20Ready-success?style=for-the-badge)](https://github.com/hamrazhakeem/bestview-ecommerce)

[![Tech Stack](https://img.shields.io/badge/Frontend-HTML/CSS/JS-blue?style=for-the-badge&logo=html5)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![Tech Stack](https://img.shields.io/badge/Backend-Django-green?style=for-the-badge&logo=django)](https://www.djangoproject.com/)
[![Tech Stack](https://img.shields.io/badge/Database-PostgreSQL-blue?style=for-the-badge&logo=postgresql)](https://www.postgresql.org/)
[![Tech Stack](https://img.shields.io/badge/Architecture-Monolithic-orange?style=for-the-badge&logo=django)](https://www.djangoproject.com/)

</div>

## 📸 Project Screenshots

<div align="center" style="display: flex; justify-content: space-between;">
  <img src="./assets/images/homepage.png" alt="Home Page" width="32%" style="margin-right: 1%;"/>
  <img src="./assets/images/product.png" alt="Product Page" width="32%" style="margin-right: 1%;"/>
  <img src="./assets/images/checkout.png" alt="Checkout Page" width="32%"/>
</div>

## 🎯 About BestView

BestView is a comprehensive ecommerce platform sells spectacles built with Django, offering a seamless shopping experience with secure payment processing, responsive design, and robust product management capabilities.

### 🌟 Key Features

- **Product Management**
  - Category and brand organization
  - Product variants with color options
  - Inventory tracking system
  - Image gallery for products

- **Promotional Features**
  - Coupon system with validation
  - Category-based offers
  - Product-specific discounts

- **User Experience**
  - Responsive design for all devices
  - Intuitive product browsing and filtering
  - User account management
  - Order history and tracking

- **Secure Checkout**
  - PayPal integration for payments
  - Order processing and management
  - Address management
  - Cart functionality

- **Admin Dashboard**
  - Sales analytics and reporting
  - Product management
  - User management
  - Order processing
  
## 🚀 Getting Started

### Prerequisites
- Python 3.10+
- PostgreSQL
- Docker (optional)

### Installation & Setup

1. Clone the repository:

```bash
git clone https://github.com/hamrazhakeem/bestview-ecommerce.git
cd bestview-ecommerce
```

2. Create a .env file with required environment variables:
```env
SECRET_KEY=your_secret_key
DEBUG=True

DATABASE_NAME=your_db_name
DATABASE_USER=your_db_user
DATABASE_PASSWORD=your_db_password
DATABASE_HOST=your_db_host
DATABASE_PORT=your_db_port

EMAIL_HOST_USER=your_email
EMAIL_HOST_PASSWORD=your_email_password

PAYPAL_CLIENT_ID=your_paypal_client_id
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Run migrations:
```bash
python manage.py migrate
```

5. Start the development server:
```bash
python manage.py runserver
```

### Docker Setup

1. Build and run using Docker Compose:
```bash
docker-compose up --build
```

## 🔧 Tech Stack

- **Frontend**
  - HTML5/CSS3
  - JavaScript
  - Bootstrap

- **Backend**
  - Django
  - PostgreSQL
  - PayPal API Integration

- **Infrastructure**
  - Docker
  - NGINX
  - AWS EC2
  - GitHub Actions (CI/CD)

## 👥 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📬 Contact

For support or queries, reach out to us at [support@bestview.com](mailto:support@bestview.com)

---

<div align="center">
  <sub>Built with ❤️ for spectacle enthusiasts worldwide</sub>
</div>

