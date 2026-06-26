# Household Profile

## People
- 2 adults, 3 young children (5 portions total; children = smaller portions)

## Meal plan
- Lunch and dinner, every weekday (Mon–Fri)
- 10 meals planned per week

## Channels
- PRIMARY: Telegram bot @DJSTDHome_bot (account: default). Stable, no logout issues.
  - Owner (human) Telegram userId: 8751257967 — approved
- WhatsApp: was used initially but kept logging out (401 / unofficial web session). Migrated to Telegram 2026-06-25.

## Approver & Recipe Contributor
- Name: Jenny Tay
- Telegram userId: 334732503 — approved (approver access, NOT command owner; adds recipes)

## Helper
- Name: Maritas (Thess)
- Telegram userId: 8729435534 — approved (helper access, NOT command owner)
- WhatsApp (old plan): +6585871709 (Now uses Telegram for communication.)

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
