"use client";

import Link from "next/link";
import { useActionState, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Loader2 } from "lucide-react";
import { authClient } from "@/lib/auth/auth-client";
import { cn, fetchCallback } from "@/lib/utils";
import {
	Card,
	CardContent,
	CardDescription,
	CardHeader,
	CardTitle,
} from "@/components/ui/card";
import { toast } from "sonner";
import type { ActionState } from "@/lib/auth/middleware";
import { signIn, signUp } from "./action";

export function Login({
	mode = "signin",
	className,
	...props
}: React.ComponentProps<"div"> & {
	mode?: "signin" | "signup";
}) {
	const router = useRouter();
	const searchParams = useSearchParams();
	const redirect = searchParams.get("redirect");
	const priceId = searchParams.get("priceId");
	const inviteId = searchParams.get("inviteId");

	const [state, formAction, pending] = useActionState<ActionState, FormData>(
		async (state: ActionState, formData: FormData): Promise<ActionState> => {
			const result =
				mode === "signin"
					? await signIn(state, formData)
					: await signUp(state, formData);

			return result || state;
		},
		{ error: "" },
	);

	return (
		<div className={cn("flex flex-col gap-6", className)} {...props}>
			<Card>
				<CardHeader className="text-center">
					<CardTitle className="text-xl">
						{mode === "signin" ? "Welcome back" : "Create an account"}
					</CardTitle>
					<CardDescription>
						{" "}
						{mode === "signin"
							? "Sign in with your Google account"
							: "Signup with your Google account"}
					</CardDescription>
				</CardHeader>
				<CardContent>
					<form action={formAction}>
						<div className="grid gap-6">
							<div className="flex flex-col gap-4">
								<Button
									variant="outline"
									className="w-full"
									disabled
									onClick={async () => {
										await authClient.signIn.social({
											provider: "google",
											callbackURL: "/projects",
										});
									}}
								>
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>Google Icon</title>
										<path
											d="M12.48 10.92v3.28h7.84c-.24 1.84-.853 3.187-1.787 4.133-1.147 1.147-2.933 2.4-6.053 2.4-4.827 0-8.6-3.893-8.6-8.72s3.773-8.72 8.6-8.72c2.6 0 4.507 1.027 5.907 2.347l2.307-2.307C18.747 1.44 16.133 0 12.48 0 5.867 0 .307 5.387.307 12s5.56 12 12.173 12c3.573 0 6.267-1.173 8.373-3.36 2.16-2.16 2.84-5.213 2.84-7.667 0-.76-.053-1.467-.173-2.053H12.48z"
											fill="currentColor"
										/>
									</svg>
									{mode === "signin"
										? "Sign-in with Google "
										: "Signup with Google "}
								</Button>
							</div>
							<div className="after:border-border relative text-center text-sm after:absolute after:inset-0 after:top-1/2 after:z-0 after:flex after:items-center after:border-t">
								<span className="bg-card text-muted-foreground relative z-10 px-2">
									Or continue with
								</span>
							</div>
							<div className="grid gap-6">
								{mode === "signup" && (
									<div className="grid gap-3">
										<Label htmlFor="name">Name</Label>
										<Input
											id="name"
											name="name"
											type="text"
											autoComplete="name"
											placeholder="Enter your name"
											required
											defaultValue={state.name as string}
											maxLength={50}
										/>
									</div>
								)}

								<div className="grid gap-3">
									<Label htmlFor="email">Email</Label>
									<Input
										id="email"
										name="email"
										defaultValue={state.email as string}
										type="email"
										autoComplete="email"
										required
										maxLength={50}
										placeholder="m@example.com"
									/>
								</div>
								<div className="grid gap-3">
									<div className="flex items-center">
										<Label htmlFor="password">Password</Label>
										<a
											href="/forgot-password"
											className="ml-auto text-sm underline-offset-4 hover:underline"
										>
											Forgot your password?
										</a>
									</div>
									<Input
										id="password"
										name="password"
										type="password"
										defaultValue={state.password as string}
										autoComplete={
											mode === "signin" ? "current-password" : "new-password"
										}
										required
										minLength={8}
										maxLength={100}
										placeholder="Enter your password"
									/>
								</div>
								{state?.error && (
									<div className="text-red-500 text-sm">{state.error}</div>
								)}

								<Button type="submit" className="w-full" disabled={pending}>
									{pending ? (
										<>
											<Loader2 className="animate-spin mr-2 h-4 w-4" />
											Loading...
										</>
									) : mode === "signin" ? (
										"Sign in"
									) : (
										"Sign up"
									)}
								</Button>
							</div>

							{/* todo: uncomment this main branch*/}

							{/* <div className="text-center text-sm">
								<>
									{mode === "signin"
										? "Don't have an account? "
										: "Already have an account? "}
									<Link
										href={`${mode === "signin" ? "/sign-up" : "/sign-in"}${
											redirect ? `?redirect=${redirect}` : ""
										}`}
										className="underline underline-offset-4"
									>
										{mode === "signin" ? "SignUp" : "SignIn"}
									</Link>
								</>
							</div> */}
						</div>
					</form>
				</CardContent>
			</Card>
			<div className="text-muted-foreground *:[a]:hover:text-primary text-center text-xs text-balance *:[a]:underline *:[a]:underline-offset-4">
				By clicking continue, you agree to our <a href="/">Terms of Service</a>{" "}
				and <a href="/">Privacy Policy</a>.
			</div>
		</div>
	);
}
