import type { auth } from "@/lib/auth";
import type { authClient } from "@/lib/auth/auth-client";

export type Session = typeof auth.$Infer.Session;
export type ActiveOrganization = typeof authClient.$Infer.ActiveOrganization;
export type Invitation = typeof authClient.$Infer.Invitation;
