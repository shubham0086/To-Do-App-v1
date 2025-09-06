# Todo App with Membership & Priority Tags

A full-stack web application for managing todos with user authentication and color-coded priority system.

## Features

- **User Authentication**: Register and login system with JWT tokens
- **Personal Todo Lists**: Each user has their own private todo list
- **Priority System**: Color-coded priority tags (🔴 High, 🟡 Medium, 🟢 Low)
- **CRUD Operations**: Create, read, update, and delete todos
- **Filtering**: Filter todos by completion status and priority level
- **Responsive Design**: Clean, modern UI that works on desktop and mobile

## Tech Stack

- **Backend**: Node.js, Express.js, SQLite, JWT
- **Frontend**: React, Axios, React Router
- **Database**: SQLite (file-based, per-user data isolation)

## Priority System

- **🔴 High Priority**: Red color coding for urgent tasks
- **🟡 Medium Priority**: Yellow color coding for normal tasks  
- **🟢 Low Priority**: Green color coding for low-priority tasks

## Installation & Setup

### Prerequisites
- Node.js (v14 or higher)
- npm

### Backend Setup
1. Navigate to the project root directory
2. Install server dependencies:
   ```bash
   npm install
   ```

### Frontend Setup
1. Navigate to the client directory:
   ```bash
   cd client
   ```
2. Install client dependencies:
   ```bash
   npm install
   ```

### Quick Setup (All at once)
Run this from the project root:
```bash
npm run install-all
```

## Running the Application

### Development Mode
1. Start both backend and frontend servers:
   ```bash
   npm run dev
   ```

This will start:
- Backend server on http://localhost:5000
- Frontend React app on http://localhost:3000

### Production Mode
1. Build the React app:
   ```bash
   cd client && npm run build
   ```
2. Start the production server:
   ```bash
   npm start
   ```

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user

### Todos (Authenticated)
- `GET /api/todos` - Get all todos for authenticated user
- `POST /api/todos` - Create new todo
- `PUT /api/todos/:id` - Update todo
- `DELETE /api/todos/:id` - Delete todo
- `PATCH /api/todos/:id/toggle` - Toggle todo completion

## Usage

1. **Register**: Create a new account with username, email, and password
2. **Login**: Sign in with your email and password
3. **Create Todos**: Add new tasks with title, description, and priority
4. **Manage Todos**: 
   - Mark as complete/pending
   - Edit todo details and priority
   - Delete todos
   - Filter by status and priority
5. **Priority Colors**:
   - Red border/tag = High priority
   - Yellow border/tag = Medium priority  
   - Green border/tag = Low priority

## Security Features

- Password hashing with bcrypt
- JWT token authentication
- User data isolation (users can only access their own todos)
- Input validation and sanitization
- CORS protection
- Helmet security headers

## Database Schema

### Users Table
- id (Primary Key)
- username (Unique)
- email (Unique)
- password (Hashed)
- created_at

### Todos Table  
- id (Primary Key)
- user_id (Foreign Key)
- title
- description
- priority (high/medium/low)
- completed (Boolean)
- created_at
- updated_at
