# xh — Smart Campus Platform (Student Client)

> **Competition project** — Vue 3 + Vite + Element Plus · Student-facing web app
> 学生向けキャンパスプラットフォーム（学生端）

## About

`xh` is the student client of a smart campus / sports management platform,
built for a campus innovation competition (大赛参赛作品).

It provides students with daily school-life features: home dashboard with calendar
and announcements, learning progress tracking, leave application (请假), notice
browsing (通知), exam papers (试卷), and an AI-powered quiz/evaluation module (智能测评).

The repository also contains an **AI chat page for WeChat Mini Program** (`ai`, uni-app
style) — an "AI 学姐" Q&A assistant integrated with the platform.

## Features

- 📅 **Home dashboard** — calendar, carousel, announcement cards
- 📚 **Learning progress** (学习进度) — per-subject progress cards
- 📝 **Application management** (应用管理) — leave requests, notices, exam papers
  with search / filter / pagination
- 🧠 **AI evaluation** (智能测评) — interactive quiz module
- 🤖 **WeChat Mini Program AI chat** — "AI 学姐" Q&A assistant (uni-app)
- 🌐 **i18n** — vue-i18n ready

## Tech Stack

| Layer | Tech |
| --- | --- |
| Framework | Vue 3 (Composition API, `<script setup>`) |
| Build | Vite 5 + vue-tsc |
| UI | Element Plus |
| State | Pinia |
| Routing | Vue Router 4 |
| HTTP | Axios |
| i18n | vue-i18n |

## Getting Started

```bash
cd xh
pnpm install
pnpm dev        # starts Vite dev server
pnpm build      # type-check + production build
```

## Structure

```
xh/                    # Vue 3 app (student client)
├── src/
│   ├── pages/         # home / plan / xuexijindu / yingyongguanli / zhinengceping
│   ├── components/    # shared top & bottom layout
│   └── router/        # route definitions
ai                     # WeChat Mini Program AI chat page (uni-app)
```

## Status

Completed for the competition; screenshots and live demo to be added.
