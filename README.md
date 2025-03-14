# Todo List App with Model Runner Integration

This project enhances a basic todo list application with Model Runner integration for local LLM capabilities.

## Architecture

The application consists of four main components:

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Frontend  │ >>> │   Backend   │ >>> │    LLM      │ >>> │ PostgreSQL  │
│  (React)    │     │  (Node.js)  │     │ (Model Run) │     │  Database   │
└─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘
      :3000              :8080              :11434              :5432
```

## Features

- Standard todo list functionality (add, view tasks)
- AI-powered capabilities:
  - Natural language task input ("Call mom tomorrow at 3pm")
  - Task categorization and prioritization
  - Smart task suggestions
  - Query tasks using natural language
  - Task summarization
- Dockerized deployment for easy setup
- Local LLM integration using Model Runner (no cloud API dependencies)

## Tech Stack

- Frontend: React
- Backend: Node.js with Express
- LLM Service: Model Runner (Docker-like experience for running LLMs locally)
- Database: PostgreSQL
- Database Admin: Adminer

## Prerequisites

- Docker and Docker Compose
- Git

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/ajeetraina/todolist-model-runner.git
   cd todolist-model-runner
   ```

2. Start the application using Docker Compose:
   ```bash
   docker compose up -d
   ```

3. Access the application at [http://localhost:3000](http://localhost:3000)

## Development Setup

### Frontend

The frontend is a React application:

```bash
cd frontend
npm install
npm start
```

### Backend

The Node.js backend can be run directly:

```bash
cd backend
npm install
npm start
```

### Environment Configuration

The backend connects to the LLM service using environment variables:

- `MODEL_RUNNER_URL`: URL for the model runner service
- `MODEL_NAME`: Model identifier to use
- `API_KEY`: API key for authentication (if required)

## Project Structure

```
├── backend/               # Node.js backend server
│   ├── config/            # Configuration files
│   ├── controllers/       # Route controllers
│   ├── db/                # Database connection and schema
│   ├── models/            # Data models
│   ├── routes/            # API routes
│   ├── services/          # Service layer including LLM service
│   └── server.js          # Main server file
├── frontend/              # React frontend
│   ├── public/            # Static files
│   └── src/               # React source code
│       ├── components/    # React components
│       ├── services/      # API service calls
│       └── App.js         # Main App component
├── llm/                   # Model Runner configuration
│   └── config.yaml        # Model configuration
├── postgres/              # PostgreSQL initialization files
│   └── init.sql           # Initial database setup
├── .env                   # Environment variables
├── compose.yaml           # Main Docker Compose file
└── model-runner.yaml      # Model Runner configuration
```

## License

MIT

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
