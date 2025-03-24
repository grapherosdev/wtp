import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const formData = await request.formData();
  const email = formData.get("email") as string | null;
  const password = formData.get("password") as string | null;

  if (!email || !password) {
    return NextResponse.redirect(
      new URL("/error?type=missing-credentials", request.url),
      { status: 302 }
    );
  }

  const supabase = await getSupabaseCookiesUtilClient();
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  const userData = data?.user;

  if (error || !userData) {
    return NextResponse.redirect(
      new URL("/error?type=login-failed", request.url),
      { status: 302 }
    );
  }

  return NextResponse.redirect(new URL("/", request.url), {
    status: 302,
  });
}
