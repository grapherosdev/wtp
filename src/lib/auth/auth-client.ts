import { createAuthClient } from "better-auth/react";
import {
	adminClient,
	customSessionClient,
	multiSessionClient,
	oneTapClient,
	organizationClient,
	usernameClient,
} from "better-auth/client/plugins";
import { toast } from "sonner";
import type { auth } from ".";

export const authClient = createAuthClient({
	plugins: [
		organizationClient(),
		usernameClient(),
		adminClient(),
		multiSessionClient(),
		oneTapClient({
			clientId: process.env.NEXT_PUBLIC_GOOGLE_CLIENT_ID as string,
			autoSelect: false,
			cancelOnTapOutside: true,
			context: "signin",
			promptOptions: {
				baseDelay: 1000, // Base delay in ms (default: 1000)
				maxAttempts: 1, // Maximum number of attempts before triggering onPromptNotification (default: 5)
			},
		}),
		customSessionClient<typeof auth>(),
	],
	fetchOptions: {
		onError: (ctx) => {
			toast.error(ctx.error.message);
		},
	},
});

export const {
	signUp,
	signIn,
	signOut,
	useSession,
	organization,
	useListOrganizations,
	useActiveOrganization,
} = authClient;
