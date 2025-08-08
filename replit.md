# Khadim Hospital Website

## Overview

A modern healthcare website for Khadim Hospital built with Astro and Tailwind CSS. The site showcases the hospital's medical services, doctor profiles, and facilities, focusing on gynecology and general surgery specialties. The website provides information about the hospital's offerings, expert medical staff, and patient care services in Kot Radha Kishan.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Framework**: Astro 5.x for static site generation with optimal performance
- **Styling**: Tailwind CSS for utility-first styling approach
- **TypeScript**: Strict configuration for type safety and better development experience
- **Component Structure**: Astro components for server-side rendering with client-side hydration when needed
- **Font Loading**: Google Fonts (Inter) for consistent typography

### Data Management
- **Static Data**: JSON files for structured content (doctors.json, services.json)
- **Data Organization**: Centralized data in `/src/data/` directory for easy content management
- **Content Strategy**: Static content approach suitable for hospital information that doesn't change frequently

### Styling System
- **Design System**: Custom Tailwind CSS configuration with defined color schemes
- **Component Classes**: Reusable button styles (btn-primary, btn-secondary, btn-outline)
- **Responsive Design**: Mobile-first approach using Tailwind's responsive utilities
- **Typography**: Inter font family for modern, readable interface

### File Organization
- **Path Aliases**: `@/*` mapped to `src/*` for clean imports
- **Asset Management**: Static assets referenced via URLs (Unsplash for doctor images)
- **Modular Structure**: Separation of styles, data, and components

## External Dependencies

### Core Technologies
- **Astro**: Static site generator and framework
- **Tailwind CSS**: Utility-first CSS framework
- **TypeScript**: Type-safe JavaScript development

### External Services
- **Google Fonts**: Inter font family hosting
- **Unsplash**: Image hosting for doctor profile pictures
- **External Images**: Third-party image services for visual content

### Development Tools
- **Node.js**: Runtime environment for build processes
- **npm**: Package management for dependencies
- **Astro Compiler**: Template compilation and optimization