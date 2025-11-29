"use client";

import { useState, useEffect } from "react";

export default function Page() {
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const getAttractions = async () => {
      try {
        const apiHost = process.env.NEXT_PUBLIC_API_HOST;
        const res = await fetch(`${apiHost}/attractions`, { cache: "no-store" });
        if (!res.ok) throw new Error("Failed to fetch");
        const data = await res.json();
        setRows(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };
    getAttractions();
  }, []);

  if (loading) return <EmptyState message="Loading..." />;
  if (error) return <EmptyState message={`Error: ${error}`} />;

  return (
    <main className="container">
      <Header />
      {rows.length === 0 ? (
        <EmptyState message="No attractions found." />
      ) : (
        <section className="grid" aria-live="polite">
          {rows.map((x, index) => (
            <Card key={x.id} data={x} delay={index * 0.1} />
          ))}
        </section>
      )}
    </main>
  );
}

const Header = () => (
  <header className="header">
    <h1 className="title">F1 Circuits</h1>
    <p className="subtitle">Explore iconic Formula 1 tracks worldwide</p>
  </header>
);

const EmptyState = ({ message }) => (
  <div className="empty">{message}</div>
);

const Card = ({ data, delay }) => (
  <article className="card" style={{ "--delay": `${delay}s` }} tabIndex={0}>
    {data.coverimage && (
      <div className="media">
        <img
          src={data.coverimage}
          alt={data.name}
          className="img animate-img"
          loading="lazy"
          decoding="async"
        />
      </div>
    )}
    <div className="body">
      <h3 className="card-title">{data.name}</h3>
      {data.detail && <p className="detail">{data.detail}</p>}
      <div className="meta">
        <span className="badge">{data.country || "Unknown"}</span>
        <small>
          Lat: <span className="code">{data.latitude}</span> · Lng:{" "}
          <span className="code">{data.longitude}</span>
        </small>
      </div>
    </div>
  </article>
);
