import Link from "next/link";

interface ErrorPageProps {
  searchParams: {
    type: string;
  };
}

export default function ErrorPage({ searchParams }: ErrorPageProps) {
  const { type } = searchParams;
  const knownErrors = ["login-failed"];

  return (
    <div style={{ textAlign: "center" }}>
      <h1>Ooops!</h1>
      {type === "login-failed" && (
        <strong>Login was not successfull, sorry.</strong>
      )}

      {type === "missing-credentials" && (
        <strong>credentials were missing</strong>
      )}

      {!knownErrors.includes(type) && (
        <strong>
          Something went wrong. Please try again or contact support.
        </strong>
      )}

      <br />
      <br />

      <Link role="button" href="/">
        Go back.
      </Link>
    </div>
  );
}
