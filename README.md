# FastRails

FastRails - A Rails and React Boilerplate

## Features

- Codex: Integrated AI-powered code generation and assistance
- Knowledge Management: Built-in system for Cursor to manage and utilize project-specific knowledge
- Rails Backend: Robust and scalable backend powered by Ruby on Rails
- React Frontend: Modern and responsive user interface built with React
- JavaScript and TypeScript Support: Full support for both JavaScript and TypeScript development
- shadcn/ui Components: Pre-built, customizable UI components for rapid development
- Vite Integration: Fast build tool and development server
- Tailwind CSS: Utility-first CSS framework for quick styling
- PostgreSQL Database: Reliable and powerful relational database
- RESTful API: Well-structured API endpoints for seamless frontend-backend communication
- Authentication System: Secure user authentication and authorization
- Testing Framework: Comprehensive testing setup with RSpec and Jest
- Docker Support: Containerization for consistent development and deployment environments


## Prerequisites
- Ruby (version specified in `.ruby-version` file)
- Node.js (v14 or later recommended)
- Yarn (v1.x or later)

## Installation

1. Clone the repository:
   ```
   git clone [your-repo-url]
   cd [your-project-name]
   ```

2. Install Ruby dependencies:
   ```
   bundle install

3. Install Node.js dependencies:
```
    npm install
```


4. Set up the database:
   ```
   rails db:create db:migrate db:seed
   ```

5. Configure Tailwind CSS:
   The `tailwind.config.js` and `postcss.config.js` files should already be present in the root directory.

6. Set up Vite:
   The `vite.config.ts` file should be configured in the root directory.

## Running the Application

1. Start the Rails server:
   ```
   bin/dev
   ```

2. Visit `http://localhost:3000` in your browser.

## Project Structure

- `app/frontend/`: Contains React components and pages
- `app/frontend/components/ui/`: UI components (Button, Calendar, Switch, Table)
- `app/frontend/pages/Pages/`: Page components (e.g., Welcome)
- `app/frontend/entrypoints/`: CSS entry point
- `app/frontend/libs/`: Utility functions
- `config/`: Rails configuration files
- `db/`: Database files and seeds
- `public/`: Static files
- `.ai/`: Knowledge management system files

This is inspired by Evil Martian's Inertia.js on Rails documentation at — https://evilmartians.com/chronicles/inertiajs-in-rails-a-new-era-of-effortless-integration

## Additional Configuration

- Tailwind CSS is used for styling (see `tailwind.config.js`)
- TypeScript is used for React components (see `tsconfig.json`)
- Vite is used as the frontend build tool (see `vite.config.ts`)

## Knowledge Management System

This project uses a knowledge management system located in the `.ai` directory. It helps in organizing and managing project-related information and documentation. This is a fork from Ziad Beyens's AI codex project — https://github.com/udecode/dotai

How to use the knowledge management system:

1. When you start a new session on Cursor, type start-session.md
2. When you end a session, type end-session.md
3. When you want to learn something, type learn.md
4. When you want to split the codex, type split-codex.md

Example Flow:

1️⃣ Day 1: Working on user authentication
- Code for several hours
- Use 
@end
-session command
- AI generates a summary in .ai/status/2024-09-03.md:
- Development Steps: Implemented login form, set up API routes
- Key Decisions: Chose JWT for auth tokens
- Next Steps: Implement password reset, user registration

2️⃣ Day 2: Continuing work
- Send @start-session @.ai/status
- AI reads http://2024-09-03.md file
- AI is now aware of previous progress and planned next steps
- You ask: "What should I work on today?"
- AI suggests: "Based on your last session, you should implement the password reset functionality. This involves creating a new API route and a form component."

3️⃣ Day 2: End of work
- Use 
@end
-session command again
- AI creates http://2024-09-04.md with updates:
- Development Steps: Implemented password reset functionality
- Key Decisions: Decided to use email for password reset
- Next Steps: Complete user registration, start on user profile page

4️⃣ Day 3: New session
- Send @start-session @.ai/status
- AI reads both http://2024-09-03.md and http://2024-09-04.md
- AI now has a cumulative understanding of the project's progress
- You can jump right into coding, with the AI aware of your project's context

## Customizing the Project Name and Git Repository

To change the project name from 'FastRails' to your desired name and set up your own Git repository, follow these steps:

1. Remove the existing Git repository:
   ```
   rm -rf .git
   ```

2. Initialize a new Git repository:
   ```
   git init
   ```

3. Install the 'rename' gem:
   ```
   gem install rename
   ```

4. Use the 'rename' gem to change the Rails project name:
   ```
   rails g rename:into NewProjectName
   ```
   Replace 'NewProjectName' with your desired project name.

5. Update the following frontend React files:
   - `app/layout.tsx`: Update the `metadata` object
   - `app/components/Navbar.tsx`: Change the text in the navbar link
   - Any other components or pages that might reference the project name

6. Search for 'FastRails' in the entire project and replace it with your new project name:
   ```
   grep -R "FastRails" .
   ```
   This will show you all occurrences of 'FastRails' in your project. Update these manually as needed.

7. Update this README.md file to reflect your new project name and description.

8. Create a new repository on GitHub (or your preferred Git hosting service).

9. Add the new remote repository:
   ```
   git remote add origin https://github.com/yourusername/your-new-repo-name.git
   ```

10. Stage all files, commit, and push to your new repository:
    ```
    git add .
    git commit -m "Initial commit"
    git branch -M main
    git push -u origin main
    ```

Remember to commit your changes after renaming the project and setting up the new repository.

## Contributing

When contributing to this project, please ensure that you update the relevant documentation in the `.ai` directory along with your code changes. This helps maintain an up-to-date knowledge base for all team members.