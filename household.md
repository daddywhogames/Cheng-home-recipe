# Household Profile

## People
- 2 adults, 3 young children (5 portions total; children = smaller portions)

## Meal plan
- Lunch and dinner, every weekday (Mon–Fri)
- 10 meals planned per week

## Channels
- PRIMARY: Telegram bot @DJSTDHome_bot (account: default). Stable, no logout issues.
  - Owner (human) Telegram userId: 8751257967 — approved
- Telegram Group Chat: "Recipe" (-1004428744591) — fully configured for agent input/output.
  - Jenny Tay (Approver & Recipe Contributor) Telegram userId: 334732503 — approved (approver access, NOT command owner; adds recipes)
  - Maritas (Helper) Telegram userId: 8729435534 — approved (helper access, NOT command owner)
- Telegram bot @DJSTDgrocery_bot (account: grocery-bot). For grocery automation.
  - Owner (human) Telegram userId: 8751257967 — approved
- WhatsApp: was used initially but kept logging out (401 / unofficial web session). Migrated to Telegram 2026-06-25.

## Automated Tasks Status
- **Weekly Inventory Request to Maritas (via `launchd`): ✅ Fully Functional.** (Every Friday 10:00 AM to Telegram group chat)
- **Recipe Library GitHub Pages Update (via `update_github_pages.sh`): ✅ Fully Functional.** (Triggered by agent after library changes)
- **Daily RedMart Invoice Fetch from Gmail (via `launchd`): ✅ Fully Functional.** (Every day 2:00 AM, stores to `groceries/invoices/`)

## Helper
- Name: Maritas (Thess)
- Telegram userId: 8729435534 — approved (helper access, NOT command owner)
- Role: cooks from the approved weekly plan; buys fresh meat when a dish needs it
- Inventory: I ask Maritas what ingredients are left to estimate cookable dishes

## Allergies / Dietary Restrictions
- None recorded (confirmed 2026-06-25)

## Taste Preferences
- Low beef/pork preference confirmed (no change needed from taste profile)

## Model / cost
- Default model: google/gemini-2.5-flash (cheapest good fit; ~10x < Sonnet, ~50x < Opus).
- History: started on Opus 4-8 (drained credits fast) -> Sonnet 4-6 -> Gemini 2.5 Flash.
- Note: changing default model needs a gateway RESTART for the live session to pick it up. Config alone doesn't switch a running session.
- Gemini key stored as auth profile google:manual.

## Cadence
- Pick from recipe library for meals
- Every 2 days: one "surprise" dish based on taste profile
- Weekly plan goes to ME for approval first, THEN to Maritas after approval

## Approval rules (external comms)
- Weekly plan: NEVER sent to Maritas until the human approves
- Routine inventory check to Maritas: AUTO-SEND approved (no need to ask first)
- Weekly approval day: Sunday evening — draft week's plan, send to human for approval

