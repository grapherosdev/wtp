import { NextRequest, NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/getResReqClient";

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  const session = await supabase.auth.getSession();

  const requestedPath = request.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  if (!sessionUser && requestedPath !== "/login") {
    return NextResponse.redirect(new URL("/login", request.url));
  }

  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
