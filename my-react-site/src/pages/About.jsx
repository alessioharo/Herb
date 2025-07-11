import { Link } from 'react-router-dom'; // keep this for nav links
import '../styles.css'; // if needed

function About() {
  return (
    <main>
      <section className="about-section">
        <div className="about-container">
          <a href="/images/Herb About.jpg" target="_blank" rel="noopener noreferrer">
            <img
              src="/images/Herb About.jpg"
              alt="Herb smiling"
              className="aboutphotos"
            />
          </a>
          <div className="about-text">
            <h2>Meet Herb</h2>
            <p>
              Herb is a green-yellow colored cat with the mental sharpness of a five year old...
            </p>
          </div>
        </div>

        <div className="about-container">
          <a href="/images/Adam About.jpg" target="_blank" rel="noopener noreferrer">
            <img
              src="/images/Adam About.jpg"
              alt="Adam Frowning"
              className="aboutphotos"
            />
          </a>
          <div className="about-text">
            <h2>Meet Adam</h2>
            <p>
              Adam is a red colored cat with severe depression and anger issues...
            </p>
          </div>
        </div>
      </section>
    </main>
  );
}

export default About;
