import { Link } from 'react-router-dom';
import '../index.css';

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
              Herb is a green cat with the mental sharpness of a five year old. He enjoys spending time with Adam, his best friend, caretaker and romantic interest. Herb spends most of his free time attempting to understand the world around him with an optimistic attitude. 
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
              Adam is a red colored cat with severe depression and anger issues, but you can’t blame him. Whether he’s with Herb or not, he’s always in his head, regretting life decisions and yearning for a connection with someone he can relate to. 
            </p>
          </div>
        </div>
      </section>
    </main>
  );
}

export default About;
