Maker Inventory & Orders App

A Flutter + Firebase app designed for small makers and workshops to manage inventory, orders, and bills of materials (BOMs). Built as a portfolio project to demonstrate clean architecture, real-time sync, and offline-first design.

🚀 Features (MVP)

- Authentication & Roles: Email/Google sign-in; Admin, Staff, Read-only roles
- Catalog: Items with variants, photos, stock levels, CSV import
- Inventory: Stock adjustments, per-location tracking, low-stock alerts
- BOMs (Bills of Materials): Define components, auto-consume during builds
- Orders: Sales Orders with full lifecycle (Draft → Shipped → Completed), PDF export
- Customers & Suppliers: Simple CRM with quick actions
- Production (Build Jobs): Start & complete builds, auto-update stock
- Reporting: Dashboard cards, inventory value, due orders
- Notifications: Push alerts for low-stock and due orders

📱 Screens

- Dashboard: KPIs, activity log, quick actions
- Orders: List by status, order detail with timeline & documents
- Inventory: Items, variants, BOMs, movement history
- Build Jobs: Track and complete production tasks
- Contacts: Customers and suppliers
- Settings: Org profile, locations, roles, defaults

🗂️ Tech Stack

- Frontend: Flutter (Riverpod, GoRouter)
- Backend: Firebase (Auth, Firestore, Cloud Functions, Storage, FCM)
- Design: Material 3, dark-mode ready
- Testing: Flutter test suite (unit, widget, integration)

🏗️ Architecture

- Data Layer: Firestore repositories, Cloud Functions for stock logic
- Domain Layer: Pure Dart models & services
- UI Layer: Feature-first folder structure (items, orders, stock, build)
- State Management: Riverpod providers & notifiers

🔒 Security

- Firebase Security Rules enforce:
- Only org members can access data
- Role-based writes (Admins/Managers vs Staff)
- Server timestamps for all writes

📊 Firestore Schema (High-Level)

/workspaces/{ws}
/users/{uid}
/items/{itemId}
/variants/{variantId}
/stock/{locId}
/bom/{componentId}
/movements/{moveId}
/orders/{orderId}
/lines/{lineId}
/customers/{custId}
/suppliers/{supId}
/activities/{actId}
/settings

✨ Demo Data (seed)

- Item: Coffee Table (variants Small, Large)
- Materials: MDF board, Screws, Glue
- Orders: SO#3001 (Customer: Cozy Café)
- Work Order: WO#2001 (Make 5 Large Coffee Tables)

📖 License

MIT License. Free to use and adapt.

🙋 About

Created by Ze Kai Chong as part of a Flutter + Firebase portfolio project.