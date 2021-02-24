import styles from '../styles/components/Profiles.module.css';

export function Profile(){
  return(
    <div className={styles.profileContainer}>
      <img src="https://github.com/eduardotecnologo.png" alt="Eduardo Developer"/>
      <div>
        <strong>Eduardo Developer</strong>
        <p>
          <img src="icons/level.svg" alt="Level"/>
          Level 01
        </p>
      </div>
    </div>
  );
}