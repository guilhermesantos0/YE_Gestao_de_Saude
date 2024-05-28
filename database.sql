CREATE DATABASE IF NOT EXISTS `ye_gestao_saude`;
USE `ye_gestao_saude`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: abim_lab_test
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `abim_lab_test` (
  `lab_tests` varchar(500) DEFAULT NULL,
  `ref_ranges` varchar(500) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: consults
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `consults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: exams
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  KEY `FK__1` (`id`),
  CONSTRAINT `FK__1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: medicamentos
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `medicamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `farmaco` varchar(255) DEFAULT NULL,
  `detentor` varchar(255) DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  `registro` varchar(255) DEFAULT NULL,
  `concentracao` varchar(255) DEFAULT NULL,
  `forma_farmaceutica` varchar(255) DEFAULT NULL,
  `data_inclusao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1198 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_data
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `bornDate` varchar(50) DEFAULT NULL,
  KEY `FK__users` (`id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_medicines
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `user_medicines` (
  `id` int(11) DEFAULT NULL,
  `medicineId` int(11) DEFAULT NULL,
  KEY `FK__users_medicines` (`id`),
  KEY `FK__medicamentos_medicines` (`medicineId`),
  CONSTRAINT `FK__medicamentos_medicines` FOREIGN KEY (`medicineId`) REFERENCES `medicamentos` (`id`),
  CONSTRAINT `FK__users_medicines` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: abim_lab_test
# ------------------------------------------------------------

INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '1,25-Dihydroxyvitamin D\n(1,25-dihydroxycholecalciferol), serum',
    'See  Vitamin D metabolites'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '1,5-Anhydroglucitol, serum or plasma',
    'Female: 6.8–29.3 μg/mL; male: 10.7–32 μg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '17-Hydroxycorticosteroids (Porter-Silber), urine',
    'Female: 2–8 mg/24 hr; male: 3–10 mg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('17-Hydroxyprogesterone, serum', '˂80 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, follicular', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, luteal', '˂285 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, postmenopausal', '˂51 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Male (adult)', '˂220 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '25-Hydroxyvitamin D\n(25-hydroxycholecalciferol), serum',
    'See  Vitamin D metabolites'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '5-Hydroxyindoleacetic acid, urine',
    '2–9 mg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '5\'-Nucleotidase, serum',
    '0.3–2.6 (Bodansky) units/dL (0–15 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '6-Thioguanine, whole blood',
    '230–400 pmol/8x108 RBCs'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Absolute neutrophil count (ANC)', '2000–8250/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Acid phosphatase, serum',
    '0.5–2.0 (Bodansky) units/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Prostatic fraction', '0.1–0.4 unit/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('ACTH, plasma', '10–60 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Activated partial thromboplastin time',
    '25–35 seconds'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('ADAMTS13 activity', '>60%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Adrenocorticotropic hormone (ACTH), plasma',
    '10–60 pg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Albumin, serum', '3.5–5.5 g/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Albumin, urine', '˂25 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Albumin-to-creatinine ratio, urine', '˂30 mg/g');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Aldolase, serum', '0.8–3.0 IU/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Aldosterone, plasma', '≤10 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Supine or seated', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Standing', '˂21 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Low-sodium diet (supine)', '≤30 ng/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Aldosterone, urine', '5–19 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Alkaline phosphatase, serum', '30–120 U/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Alpha1-antitrypsin (AAT), serum',
    '150–350 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Alpha2-antiplasmin activity, plasma', '75%–115%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Alpha-amino nitrogen, urine', '100–290 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Alpha-fetoprotein, serum', '˂10 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Amino acids, urine', '200–400 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Aminotransferase, serum alanine (ALT, SGPT)',
    '10–40 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Aminotransferase, serum aspartate (AST, SGOT)',
    '10–40 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ammonia, plasma', '40–70 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Amylase, serum',
    '25–125 U/L (80–180 [Somogyi] units/dL)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Amylase, urine', '1–17 U/hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Androstenedione, serum',
    'Female: 30–200 ng/dL; male: 40–150 ng/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Angiotensin-converting enzyme, serum',
    '8–53 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Anion gap, serum', '7–13 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antibodies to double-stranded DNA', '0–7 IU/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Anticardiolipin antibodies', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgG', '˂20 GPL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgM', '˂20 MPL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-cyclic citrullinated peptide antibodies',
    '˂20 units'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antideoxyribonuclease B', '˂280 units');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Anti-F-actin antibodies, serum', '≤1:80');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antihistone antibodies', '˂1:16');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-liver-kidney microsomal antibodies (anti-LKM)',
    '˂1:20'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antimitochondrial antibodies', '≤1:5');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti–myelin associated glycoprotein antibody',
    '˂1:1600'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antimyeloperoxidase antibodies', '˂1.0 U');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antinuclear antibodies', '≤1:40');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-phospholipase A2 receptor (PLA2R) antibodies,\nserum\n[ELISA]',
    'Negative: <14 RU/mL\nBorderline: 14 – <20 RU/mL Positive: ≥20 RU/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-RNP antibodies\n[by chemiluminescence method]',
    '<20 CU'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-RNP antibodies\n[by multiplex flow immunoassay]',
    '<1.0 AI'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-Scl-70 antibodies (topoisomerase 1 antibodies), IgG,\nserum',
    'Negative: <1.0 U\n[Positive: ≥1.0 U]'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Anti–smooth muscle antibodies', '≤1:80');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-SSA/Ro & anti-SSB antibodies\n[by chemiluminescence method]',
    '<20 CU'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-SSA/Ro & anti-SSB antibodies\n[by multiplex flow immunoassay]',
    '<1.0 AI'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antistreptolysin O titer', '˂200 Todd units');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antithrombin activity', '80%–120%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antithyroglobulin antibodies', '˂20 U/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Antithyroid peroxidase antibodies', '˂2.0 U/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Anti-tissue transglutaminase antibodies',
    'See  Tissue transglutaminase antibody'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Apolipoprotein A-1, serum',
    'Female: ≥140 mg/dL\nMale: ≥120 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Apolipoprotein B, serum',
    'Desirable: ˂90 mg/dL Borderline high: 90–119 mg/dL High: 120–139 mg/dL\nVery High: ≥140 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Arterial blood gas studies (patient\nbreathing room air):',
    'nan'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('pH', '7.38–7.44');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('PaCO2', '3842 mm Hg');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('PaO2', '75–100 mm Hg');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Bicarbonate', '23–26 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Oxygen saturation', '≥95%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Methemoglobin', '0.5%–3.0%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Ascorbic acid (vitamin C), blood',
    '0.4–1.5 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Ascorbic acid, leukocyte',
    '16.5 ± 5.1 mg/dL of leukocytes'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('(1,3)-Beta-D-glucan, serum', '˂60 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Beta-human chorionic gonadotropin (beta-hCG), serum',
    'Female, premenopausal nonpregnant: ˂1.0 U/L;\nfemale, postmenopausal: ˂7.0 U/L; male: ˂1.4 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Beta-human chorionic gonadotropin (beta-hCG), urine',
    '˂2 mIU/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Beta2-glycoprotein I antibodies:', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgG', '˂21 SGU');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgM', '˂21 SMU');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Beta-hydroxybutyrate, serum', '˂0.4 mmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Beta2-microglobulin, serum', '0.54–2.75 mg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Bicarbonate, serum', '23–28 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Bilirubin, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', '0.3–1.0 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Direct', '0.1–0.3 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Indirect', '0.2–0.7 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Bleeding time (template)', '˂8 minutes');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Blood urea nitrogen (BUN), serum or plasma',
    '8–20 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Bone-specific alkaline phosphatase, serum',
    'Female, premenopausal: 4.5–16.9 µg/L Female, postmenopausal: 7.0–22.4 µg/L\nMale, 25 years of age or older: 6.5–20.1 µg/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'B-type natriuretic peptide, plasma',
    '˂100 pg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('C peptide, serum', '0.8–3.1 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Calcitonin, serum',
    'Female: ≤5 pg/mL; male: ≤10 pg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Calcium, ionized, serum', '1.12–1.23 mmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Calcium, serum', '8.6–10.2 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Calcium, urine',
    'Female: ˂250 mg/24 hr; male: ˂300 mg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Carbohydrate antigens, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('CA 19-9', '0–37 U/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('CA 27-29', '˂38.0 U/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('CA 125', '˂35 U/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Carbon dioxide, serum', '23–30 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Carboxyhemoglobin, blood', '˂5%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Carcinoembryonic antigen, plasma', '˂2.5 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Carotene, serum', '75–300 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Catecholamines, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Dopamine', '˂30 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Epinephrine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Supine', '˂50 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Standing', '˂95 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Norepinephrine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Supine', '112–658 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Standing', '217–1109 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Catecholamines, urine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Dopamine', '65–400 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Epinephrine', '2–24 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Norepinephrine', '15–100 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', '26–121 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('CD4 T-lymphocyte count', '530–1570/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Cell count, CSF:', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Leukocytes (WBCs)', '0–5 cells/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Erythrocytes (RBCs)', '0/µL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ceruloplasmin, serum (plasma)', '25–43 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Chloride, CSF', '120–130 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Chloride, serum', '98–106 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Chloride, urine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Random (\"spot\")', 'mEq/L; varies');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '24-hour measurement',
    'mEq/24 hr; varies with intake'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Cholesterol, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Desirable', '˂200 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Borderline-high', '200–239 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('High', '>239 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('High-density lipoprotein', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Low', 'Female: ˂50 mg/dL; male: ˂40 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Low-density lipoprotein', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Optimal', '˂100 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Near-optimal', '100–129 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Borderline-high', '130–159 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('High', '160–189 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Very high', '>189 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Cholinesterase, serum (pseudocholinesterase)',
    '≥0.5 pH unit/hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Packed cells', '≥0.7 pH unit/hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Chorionic gonadotropin, beta-human\n(beta-hCG), serum',
    'See  Beta-human chorionic gonadotropin (beta-hCG),\nserum'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Chorionic gonadotropin, beta-human\n(beta-hCG), urine',
    'See  Beta-human chorionic gonadotropin (beta-hCG),\nurine'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Chromogranin A, serum', '˂93 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Citrate, urine', '250–1000 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Coagulation factors, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor I (fibrinogen)', '200–400 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor II (prothrombin)', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor V (accelerator globulin)', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor VII (proconvertin)', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Factor VIII (antihemophilic globulin)',
    '50%–150%'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Factor IX (plasma thromboplastin component)',
    '60%–130%'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor X (Stuart factor)', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Factor XI (plasma thromboplastin antecedent)',
    '60%–130%'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor XII (Hageman factor)', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor XIII', '57%–192%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Cold agglutinin titer', '>1:64 positive');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Complement components, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('C3', '100–233 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('C4', '14–48 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('CH50', '110–190 units/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Copper, serum', '100–200 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Copper, urine', '0–100 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Coproporphyrin, urine', '50–250 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Cortisol, free, urine', '4–50 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Cortisol, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('8 AM', '5–25 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('4 PM', '˂10 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('1 hour after  cosyntropin', '≥18 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Overnight suppression test (1-mg)', '˂1.8 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Overnight suppression test (8-mg)',
    '>50% reduction in cortisol'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Cortisol, saliva, 11 PM – midnight',
    '˂0.09 µg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('C-reactive protein, serum', '≤0.8 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'C-reactive protein (high sensitivity), serum',
    'Low risk: ˂1.0 mg/L; Average risk: 1.0–3.0 mg/L;\nHigh risk: >3.0 mg/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Creatine kinase, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', 'Female: 30–135 U/L; male: 55–170 U/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('MB isoenzymes', '˂5% of total');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Creatine, urine',
    'Female: 0–100 mg/24 hr; male: 0–40 mg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Creatinine clearance, urine',
    '90–140 mL/min/1.73 m2'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Creatinine, serum',
    'Female: 0.50–1.10 mg/dL; male: 0.70–1.30 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Creatinine, urine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Random (\"spot\")', 'mg/dL; varies');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '24-hour measurement',
    '15–25 mg/kg body weight/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('D-dimer, plasma', '˂0.5 μg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Dehydroepiandrosterone sulfate (DHEA-S), serum',
    'Female: 44–332 μg/dL; male: 89–457 μg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Delta-aminolevulinic acid, serum', '˂20 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Dihydrotestosterone, serum',
    'Adult male: 25–80 ng/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Dopamine, plasma', '˂30 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Dopamine, urine', '65–400 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'D-Xylose absorption\n(after ingestion of 25 g of D-xylose)',
    'nan'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Serum', '25–40 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Urinary excretion',
    '4.5–7.5 g during a 5-hr period'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Electrolytes, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Sodium', '136–145 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Potassium', '3.5–5.0 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Chloride', '98–106 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Bicarbonate', '23–28 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Epinephrine, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Supine', '˂110 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Standing', '˂140 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Epinephrine, urine', '˂20 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Erythrocyte count', '4.2–5.9 million/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Erythrocyte sedimentation rate (Westergren)',
    'Female: 0–20 mm/hr; male: 0–15 mm/hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Erythrocyte survival rate (51Cr)',
    'T½ = 28 days'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Erythropoietin, serum', '4–26 mU/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Estradiol, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, follicular', '10–180 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Mid-cycle peak', '100–300 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Luteal', '40–200 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Postmenopausal', '˂10 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Male', '20–50 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Estriol, urine', '>12 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Estrogen receptor protein',
    'Negative: ˂10 fmol/mg protein'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Estrone, serum', '10–60 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ethanol, blood', '˂0.005% (˂5 mg/dL)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Coma level', '>0.5% (>500 mg/dL)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Intoxication', '≥0.08%–0.1% (≥80–100 mg/dL)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Euglobulin clot lysis time',
    '2–4 hours at 37.0 C'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Factor XIII, B subunit, plasma', '60–130 U/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Fecal fat', '˂7 g/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Fecal pH', '7.0–7.5');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Fecal weight', '˂250 g/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Ferritin, serum',
    'Female: 24–307 ng/mL; male: 24–336 ng/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Fibrin(ogen) degradation products', '˂10 μg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Fibrinogen, plasma', '200–400 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Fibroblast growth factor-23, serum',
    '30–80 RU/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Folate, red cell',
    '150–450 ng/mL of packed cells'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Folate, serum', '1.8–9.0 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Follicle-stimulating hormone, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Female, follicular/luteal',
    '2–9 mIU/mL (2–9 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Female, mid-cycle peak',
    '4–22 mIU/mL (4–22 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, postmenopausal', '>30 mIU/mL (>30 U/L)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Male (adult)', '1–7 mIU/mL (1–7 U/L)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Children, Tanner stages 1, 2',
    '0.5–8.0 mIU/mL (0.5–8.0 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Children, Tanner stages 3, 4, 5',
    '1–12 mIU/mL (1–12 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Free kappa light chain, serum', '3.3–19.4 mg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Free kappa-to-free lambda light chain ratio, serum',
    '0.26–1.65'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Free lambda light chain, serum', '5.7–26.3 mg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Gamma globulin, CSF', '6.1–8.3 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Gamma-glutamyltransferase', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '(gamma-glutamyl transpeptidase), serum',
    'Female: 8–40 U/L; male: 9–50 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Gastrin, serum', '˂100 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Glucose, CSF', '50–75 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Glucose, plasma (fasting)', '70–99 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Glucose-6-phosphate dehydrogenase, blood',
    '5–15 units/g of hemoglobin'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Glycoprotein α-subunit, serum', '˂1 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Growth hormone, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('At rest', '˂5 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Response to provocative stimuli', '>7 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Haptoglobin, serum', '83–267 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Hematocrit, blood',
    'Female: 37%–47%; male: 42%–50%'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hemoglobin A1C', '4.0%–5.6%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Hemoglobin, blood',
    'Female: 12–16 g/dL; male: 14–18 g/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hemoglobin fractionation', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hb A', '96%–98%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hb A2', '1.5%–3.5%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hb F', '˂1%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hemoglobin, plasma', '˂5.0 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Heparin–anti-factor Xa assay, plasma',
    '0.3–0.7 IU/mL [therapeutic range for standard\n(unfractionated) heparin therapy]'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Heparin–platelet factor 4 antibody, serum',
    'Positive: >0.4 optical density unit'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hepatic copper', '25–40 μg/g dry weight');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Hepatic iron index', '˂1.0');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Histamine excretion, urine', '20–50 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Homocysteine, plasma', '5–15 μmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'β-Human chorionic gonadotropin (β-hCG), serum',
    'Female, premenopausal nonpregnant: ˂1.0 U/L; female,\npostmenopausal: ˂7.0 U/L; male: ˂1.4 U/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'β-Human chorionic gonadotropin (β-hCG), urine',
    '˂2 mIU/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Hydroxyproline, urine',
    '10–30 mg/sq meter of body surface/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Immature platelet fraction',
    '1%–5% of platelet count'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Immune complexes, serum', '0–50 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Immunoglobulins, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgA', '90–325 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgE', '˂380 IU/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgG', '800–1500 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('IgM', '45–150 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Immunoglobulin free light chains, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Kappa', '3.3–19.4 mg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lambda', '5.7–26.3 mg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Kappa-to-lambda ratio', '0.26–1.65');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Insulin, serum (fasting)', '˂20 μU/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Insulin-like growth factor 1 (IGF-1)\n(somatomedin-C), serum',
    'nan'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ages 16–24', '182–780 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ages 25–39', '114–492 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ages 40–54', '90–360 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Ages 55 and older', '71–290 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Iodine, urine', 'µg/L; varies');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Random (\"spot\")', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Iron, serum', '50–150 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Iron-binding capacity, serum (total)',
    '250–310 μg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lactate dehydrogenase, serum', '80–225 U/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Lactate, arterial blood',
    '˂1.3 mmol/L (˂1.3 mEq/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lactate, serum or plasma', '0.7–2.1 mmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Lactate, venous blood',
    '0.7–1.8 mEq/L; 6–16 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Lactic acid, serum',
    '6–19 mg/dL (0.7–2.1 mmol/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Lactose tolerance test, GI',
    'Increase in plasma glucose: >15 mg/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lead, blood', '<5.0 μg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Leukocyte count', '4000–11,000/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Segmented neutrophils', '50%–70%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Band forms', '0%–5%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lymphocytes', '30%–45%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Monocytes', '0%–6%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Basophils', '0%–1%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Eosinophils', '0%–3%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lipase, serum', '10–140 U/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Lipoprotein(a), serum', 'Desirable: ˂30 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Luteinizing hormone (LH), serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Female, follicular/luteal',
    '1–12 mIU/mL (1–12 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Female, mid-cycle peak',
    '9–80 mIU/mL (9–80 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, postmenopausal', '>30 mIU/mL (>30 U/L)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Male (adult)', '2–9 mIU/mL (2–9 U/L)');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Children, Tanner stages 1, 2, 3',
    '˂9.0 mIU/mL (˂9.0 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Children, Tanner stages 4, 5',
    '1–15 mIU/mL (1–15 U/L)'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Lymphocyte subsets CD3\nCD4 CD8 CD19\nCD56',
    '900–3245/μL\n530–1570/μL\n430–1060/μL\n208–590/μL\n40–500/µL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Magnesium, serum', '1.6–2.6 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Magnesium, urine', '14–290 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Mean corpuscular hemoglobin', '28–32 pg');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Mean corpuscular hemoglobin concentration',
    '33–36 g/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Mean corpuscular volume', '80–98 fL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Mean platelet volume', '7–9 fL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Metanephrines, fractionated, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Metanephrine', '˂0.5 nmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Normetanephrine', '˂0.9 nmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Metanephrines, fractionated, 24-hour urine',
    'nan'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Metanephrine', '˂400 µg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Normetanephrine', '˂900 µg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Methylmalonic acid, serum', '0.00–0.40 µmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Myoglobin, serum', '˂100 μg/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Norepinephrine, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Supine', '70–750 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Standing', '200–1700 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Norepinephrine, urine', '0–100 μg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Normetanephrine, fractionated, plasma',
    '˂0.9 nmol/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Normetanephrine, fractionated, 24-hour urine',
    '˂900 µg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'N -telopeptide, urine',
    'Female: 11–48 nmol BCE/mmol creatinine;\nmale: 7–68 nmol BCE/mmol creatinine'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'N -terminal-pro-B-type natriuretic peptide (NT-pro-BNP),\nserum or plasma',
    'If eGFR >60 mL/min/1.73 m2\n18 –49 years of age\nHeart failure unlikely:  ≤300 pg/mL\nHigh probability of heart failure:  ≥450 pg/mL\n50–75 years of age\nHeart failure unlikely:  ≤300 pg/mL\nHigh probability of heart failure: ≥900 pg/mL\nOlder than 75 years of age\nHeart failure unlikely:  ≤300 pg/mL\nHigh probability of heart failure: ≥1800 pg/mL If eGFR <60 mL/min/1.73 m2\n18 years of age or older\nHigh probability of heart failure:  ≥1200 pg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Osmolality, serum', '275–295 mOsm/kg H2O');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Osmolality, urine', '38–1400 mOsm/kg H2O');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Osmotic fragility of erythrocytes',
    'Increased if hemolysis occurs in over 0.5% NaCl;\ndecreased if hemolysis is incomplete in 0.3% NaCl'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Osteocalcin, serum',
    'Female: 7.2–27.9 ng/mL; male: 11.3–35.4 ng/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Oxalate, urine', '˂40 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Oxygen consumption', '225–275 mL/min');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Oxygen saturation, arterial blood', '≥95%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Parathyroid hormone, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('C -terminal', '150–350 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Intact', '10–65 pg/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Intact (dialysis patients only)',
    'Target: 130–585 pg/mL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Parathyroid hormone-related protein, serum',
    '˂1.5 pmol/L'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Partial thromboplastin time (activated)',
    '25–35 seconds'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('pH, urine', '4.5–8.0');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Phenolsulfonphthalein, urine',
    'At least 25% excreted by 15 minutes; 40% by 30 minutes;\n60% by 120 minutes'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Phosphatase (acid), serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', '0.5–2.0 (Bodansky) units/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Prostatic fraction', '0.1–0.4 unit/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Phosphatase (alkaline), serum', '30–120 U/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Phospholipids, serum (total)', '200–300 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Phosphorus, serum', '3.0–4.5 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Phosphorus, urine', '500–1200 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Platelet count', '150,000–450,000/μL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Platelet function analysis (PFA-100):', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Collagen–epinephrine closure time',
    '60–143 seconds'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Collagen–ADP closure time', '58–123 seconds');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Platelet survival rate (51Cr)', '10 days');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Potassium, serum', '3.5–5.0 mEq/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Potassium, urine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Random (\"spot\")', 'mEq/L; varies');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    '24-hour measurement',
    'mEq/24 hr; varies with intake'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Prealbumin, serum', '16–30 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Pregnanetriol, urine', '0.2–3.5 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Pressure (opening) [initial], CSF',
    '70–180 mm CSF (70–180 mm H2O); 7–18 cm H2O'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Procalcitonin, serum', '≤0.10 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Progesterone, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, follicular', '0.02–0.9 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Female, luteal', '2–30 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Male (adult)', '0.12–0.3 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Proinsulin, serum', '3–20 pmol/L');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Prolactin, serum', '˂20 ng/mL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Prostate-specific antigen, serum',
    'ng/mL; no specific normal or abnormal level'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Protein C activity, plasma', '65%–150%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Protein C antigen, plasma', '70%–140%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Protein catabolic rate, urine',
    'goal: 1.0–1.2 g/kg/24 hr'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Protein S activity, plasma', '57%–131%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Protein S antigen, plasma', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', '60%–140%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Free', '60%–130%');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Protein, urine', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Random (\"spot\")', 'mg/dL; varies');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('24-hour measurement', '˂100 mg/24 hr');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Proteins, CSF total', '15–45 mg/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Proteins, serum', 'nan');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  ('Total', '5.5–9.0 g/dL');
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Albumin\nGlobulin Alpha1 Alpha2 Beta Gamma',
    '3.5–5.5 g/dL\n2.0–3.5 g/dL\n0.2–0.4 g/dL\n0.5–0.9 g/dL\n0.6–1.1 g/dL\n0.7–1.7 g/dL'
  );
INSERT INTO
  `abim_lab_test` (`lab_tests`, `ref_ranges`)
VALUES
  (
    'Protein-to-creatinine ratio, urine',
    '˂0.2 mg/mg'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: consults
# ------------------------------------------------------------

INSERT INTO
  `consults` (`id`, `userId`, `name`, `date`, `time`, `place`)
VALUES
  (1, 1, 'ksjdkajsn', 'jdjdjd', 'ndndndndn', 'jsjsnd');
INSERT INTO
  `consults` (`id`, `userId`, `name`, `date`, `time`, `place`)
VALUES
  (2, 1, 'kajskakdns', 'kzjxn', 'hzuxhsbdb', 'hshzbzn');
INSERT INTO
  `consults` (`id`, `userId`, `name`, `date`, `time`, `place`)
VALUES
  (
    3,
    1,
    'Murilo',
    '27/05/2024',
    '15:48',
    'Hospital São Camilo'
  );
INSERT INTO
  `consults` (`id`, `userId`, `name`, `date`, `time`, `place`)
VALUES
  (4, 1, 'Consulta 1', '11', '33', 'Casa');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: exams
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: medicamentos
# ------------------------------------------------------------

INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1,
    'abacavir (sulfato)',
    'Glaxosmithkline',
    'ZIAGENAVIR',
    '101070234',
    '20 mg/mL',
    'sol oral',
    '2012-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    2,
    'abacavir (sulfato)',
    'Glaxosmithkline',
    'ZIAGENAVIR',
    '101070234',
    '300 mg',
    'com rev',
    '2012-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    3,
    'abemaciclibe',
    'Eli Lilly',
    'VERZENIOS',
    '112600199',
    '50 mg',
    'com rev',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    4,
    'abemaciclibe',
    'Eli Lilly',
    'VERZENIOS',
    '112600199',
    '100 mg',
    'com rev',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    5,
    'abemaciclibe',
    'Eli Lilly',
    'VERZENIOS',
    '112600199',
    '150 mg',
    'com rev',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    6,
    'abemaciclibe',
    'Eli Lilly',
    'VERZENIOS',
    '112600199',
    '200 mg',
    'com rev',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    7,
    'abiraterona (acetato)',
    'Janssen-Cilag',
    'ZYTIGA',
    '112363401',
    '250 mg',
    'com',
    '2013-08-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    8,
    'abiraterona (acetato)',
    'Janssen-Cilag',
    'ZYTIGA',
    '112363420',
    '500 mg',
    'com rev',
    '2019-10-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    9,
    'acalabrutinibe',
    'Astrazeneca',
    'CALQUENCE',
    '116180269',
    '100 mg',
    'cap dura',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    10,
    'acebrofilina',
    'Aché',
    'BRONDILAT',
    '105730127',
    '5 mg/mL',
    'xpe',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    11,
    'ambrisetana',
    'Glaxosmithkline',
    'VOLIBRIS',
    '101070281',
    '10mg',
    'com rev',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    12,
    'acebrofilina',
    'Aché',
    'BRONDILAT',
    '105730127',
    '10 mg/mL',
    'xpe',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    13,
    'acebrofilina',
    'Eurofarma',
    'FILINAR G',
    '100431086',
    '5 mg/ml',
    'gel or',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    14,
    'ambroxol (cloridrato)',
    'Sanofi Medley',
    'MUCOSOLVAN',
    '183260357',
    '3 mg/ml',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    15,
    'aceclofenaco',
    'Eurofarma',
    'PROFLAM',
    '100430817',
    '100 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    16,
    'aceclofenaco',
    'Eurofarma',
    'PROFLAM',
    '100430817',
    '15 mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    17,
    'acetato de fluormetolona',
    'Novartis Biociências',
    'FLORATE',
    '100681096',
    '1 mg/ mL',
    'sol oft',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    18,
    'ambroxol (cloridrato)',
    'Sanofi Medley',
    'MUCOSOLVAN',
    '183260357',
    '6 mg/ml',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    19,
    'ambroxol (cloridrato)',
    'Sanofi Medley',
    'MUCOSOLVAN',
    '183260357',
    '7,5mg/mL',
    'sol (got)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    20,
    'ambroxol (cloridrato)',
    'Sanofi-Aventis',
    'MUCOSOLVAN',
    '183260357',
    '75mg',
    'cap lib cont',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    21,
    'amicacina (sulfato)',
    'Teuto',
    'SULFATO DE AMICACINA',
    '103700297',
    '50mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    22,
    'acetato de glatiramer',
    'Teva Farmacêutica',
    'COPAXONE',
    '155730001',
    '20 mg/mL',
    'sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    23,
    'cetoprofeno',
    'Sanofi-Aventis',
    'PROFENID RETARD',
    '183260360',
    '200mg',
    'com lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    24,
    'amicacina (sulfato)',
    'Teuto',
    'SULFATO DE AMICACINA',
    '103700297',
    '125mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    25,
    'acetato de glatiramer',
    'Teva Farmacêutica',
    'COPAXONE',
    '155730001',
    '40 mg/mL',
    'sol inj',
    '2018-12-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    26,
    'cetoprofeno',
    'Eurofarma',
    'BICERTO IV',
    '100431313',
    '1mg/mL',
    'sol infus',
    '2022-02-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    27,
    'acetazolamida',
    'União Química',
    'DIAMOX',
    '104970289',
    '250 mg',
    'com',
    '2013-01-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    28,
    'amicacina (sulfato)',
    'Teuto',
    'SULFATO DE AMICACINA',
    '103700297',
    '250mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    29,
    'aminofilina',
    'Hipolabor',
    'AMINOFILINA',
    '113430118',
    '24 mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    30,
    'acetilcisteína',
    'Eurofarma',
    'ACETILCISTEÍNA',
    '100431294',
    '100 mg',
    'gran',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    31,
    'aminofilina',
    'Teuto',
    'AMINOFILINA',
    '103700445',
    '100mg',
    'com',
    '2018-01-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    32,
    'aminofilina',
    'Teuto',
    'AMINOFILINA',
    '103700445',
    '200mg',
    'com',
    '2018-01-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    33,
    'acetilcisteína',
    'União Química',
    'FLUCISTEIN',
    '104971149',
    '40 mg/g',
    'gran',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    34,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '120 mg/g',
    'gran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    35,
    'amiodarona (cloridrato)',
    'Sanofi Medley',
    'ATLANSIL',
    '183260423',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    36,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '11,5 mg/ml',
    'sol spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    37,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '20 mg/ml',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    38,
    'amiodarona (cloridrato)',
    'Sanofi Medley',
    'ATLANSIL',
    '183260423',
    '200mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    39,
    'cetoprofeno (lisinato)',
    'Aché',
    'ARTROSIL',
    '105730128',
    '160mg',
    'cap',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    40,
    'amiodarona (cloridrato)',
    'Hypolabor',
    'CLORIDRATO DE AMIODARONA',
    '113430122',
    '50mg/mL',
    'sol inj',
    '2018-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    41,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '40 mg/ml',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    42,
    'cetoprofeno (lisinato)',
    'Aché',
    'ARTROSIL',
    '105730128',
    '320mg',
    'cap',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    43,
    'amisulprida',
    'Sanofi Medley',
    'SOCIAN',
    '183260319',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    44,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '600 mg',
    'com efer',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    45,
    'cetotifeno (fumarato)',
    'União Química',
    'OCTIFEN',
    '104971358',
    '0,250 mg/mL',
    'sol oft',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    46,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '100 mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    47,
    'cetrorrelix (acetato)',
    'Merck S/A',
    'CETROTIDE',
    '100890369',
    '0,25mg',
    'pó liof inj',
    '2018-01-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    48,
    'bilastina',
    'Cosmed',
    'ALEKTOS PED',
    '178170909',
    '2,5mg/mL',
    'sol oral',
    '2021-08-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    49,
    'bimatoprosta',
    'Allergan',
    'LATISSE',
    '101470177',
    '0,3mg/ml',
    'sol derm',
    '2016-01-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    50,
    'acetilcisteína',
    'Zambon',
    'FLUIMUCIL',
    '100840075',
    '200 mg',
    'com efer',
    '2021-06-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    51,
    'aciclovir',
    'Merck',
    'ACICLOVIR',
    '100890280',
    '400 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    52,
    'aciclovir',
    'Glaxosmithkline',
    'ZOVIRAX',
    '101070253',
    '200 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    53,
    'ciclobenzaprina (cloridrato)',
    'Apsen Farmacêutica',
    'MIOSAN',
    '101180129',
    '5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    54,
    'aciclovir',
    'Teuto',
    'ACICLOVIR',
    '103700610',
    '250 mg',
    'pó liof sol inj',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    55,
    'aciclovir',
    'Glaxosmithkline',
    'ZOVIRAX',
    '101070253',
    '50 mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    56,
    'ciclobenzaprina (cloridrato)',
    'Apsen Farmacêutica',
    'MIOSAN',
    '101180129',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    57,
    'ciclobenzaprina (cloridrato)',
    'Zodiac',
    'MITRUL',
    '122140093',
    '15mg',
    'cap dur lib prol',
    '2016-05-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    58,
    'ciclopentolato (cloridrato)',
    'Allergan',
    'CICLOPLÉGICO',
    '101470131',
    '10mg/mL',
    'sol oft',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    59,
    'ácido acetilsalicílico',
    'EMS S/A',
    'ÁCIDO ACETIL SALICÍLICO',
    '102350508',
    '100 mg',
    'com',
    '2023-11-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    60,
    'ciclopirox',
    'Theraskin',
    'MICOLAMINA',
    '101910268',
    '80mg/g',
    'esmalte',
    '2024-03-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    61,
    'ácido acetilsalicílico',
    'Bayer',
    'ASPIRINA',
    '170560020',
    '500mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    62,
    'ciclopirox olamina',
    'Prati',
    'CICLOPIROX OLAMINA',
    '125680158',
    '10mg/g',
    'crem derm',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    63,
    'ácido acetilsalicílico',
    'Bayer',
    'ASPIRINA',
    '170560020',
    '500mg',
    'com efer',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    64,
    'ácido acetilsalicílico',
    'Bayer',
    'ASPIRINA PREVENT',
    '170560022',
    '100mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    65,
    'bimatoprosta',
    'Allergan',
    'LUMIGAN',
    '101470155',
    '0,1mg/mL',
    'sol oft',
    '2013-01-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    66,
    'ciclopirox olamina',
    'Theraskin',
    'MICOLAMINA',
    '101910268',
    '10mg/mL',
    'sol top',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    67,
    'bimatoprosta',
    'Allergan',
    'LUMIGAN',
    '101470155',
    '0,3mg/mL',
    'sol oft',
    '2013-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    68,
    'ciclosporina',
    'Allergan',
    'RESTASIS',
    '101470160',
    '0,5mg/g',
    'emul oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    69,
    'ácido acetilsalicílico',
    'Bayer',
    'ASPIRINA PREVENT',
    '170560022',
    '300mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    70,
    'biperideno (cloridrato)',
    'Laboratórios Bagó',
    'AKINETON',
    '105530334',
    '2mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    71,
    'ciclosporina',
    'Novartis Biociências',
    'SANDIMMUN',
    '100680020',
    '50 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    72,
    'biperideno (cloridrato)',
    'Laboratórios Bagó',
    'AKINETON',
    '105530334',
    '4mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    73,
    'ácido carglúmico',
    'Recordati Rare Diseases',
    'CARBAGLU',
    '171260001',
    '200mg',
    'com para susp',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    74,
    'amisulprida',
    'Sanofi Medley',
    'SOCIAN',
    '183260319',
    '200mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    75,
    'ácido tióctico',
    'Mylan',
    'THIOCTACID',
    '188300074',
    '600mg',
    'com rev',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    76,
    'amitriptilina (cloridrato)',
    'Cristália',
    'AMYTRIL',
    '102980225',
    '25mg',
    'com rev',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    77,
    'amitriptilina (cloridrato)',
    'Cristália',
    'AMYTRIL',
    '102980225',
    '75mg',
    'com rev',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    78,
    'ácido ursodesoxicólico',
    'Zambon',
    'URSACOL',
    '100840067',
    '50mg',
    'com',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    79,
    'bisacodil',
    'Opella Healthcare',
    'DULCOLAX',
    '186200020',
    '5mg',
    'comp rev lib ret',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    80,
    'ácido ursodesoxicólico',
    'Zambon',
    'URSACOL',
    '100840067',
    '150mg',
    'com',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    81,
    'bisoprolol (hemifumarato)',
    'Merck S/A',
    'CONCOR',
    '100890194',
    '1,25mg',
    'com rev',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    82,
    'amitriptilina (cloridrato)',
    'Cristália',
    'AMYTRIL',
    '102980364',
    '10mg',
    'com rev',
    '2019-02-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    83,
    'ácido ursodesoxicólico',
    'Zambon',
    'URSACOL',
    '100840067',
    '300mg',
    'com',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    84,
    'amorolfina',
    'Galderma',
    'LOCERYL',
    '129160036',
    '50mg/mL',
    'esml',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    85,
    'ácido valpróico',
    'Abbott',
    'DEPAKENE',
    '105530315',
    '250mg',
    'cap mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    86,
    'bisoprolol (hemifumarato)',
    'Merck S/A',
    'CONCOR',
    '100890194',
    '2,5mg',
    'com rev',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    87,
    'acitretina',
    'Glenmark',
    'NEOTIGASON',
    '110130271',
    '10mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    88,
    'amoxicilina',
    'Glaxosmithkline',
    'AMOXIL',
    '101070003',
    '500mg',
    'cap dura',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    89,
    'bisoprolol (hemifumarato)',
    'Merck S/A',
    'CONCOR',
    '100890194',
    '5mg',
    'com rev',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    90,
    'acitretina',
    'Glenmark',
    'NEOTIGASON',
    '110130271',
    '25 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    91,
    'amoxicilina',
    'Glaxosmithkline',
    'AMOXIL',
    '101070003',
    '125mg/5mL',
    'pó sus or',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    92,
    'bisoprolol (hemifumarato)',
    'Merck S/A',
    'CONCOR',
    '100890194',
    '10,0mg',
    'com rev',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    93,
    'amoxicilina',
    'Glaxosmithkline',
    'AMOXIL',
    '101070003',
    '250mg/5mL',
    'pó sus or',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    94,
    'adapaleno',
    'Glenmark',
    'DERIVA MICRO',
    '110130264',
    '1mg/g',
    'gel derm lib prol',
    '2019-10-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    95,
    'adapaleno',
    'Galderma',
    'DIFFERIN',
    '129160025',
    '3,0 mg/g',
    'gel',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    96,
    'amoxicilina',
    'Glaxosmithkline',
    'AMOXIL',
    '101070003',
    '500mg/5mL',
    'pó sus or',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    97,
    'amoxicilina',
    'Aché',
    'NOVOCILIN',
    '105730076',
    '400mg/5ml',
    'pó sus or',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    98,
    'adapaleno',
    'Galderma',
    'DIFFERIN',
    '129160025',
    '1,0 mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    99,
    'amoxicilina',
    'Aché',
    'NOVOCILIN',
    '105730076',
    '875mg',
    'com',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    100,
    'adenosina',
    'Hipolabor',
    'ADENOSINA',
    '113430182',
    '3mg/mL',
    'sol inj',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    101,
    'agomelatina',
    'Servier',
    'VALDOXAN',
    '112780073',
    '25 mg',
    'com rev',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    102,
    'ciclosporina',
    'Novartis Biociências',
    'SANDIMMUN NEORAL',
    '100680020',
    '100 mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    103,
    'ampicilina',
    'Eurofarma',
    'AMPLACILINA',
    '100430687',
    '500mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    104,
    'albendazol',
    'Sanofi Medley',
    'ALBENDAZOL',
    '183260193',
    '400mg',
    'com mast',
    '2023-10-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    105,
    'ciclosporina',
    'Novartis Biociências',
    'SANDIMMUN NEORAL',
    '100680020',
    '25mg',
    'cap mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    106,
    'ampicilina sódica',
    'Teuto',
    'AMPICILINA SÓDICA',
    '103700299',
    '500mg',
    'pó sol inj',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    107,
    'alcaftadina',
    'Allergan',
    'LASTACAFT',
    '101470179',
    '2,5mg/ml',
    'sol oft',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    108,
    'bleomicina (sulfato)',
    'Aché',
    'BONAR',
    '105730676',
    '15 UI',
    'pó liof sol inj',
    '2020-08-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    109,
    'ciclosporina',
    'Novartis Biociências',
    'SANDIMMUN NEORAL',
    '100680020',
    '50mg',
    'cap mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    110,
    'ampicilina sódica',
    'Teuto',
    'AMPICILINA SÓDICA',
    '103700299',
    '1g',
    'pó sol inj',
    '2019-02-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    111,
    'alectinibe',
    'Roche',
    'ALECENSA',
    '101000668',
    '150mg',
    'cap dura',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    112,
    'anagrelida (cloridrato)',
    'Takeda',
    'AGRYLIN',
    '106390302',
    '0,5mg',
    'cap dura',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    113,
    'alendronato sódico',
    'Sandoz',
    'ALENDRONATO DE SÓDIO',
    '100470474',
    '70 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    114,
    'bortezomibe',
    'Janssen-Cilag',
    'VELCADE',
    '112363373',
    '1mg',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    115,
    'anastrozol',
    'Astrazeneca',
    'ARIMIDEX',
    '116180063',
    '1mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    116,
    'ciclosporina',
    'Novartis Biociências',
    'SANDIMMUN NEORAL',
    '100680020',
    '100mg',
    'cap mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    117,
    'bortezomibe',
    'Janssen-Cilag',
    'VELCADE',
    '112363373',
    '3,5 mg',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    118,
    'cilazapril',
    'Roche',
    'VASCASE',
    '101000181',
    '1mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    119,
    'bosentana',
    'Janssen-Cilag',
    'BOSENTANA',
    '112363430',
    '62,5mg',
    'com rev',
    '2013-01-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    120,
    'alfaestradiol',
    'Galderma',
    'AVICIS',
    '129160046',
    '0,25 mg/mL',
    'sol capilar',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    121,
    'cilazapril',
    'Roche',
    'VASCASE',
    '101000181',
    '2,5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    122,
    'anfotericina b',
    'Teva Farmacêutica',
    'ABELCET',
    '155730034',
    '5mg/ml',
    'sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    123,
    'cilazapril',
    'Roche',
    'VASCASE',
    '101000181',
    '5,0mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    124,
    'anfotericina b (lipossomal)',
    'United Medical',
    'AMBISOME',
    '125760007',
    '50mg/12mL',
    'pó sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    125,
    'alfentanila (cloridrato)',
    'Antibióticos do Brasil',
    'RAPIFEN',
    '155620057',
    '544 µg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    126,
    'cilostazol',
    'Libbs',
    'CEBRALAT',
    '100330101',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    127,
    'anidulafungina',
    'Pfizer',
    'ECALTA',
    '102160219',
    '100mg/30mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    128,
    'alfuzosina (cloridrato)',
    'Sanofi Medley',
    'XATRAL OD',
    '183260437',
    '10 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    129,
    'anlodipino (besilato)',
    'Aché',
    'CORDAREX',
    '105730584',
    '2,5mg',
    'com',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    130,
    'alopurinol',
    'Aspen Pharma',
    'ZYLORIC',
    '137640122',
    '100mg',
    'com',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    131,
    'cilostazol',
    'Libbs',
    'CEBRALAT',
    '100330101',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    132,
    'alopurinol',
    'Aspen Pharma',
    'ZYLORIC',
    '137640122',
    '300mg',
    'com',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    133,
    'anlodipino (besilato)',
    'Mylan',
    'NORVASC',
    '188300080',
    '5,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    134,
    'alprazolam',
    'Mylan',
    'FRONTAL',
    '188300091',
    '0,25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    135,
    'anlodipino (besilato)',
    'Mylan',
    'NORVASC',
    '188300080',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    136,
    'alprazolam',
    'Mylan',
    'FRONTAL',
    '188300091',
    '0,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    137,
    'apalutamida',
    'Janssen-Cilag',
    'ERLEADA',
    '112363419',
    '60mg',
    'com',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    138,
    'alprazolam',
    'Mylan',
    'FRONTAL',
    '188300091',
    '1mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    139,
    'apixabana',
    'Wyeth',
    'ELIQUIS',
    '121100464',
    '2,5mg',
    'com rev',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    140,
    'alprazolam',
    'Mylan',
    'FRONTAL',
    '188300091',
    '2mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    141,
    'apixabana',
    'Wyeth',
    'ELIQUIS',
    '121100464',
    '5mg',
    'com rev',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    142,
    'aripiprazol',
    'Aché',
    'ARISTAB',
    '105730425',
    '10mg',
    'com',
    '2014-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    143,
    'aripiprazol',
    'Aché',
    'ARISTAB',
    '105730425',
    '15mg',
    'com',
    '2014-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    144,
    'aripiprazol',
    'Aché',
    'ARISTAB',
    '105730425',
    '20mg',
    'com',
    '2014-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    145,
    'cimetidina',
    'Teuto',
    'CIMETIDINA',
    '103700402',
    '150mg/mL',
    'sol inj',
    '2013-03-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    146,
    'alprazolam',
    'Mylan',
    'FRONTAL XR',
    '188300091',
    '0,5mg',
    'com rev lib lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    147,
    'aripiprazol',
    'Aché',
    'ARISTAB',
    '105730425',
    '30mg',
    'com',
    '2014-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    148,
    'cinacalcete (cloridrato)',
    'Amgen',
    'MIMPARA',
    '102440001',
    '30mg',
    'com rev',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    149,
    'alprazolam',
    'Mylan',
    'FRONTAL XR',
    '188300091',
    '1,0mg',
    'com rev lib lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    150,
    'cinacalcete (cloridrato)',
    'Amgen',
    'MIMPARA',
    '102440001',
    '60mg',
    'com rev',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    151,
    'alprazolam',
    'Mylan',
    'FRONTAL XR',
    '188300091',
    '2,0mg',
    'com rev lib lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    152,
    'aripiprazol',
    'Aché',
    'ARISTAB',
    '105730724',
    '1mg/mL',
    'sus',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    153,
    'bosentana',
    'Janssen-Cilag',
    'BOSENTANA',
    '112363430',
    '125 mg',
    'com rev',
    '2013-01-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    154,
    'alprostadil',
    'Opem',
    'ALPROXY',
    '127480029',
    '500µg/mL',
    'sol inj',
    '2020-08-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    155,
    'aripiprazol',
    'EMS S/A',
    'ARPEJO',
    '102351307',
    '20 mg/mL',
    'sus gotas',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    156,
    'bosutinibe monoidratado',
    'Pfizer',
    'BOCULIF',
    '121100487',
    '100mg',
    'com rev',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    157,
    'cinarizina',
    'Janssen-Cilag',
    'STUGERON',
    '112360002',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    158,
    'alprostadil',
    'Pfizer',
    'CAVERJECT',
    '102160203',
    '10μg/mL',
    'pó liof sol inj',
    '2013-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    159,
    'bosutinibe monoidratado',
    'Pfizer',
    'BOCULIF',
    '121100488',
    '400mg',
    'com rev',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    160,
    'cinarizina',
    'Janssen-Cilag',
    'STUGERON',
    '112360002',
    '75mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    161,
    'alprostadil',
    'Pfizer',
    'CAVERJECT',
    '102160203',
    '20μg/mL',
    'pó liof sol inj',
    '2013-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    162,
    'armodafinila',
    'Teva Farmacêutica',
    'NUVIGIL',
    '155730053',
    '150 mg',
    'com',
    '2020-08-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    163,
    'ciprofibrato',
    'Sanofi Medley',
    'OROXADIN',
    '183260419',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    164,
    'alprostadil',
    'Aché',
    'PROSTAVASIN',
    '105730576',
    '20 μg',
    'pó liof sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    165,
    'armodafinila',
    'Teva Farmacêutica',
    'NUVIGIL',
    '155730054',
    '250 mg',
    'com',
    '2020-08-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    166,
    'ciprofloxacino (cloridrato)',
    'Novartis Biociências',
    'CILOXAN',
    '100681093',
    '3mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    167,
    'bosutinibe monoidratado',
    'Pfizer',
    'BOCULIF',
    '121100489',
    '500mg',
    'com rev',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    168,
    'atenolol',
    'Biolab Sanus',
    'ABLOK',
    '109740100',
    '25 mg',
    'com',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    169,
    'amantadina (cloridrato)',
    'Momenta',
    'MANTIDAN',
    '194270071',
    '100mg',
    'com',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    170,
    'brexpiprazol',
    'Lundbeck Brasil Ltda',
    'REXULTI',
    '104750053',
    '0,50mg',
    'com rev',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    171,
    'atenolol',
    'Biolab Sanus',
    'ABLOK',
    '109740100',
    '50 mg',
    'com',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    172,
    'brexpiprazol',
    'Lundbeck Brasil Ltda',
    'REXULTI',
    '104750053',
    '1mg',
    'com rev',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    173,
    'ciprofloxacino (cloridrato)',
    'Bayer',
    'CIPRO',
    '170560103',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    174,
    'atenolol',
    'Biolab Sanus',
    'ABLOK',
    '109740100',
    '100 mg',
    'com',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    175,
    'brexpiprazol',
    'Lundbeck Brasil Ltda',
    'REXULTI',
    '104750053',
    '2mg',
    'com rev',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    176,
    'ciprofloxacino (solução de cloreto de sódio)',
    'Halex Istar',
    'CIPROFLOXACINO',
    '103110155',
    '2mg/ml',
    'sol inj',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    177,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '10 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    178,
    'brexpiprazol',
    'Lundbeck Brasil Ltda',
    'REXULTI',
    '104750053',
    '3mg',
    'com rev',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    179,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '18 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    180,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '25 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    181,
    'brimonidina (tartarato)',
    'Allergan',
    'ALPHAGAN',
    '101470142',
    '2mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    182,
    'brimonidina (tartarato)',
    'Allergan',
    'ALPHAGAN - P',
    '101470142',
    '1,5mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    183,
    'brimonidina (tartarato)',
    'Allergan',
    'ALPHAGAN Z',
    '101470142',
    '1mg/ml',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    184,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '40 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    185,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '60 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    186,
    'brinzolamida',
    'Novartis Biociências',
    'AZOPT',
    '100230225',
    '10mg/mL',
    'sus oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    187,
    'ciproterona (acetato)',
    'Bayer',
    'ANDROCUR',
    '170560066',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    188,
    'atomoxetina (cloridrato)',
    'Apsen Farmacêutica',
    'ATENTAH',
    '101180649',
    '80 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    189,
    'bromazepam',
    'Blanver',
    'LEXOTAN',
    '115240008',
    '3,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    190,
    'ciproterona (acetato)',
    'Bayer',
    'ANDROCUR',
    '170560066',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    191,
    'atorvastatina cálcica',
    'Mylan',
    'CITALOR',
    '188300088',
    '10 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    192,
    'bromazepam',
    'Blanver',
    'LEXOTAN',
    '115240008',
    '6,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    193,
    'cisatracúrio (besilato)',
    'Aspen Pharma',
    'NIMBIUM',
    '137640169',
    '2 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    194,
    'atorvastatina cálcica',
    'Mylan',
    'CITALOR',
    '188300088',
    '20 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    195,
    'bromazepam',
    'Aché',
    'SOMALIUM',
    '105730152',
    '2,5mg/ml',
    'sol oral',
    '2013-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    196,
    'atorvastatina cálcica',
    'Mylan',
    'CITALOR',
    '188300088',
    '40 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    197,
    'brometo de glicopirrônio',
    'Novartis Biociências',
    'SEEBRI',
    '100681117',
    '50 mcg',
    'cap dura po inal or + inal',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    198,
    'ambrisetana',
    'Glaxosmithkline',
    'VOLIBRIS',
    '101070281',
    '5mg',
    'com rev',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    199,
    'cisatracúrio (besilato)',
    'Aspen Pharma',
    'NIMBIUM',
    '137640169',
    '5 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    200,
    'cisplatina',
    'Blau Farmacêutica',
    'C-PLATIN',
    '116370039',
    '1mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    201,
    'brometo de pancurônio',
    'Fresenius',
    'BROMETO DE PANCURÔNIO',
    '100410204',
    '2mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    202,
    'bromexina (cloridrato)',
    'Sanofi Medley',
    'BISOLVON',
    '183260383',
    '0,8mg/mL',
    'xpe (infantil)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    203,
    'cisplatina',
    'Blau Farmacêutica',
    'C-PLATIN',
    '116370039',
    '0,5mg/ml',
    'sol inj',
    '2014-12-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    204,
    'bromexina (cloridrato)',
    'Sanofi Medley',
    'BISOLVON',
    '183260383',
    '1,6mg/mL',
    'xpe (adulto)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    205,
    'citalopram (bromidrato)',
    'Lundbeck',
    'CIPRAMIL',
    '104750043',
    '20mg',
    'com rev',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    206,
    'citalopram (bromidrato)',
    'Libbs',
    'PROCIMAX',
    '100330107',
    '40mg',
    'com rev',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    207,
    'bromexina (cloridrato)',
    'Sanofi Medley',
    'BISOLVON',
    '183260383',
    '2,0mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    208,
    'citarabina',
    'Libbs',
    'FAULDCITA',
    '100330138',
    '100mg/mL',
    'sol inj',
    '2021-01-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    209,
    'citrato de cafeína',
    'Chiesi',
    'PEYONA',
    '100580115',
    '20mg/mL',
    'sol inj',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    210,
    'cladribina',
    'Mawdsleys',
    'LEUSTATIN',
    '158320004',
    '1mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    211,
    'bromocriptina (mesilato)',
    'Novartis Biociências',
    'PARLODEL',
    '100680017',
    '2,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    212,
    'bromoprida',
    'Fresenius',
    'BROMOPRIDA',
    '100410182',
    '5mg/mL',
    'sol inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    213,
    'cladribina',
    'Merck',
    'MAVENCLAD',
    '100890411',
    '10 mg',
    'com',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    214,
    'bromoprida',
    'Sanofi Medley',
    'DIGESAN',
    '183260382',
    '10mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    215,
    'claritromicina',
    'Medley',
    'CLARITROMICINA',
    '183260025',
    '500mg',
    'com rev',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    216,
    'darifenacina (bromidrato)',
    'Aspen Pharma',
    'ENABLEX',
    '137640141',
    '7,5mg',
    'com rev lib progr',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    217,
    'bromoprida',
    'Sanofi Medley',
    'DIGESAN',
    '183260382',
    '4mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    218,
    'darifenacina (bromidrato)',
    'Aspen Pharma',
    'ENABLEX',
    '137640141',
    '15,0mg',
    'com rev lib progr',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    219,
    'claritromicina',
    'Abbott',
    'KLARICID',
    '105530200',
    '50mg/mL',
    'gran sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    220,
    'buclizina (dicloridrato)',
    'Cosmed',
    'BUCLINA',
    '178170940',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    221,
    'darolutamida',
    'Bayer',
    'NUBEQA',
    '170560120',
    '300mg',
    'com rev',
    '2023-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    222,
    'claritromicina',
    'Abbott',
    'KLARICID',
    '105530200',
    '500mg/10mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    223,
    'budesonida',
    'EMS S/A',
    'BUDESONIDA',
    '102351180',
    '32mcg/dose',
    'sus spr nas',
    '2021-08-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    224,
    'darunavir',
    'Janssen-Cilag',
    'PREZISTA',
    '112363387',
    '75mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    225,
    'claritromicina',
    'Abbott',
    'KLARICID',
    '105530200',
    '25mg/mL',
    'gran sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    226,
    'budesonida',
    'EMS S/A',
    'BUDESONIDA',
    '102351180',
    '64mcg/dose',
    'sus spr nas',
    '2021-08-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    227,
    'claritromicina',
    'Abbott',
    'KLARICID UD',
    '105530200',
    '500mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    228,
    'budesonida',
    'Aché',
    'BUSONID',
    '105730590',
    '50mcg/dose',
    'sus spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    229,
    'clindamicina (cloridrato)',
    'Pfizer',
    'DALACIN C',
    '102160173',
    '300mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    230,
    'budesonida',
    'Aché',
    'BUSONID',
    '105730590',
    '100mcg/dose',
    'sus spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    231,
    'clindamicina (fosfato)',
    'Pfizer',
    'DALACIN T',
    '102160153',
    '10mg/ml',
    'sol top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    232,
    'atorvastatina cálcica',
    'Mylan',
    'CITALOR',
    '188300088',
    '80 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    233,
    'clindamicina (fosfato)',
    'União Química',
    'FOSFATO DE CLINDAMICINA',
    '104970284',
    '150 mg/ml',
    'sol inj',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    234,
    'atosibano (acetato)',
    'Ferring',
    'TRACTOCILE',
    '128760010',
    '7,5 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    235,
    'budesonida',
    'Aché',
    'BUSONID',
    '105730590',
    '200mcg',
    'cap dura po inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    236,
    'budesonida',
    'Aché',
    'BUSONID',
    '105730590',
    '400mcg',
    'cap dura po inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    237,
    'clobazam',
    'Sanofi Medley',
    'FRISIUM',
    '183260324',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    238,
    'atosibano (acetato)',
    'Ferring',
    'TRACTOCILE',
    '128760010',
    '7,5 mg/mL',
    'sol infus',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    239,
    'darunavir',
    'Janssen-Cilag',
    'PREZISTA',
    '112363387',
    '150mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    240,
    'budesonida',
    'Astrazeneca',
    'ENTOCORT CAPSULA',
    '116180097',
    '3mg',
    'cap dura lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    241,
    'atracúrio (besilato)',
    'Aspen Pharma',
    'TRACRIUM',
    '137640168',
    '10 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    242,
    'clobazam',
    'Sanofi Medley',
    'FRISIUM',
    '183260324',
    '20 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    243,
    'darunavir',
    'Janssen-Cilag',
    'PREZISTA',
    '112363387',
    '300mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    244,
    'budesonida',
    'Astrazeneca',
    'PULMICORT',
    '116180076',
    '0,25mg/mL',
    'sus inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    245,
    'atropina (sulfato)',
    'Ariston (Blau)',
    'ATROPION',
    '116370088',
    '0,25 mg/mL',
    'sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    246,
    'clobetasol (propionato)',
    'Glaxosmithkline',
    'PSOREX',
    '101070198',
    '0,5mg/g',
    'sol capilar',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    247,
    'budesonida',
    'Astrazeneca',
    'PULMICORT',
    '116180076',
    '0,50mg/mL',
    'sus inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    248,
    'darunavir',
    'Janssen-Cilag',
    'PREZISTA',
    '112363387',
    '600 mg',
    'com rev',
    '2016-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    249,
    'clobetasol (propionato)',
    'Glaxosmithkline',
    'PSOREX',
    '101070198',
    '0,5mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    250,
    'buflomedil (cloridrato)',
    'Abbott',
    'BUFEDIL',
    '105530013',
    '150mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    251,
    'darunavir',
    'Janssen-Cilag',
    'PREZISTA',
    '112363387',
    '800mg',
    'com rev',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    252,
    'clobetasol (propionato)',
    'Glaxosmithkline',
    'PSOREX',
    '101070198',
    '0,5mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    253,
    'buflomedil (cloridrato)',
    'Abbott',
    'BUFEDIL',
    '105530013',
    '300 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    254,
    'dasatinibe',
    'Bristol Myers Squibb',
    'SPRYCEL',
    '101800392',
    '20mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    255,
    'clomipramina (cloridrato)',
    'EMS S/A',
    'CLO',
    '135690614',
    '10mg',
    'com rev',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    256,
    'bupivacaína (cloridrato)',
    'Hypofarma',
    'CLORIDRATO DE BUPIVACAÍNA',
    '103870053',
    '5mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    257,
    'clomipramina (cloridrato)',
    'Novartis Biociências',
    'ANAFRANIL',
    '100680061',
    '25 mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    258,
    'atropina (sulfato)',
    'Ariston (Blau)',
    'ATROPION',
    '116370088',
    '0,5 mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    259,
    'clomipramina (cloridrato)',
    'Novartis Biociências',
    'ANAFRANIL',
    '100680061',
    '75mg',
    'com lib lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    260,
    'dasatinibe',
    'Bristol Myers Squibb',
    'SPRYCEL',
    '101800392',
    '100mg',
    'com rev',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    261,
    'axetilcefuroxima',
    'Sandoz',
    'ZINNAT',
    '100470645',
    '50 mg/mL',
    'po sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    262,
    'clonazepam',
    'Blanver',
    'RIVOTRIL',
    '115240011',
    '0,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    263,
    'decitabina',
    'Janssen-Cilag',
    'DACOGEN',
    '112363390',
    '50mg/ 10mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    264,
    'axetilcefuroxima',
    'Sandoz',
    'ZINNAT',
    '100470645',
    '250 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    265,
    'deferasirox',
    'Novartis Biociências',
    'EXJADE',
    '100681040',
    '125mg',
    'com disp',
    '2013-01-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    266,
    'axetilcefuroxima',
    'Sandoz',
    'ZINNAT',
    '100470645',
    '500 mg',
    'com rev',
    '2012-11-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    267,
    'deferasirox',
    'Novartis Biociências',
    'EXJADE',
    '100681040',
    '250mg',
    'com disp',
    '2013-01-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    268,
    'bupivacaína (cloridrato) + glicose',
    'União Química',
    'BUPICAN HEAVY',
    '104971448',
    '5mg/mL +glicose 80mg/mL',
    'sol inj',
    '2021-12-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    269,
    'deferasirox',
    'Novartis Biociências',
    'EXJADE',
    '100681040',
    '500mg',
    'com disp',
    '2013-01-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    270,
    'clonazepam',
    'Blanver',
    'RIVOTRIL',
    '115240011',
    '2,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    271,
    'axitinibe',
    'Wyeth',
    'INLYTA',
    '121100452',
    '1 mg',
    'com rev',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    272,
    'deferoxamina (mesilato)',
    'Novartis Biociências',
    'DESFERAL',
    '100680053',
    '500mg/ 5mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    273,
    'clonazepam',
    'Blanver',
    'RIVOTRIL',
    '115240011',
    '0,25mg',
    'com subl',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    274,
    'axitinibe',
    'Wyeth',
    'INLYTA',
    '121100452',
    '5 mg',
    'com rev',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    275,
    'buprenorfina',
    'Mundipharma',
    'RESTIVA',
    '191980002',
    '5µg/h',
    'ades',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    276,
    'deflazacorte',
    'Blanver',
    'CALCORT',
    '115240019',
    '6,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    277,
    'clonazepam',
    'Blanver',
    'RIVOTRIL',
    '115240011',
    '2,5mg/ml',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    278,
    'deflazacorte',
    'Blanver',
    'CALCORT',
    '115240019',
    '30mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    279,
    'clonidina (cloridrato)',
    'Mawdsleys',
    'ATENSINA',
    '158320003',
    '100µg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    280,
    'azacitidina',
    'United Medical',
    'VIDAZA',
    '125760020',
    '100mg/4mL',
    'pó liof sus inj',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    281,
    'buprenorfina',
    'Mundipharma',
    'RESTIVA',
    '191980002',
    '10µg/h',
    'ades',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    282,
    'degarelix (acetato)',
    'Ferring',
    'FIRMAGON',
    '128760017',
    '80mg/4,2mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    283,
    'clonidina (cloridrato)',
    'Mawdsleys',
    'ATENSINA',
    '158320003',
    '150µg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    284,
    'azatioprina',
    'Aspen Pharma',
    'IMURAN',
    '137640128',
    '50 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    285,
    'buprenorfina',
    'Mundipharma',
    'RESTIVA',
    '191980002',
    '20µg/h',
    'ades',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    286,
    'degarelix (acetato)',
    'Ferring',
    'FIRMAGON',
    '128760017',
    '120mg/3,0 mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    287,
    'azelaico, ácido',
    'Leo Pharma',
    'AZELAN',
    '185690012',
    '150 mg/g',
    'gel',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    288,
    'clonidina (cloridrato)',
    'Cristália',
    'CLONIDIN',
    '102980193',
    '150 mcg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    289,
    'buprenorfina',
    'Grünenthal do Brasil',
    'TRANSTEC',
    '186100012',
    '35µg/h',
    'ades',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    290,
    'delafloxacino',
    'Eurofarma',
    'DELABAXI',
    '100431325',
    '300mg/mL',
    'po liof sol inj',
    '2023-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    291,
    'azelaico, ácido',
    'Leo Pharma',
    'AZELAN',
    '185690012',
    '200 mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    292,
    'buprenorfina',
    'Grünenthal do Brasil',
    'TRANSTEC',
    '186100012',
    '52,5µg/h',
    'ades',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    293,
    'azitromicina di-hidratada',
    'Eurofarma',
    'ASTRO',
    '100431172',
    '40mg/ml',
    'po sus or',
    '23/9/2014; 29/01/2016'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    294,
    'buprenorfina',
    'Grünenthal do Brasil',
    'TRANSTEC',
    '186100012',
    '70µg/h',
    'ades',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    295,
    'azitromicina di-hidratada',
    'Germed',
    'AZITROMICINA',
    '105830493',
    '1000mg',
    'com rev',
    '2019-01-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    296,
    'bupropiona (cloridrato)',
    'Glaxosmithkline',
    'WELLBUTRIN XL',
    '101070238',
    '150mg/24h',
    'com rev lib prol',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    297,
    'bupropiona (cloridrato)',
    'Glaxosmithkline',
    'WELLBUTRIN XL',
    '101070238',
    '300mg/24h',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    298,
    'deslanosídeo',
    'União Química',
    'DESLANOL',
    '104971229',
    '0,2mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    299,
    'azitromicina di-hidratada',
    'Pfizer',
    'ZITROMAX',
    '102160045',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    300,
    'desloratadina',
    'Organon',
    'DESALEX',
    '100290191',
    '0,5mg/ml',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    301,
    'azitromicina di-hidratada',
    'Pfizer',
    'ZITROMAX',
    '102160045',
    '500mg/4,8mL',
    'pó liof sol inj',
    '2013-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    302,
    'bupropiona (cloridrato) - indicação antidepressivo',
    'Eurofarma',
    'BUP',
    '100430948',
    '150mg,12h',
    'com rev lib prol',
    '2021-05-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    303,
    'desloratadina',
    'Organon',
    'DESALEX',
    '100290191',
    '5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    304,
    'aztreonam',
    'Fresenius',
    'AZEUS',
    '100410178',
    '1000mg',
    'pó sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    305,
    'desloratadina',
    'Aché',
    'ESALERG GOTAS',
    '105730465',
    '1,25mg/mL',
    'sol oral',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    306,
    'clonixinato de lisina',
    'Farmoquímica S/A',
    'DOLAMIN',
    '103900139',
    '125mg',
    'com rev',
    '2013-01-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    307,
    'desmopressina (acetato)',
    'Ferring',
    'DDAVP',
    '128760015',
    '0,1mg/mL',
    'sol nas spray',
    '2017-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    308,
    'baclofeno',
    'Novartis Biociências',
    'LIORESAL',
    '100680059',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    309,
    'bupropiona (cloridrato) - indicação antitabagismo',
    'União Química',
    'CLORIDRATO DE BUPROPIONA',
    '104971413',
    '150mg/12h',
    'com rev lib prol',
    '2021-05-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    310,
    'desmopressina (acetato)',
    'Ferring',
    'DDAVP',
    '128760015',
    '0,1mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    311,
    'clonixinato de lisina',
    'Farmoquímica S/A',
    'DOLAMIN',
    '103900139',
    '250mg',
    'com rev',
    '2022-09-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    312,
    'baricitinibe',
    'Eli Lilly',
    'OLUMIANT',
    '112600198',
    '2mg',
    'com rev',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    313,
    'buspirona (cloridrato)',
    'Libbs',
    'ANSITEC',
    '100330041',
    '5mg',
    'com',
    '2020-06-17 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    314,
    'desmopressina (acetato)',
    'Ferring',
    'DDAVP',
    '128760015',
    '0,2mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    315,
    'cloperastina (fendizoato)',
    'Zambon',
    'SEKI',
    '100840140',
    '35,4mg/ml',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    316,
    'buspirona (cloridrato)',
    'Libbs',
    'ANSITEC',
    '100330042',
    '10mg',
    'com',
    '2020-06-17 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    317,
    'baricitinibe',
    'Eli Lilly',
    'OLUMIANT',
    '112600199',
    '4mg',
    'com rev',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    318,
    'desmopressina (acetato)',
    'Ferring',
    'DDAVP',
    '128760015',
    '4mcg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    319,
    'bussulfano',
    'Accord',
    'BUSSULFANO',
    '155370107',
    '6mg/ml',
    'Sol p/ dil p/ infus',
    '2023-08-04 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    320,
    'beclometasona (dipropionato)',
    'Chiesi',
    'ALERFIN',
    '100580104',
    '100mcg/dose',
    'sus nas',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    321,
    'desogestrel',
    'Organon',
    'CERAZETTE',
    '100290218',
    '75mcg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    322,
    'butenafina (cloridrato)',
    'Brainfarma',
    'TEFIN',
    '155840042',
    '10mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    323,
    'cloperastina (fendizoato)',
    'Zambon',
    'SEKI',
    '100840140',
    '3,54mg/ml',
    'xpe',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    324,
    'beclometasona (dipropionato)',
    'Glaxosmithkline',
    'BECLOSOL SPR NASAL',
    '101070188',
    '50 mcg/mg',
    'sus spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    325,
    'butoconazol (nitrato)',
    'Sigma Pharma',
    'GYNAZOLE-1',
    '135690028',
    '20mg/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    326,
    'desonida',
    'Aché',
    'ADINOS',
    '105730378',
    '0,500mg/g',
    'gel crem',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    327,
    'clopidogrel (bissulfato)',
    'Sanofi Medley',
    'PLAVIX',
    '183260370',
    '75 mg',
    'com rev',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    328,
    'cabazitaxel',
    'Sanofi Medley',
    'JEVTANA',
    '183260312',
    '40mg/ml',
    'sol inj',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    329,
    'desoximetasona',
    'Sanofi Medley',
    'ESPERSON',
    '183260375',
    '2,5mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    330,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA JET',
    '100580111',
    '50mcg/dose',
    'sol aer inal or + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    331,
    'clorambucila',
    'Aspen Pharma',
    'LEUKERAN',
    '137640148',
    '2mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    332,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA JET',
    '100580111',
    '100mcg/dose',
    'sol aer inal or + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    333,
    'desvenlafaxina (succinato monoidratado)',
    'Wyeth',
    'PRISTIQ',
    '121100273',
    '75,87 mg (50mg)',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    334,
    'cloranfenicol (levógiro)',
    'Pfizer',
    'QUEMICETINA',
    '102160127',
    '500 mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    335,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA JET',
    '100580111',
    '200mcg/dose',
    'sol aer inal or + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    336,
    'cabergolina',
    'Pfizer',
    'DOSTINEX',
    '121100412',
    '0,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    337,
    'desvenlafaxina (succinato monoidratado)',
    'Wyeth',
    'PRISTIQ',
    '121100273',
    '151,77 mg (100mg)',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    338,
    'cloranfenicol (succinato sódico)',
    'Blau Farmacêutica',
    'ARIFENICOL',
    '116370118',
    '1g',
    'pó liof sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    339,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA JET',
    '100580111',
    '250mcg/dose',
    'sol aer inal or + espaç',
    '2012-11-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    340,
    'cloridrato de aminolevulinato de metila',
    'Galderma',
    'METVIX',
    '129160065',
    '160mg/g',
    'crem derm',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    341,
    'calcipotriol',
    'Leo Pharma',
    'DAIVONEX',
    '185690003',
    '50mcg/g',
    'pom derm',
    '2016-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    342,
    'dexametasona',
    'Aché',
    'DECADRON',
    '105730303',
    '0,1mg/mL',
    'elx',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    343,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR',
    '100580111',
    '50mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    344,
    'dexametasona',
    'Aché',
    'DECADRON',
    '105730303',
    '0,5mg',
    'com',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    345,
    'cloridrato de amorolfina',
    'Galderma',
    'LOCERYL',
    '129160036',
    '2,5mg/g',
    'crem derm',
    '2015-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    346,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR',
    '100580111',
    '100mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    347,
    'dexametasona',
    'Aché',
    'DECADRON',
    '105730303',
    '0,75mg',
    'com',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    348,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR',
    '100580111',
    '200mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    349,
    'dexametasona',
    'Aché',
    'DECADRON',
    '105730303',
    '4mg',
    'com',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    350,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR',
    '100580111',
    '250mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    351,
    'dexametasona',
    'Novartis Biociências',
    'MAXIDEX',
    '100681097',
    '1mg/mL',
    'sus  oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    352,
    'dexametasona',
    'Novartis Biociências',
    'MAXIDEX',
    '100681097',
    '1mg/g',
    'pom oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    353,
    'dexametasona (fosfato dissódico)',
    'Aché',
    'DECADRON INJETÁVEL',
    '105730302',
    '4mg/mL',
    'sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    354,
    'dexametasona (fosfato dissódico)',
    'Aché',
    'DECADRON INJETÁVEL',
    '105730302',
    '2mg/mL',
    'sol inj',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    355,
    'dexclorfeniramina (maleato)',
    'Cosmed',
    'POLARAMINE',
    '178170811',
    '10mg/g',
    'crem derm',
    '2012-12-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    356,
    'cloridrato de cefepima',
    'Instituto Biochimico',
    'CLORIDRATO DE CEFEPIMA',
    '100630227',
    '1g',
    'pó sol inj',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    357,
    'dexclorfeniramina (maleato)',
    'Cosmed',
    'POLARAMINE',
    '178170811',
    '2mg',
    'com rev',
    '2012-12-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    358,
    'dexclorfeniramina (maleato)',
    'Cosmed',
    'POLARAMINE',
    '178170811',
    '6,0mg',
    'drag',
    '2012-12-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    359,
    'cloridrato de cefepima',
    'Instituto Biochimico',
    'CLORIDRATO DE CEFEPIMA',
    '100630227',
    '2g',
    'pó sol inj',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    360,
    'dexclorfeniramina (maleato)',
    'Cosmed',
    'POLARAMINE',
    '178170811',
    '0,4mg/ml',
    'sol oral',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    361,
    'dexclorfeniramina (maleato)',
    'Cosmed',
    'POLARAMINE',
    '178170811',
    '2,8mg/ml',
    'sol oral',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    362,
    'calcitonina (sintética de salmão)',
    'Bergamo',
    'SEACALCIT',
    '106460161',
    '200UI/dose',
    'sol spr nas',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    363,
    'cloridrato de epinastina',
    'Allergan',
    'RELESTAT',
    '101470163',
    '0,5mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    364,
    'canaglifozina anidra',
    'Janssen-Cilag',
    'INVOKANA',
    '112363408',
    '100mg',
    'com rev',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    365,
    'cloridrato de oxicodona',
    'Mundipharma',
    'OXYCONTIN',
    '191980001',
    '10mg',
    'com rev lib prol',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    366,
    'dexlansoprazol',
    'Takeda',
    'DEXILANT',
    '106390261',
    '30 mg',
    'cap gel dur com microg de\nlib mod',
    '2020-04-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    367,
    'canaglifozina anidra',
    'Janssen-Cilag',
    'INVOKANA',
    '112363408',
    '300mg',
    'com rev',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    368,
    'cloridrato de oxicodona',
    'Mundipharma',
    'OXYCONTIN',
    '191980001',
    '20mg',
    'com rev lib prol',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    369,
    'dexlansoprazol',
    'Takeda',
    'DEXILANT',
    '106390262',
    '60 mg',
    'cap gel dur com microg de\nlib mod',
    '2020-04-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    370,
    'candesartana cilexetila',
    'Astrazeneca',
    'ATACAND',
    '116180095',
    '8mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    371,
    'cloridrato de oxicodona',
    'Mundipharma',
    'OXYCONTIN',
    '191980001',
    '40mg',
    'com rev lib prol',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    372,
    'dexmedetomidina(cloridrato)',
    'Wyeth',
    'PRECEDEX',
    '121100372',
    '100 mcg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    373,
    'dexmedetomidina(cloridrato)',
    'Cristália',
    'DEX BOLSA',
    '102980558',
    '4 mcg/mL',
    'sol inf',
    '2022-06-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    374,
    'cloridrato de palonosetrona',
    'Merck Sharp & Dohme',
    'ONICIT',
    '101710181',
    '0,05mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    375,
    'dexpantenol',
    'BL Indústria',
    'EPITEGEL',
    '119610012',
    '50 mg/g',
    'gel oft',
    '2022-12-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    376,
    'dextrometorfano (bromidrato)',
    'Johnson & Johnson',
    'BENALET TSC',
    '157211206',
    '3 mg/mL',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    377,
    'cloridrato de sibutramina',
    'Aché',
    'BIOMAG',
    '105730371',
    '10mg',
    'cap dura',
    '2013-06-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    378,
    'diacereína',
    'TRB Pharma',
    'ARTRODAR',
    '103410052',
    '50 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    379,
    'cloridrato de sibutramina',
    'Aché',
    'BIOMAG',
    '105730371',
    '15mg',
    'cap dura',
    '2013-06-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    380,
    'diazepam',
    'União Química',
    'UNI-DIAZEPAX',
    '104970147',
    '5 mg/mL',
    'sol inj',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    381,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR JET',
    '100580111',
    '50mcg/dose',
    'sol aer inal or+ inal + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    382,
    'cloridrato de valganciclovir',
    'Biopas',
    'VALCYTE',
    '189770003',
    '450mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    383,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR JET',
    '100580111',
    '100mcg/dose',
    'sol aer inal or+ inal + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    384,
    'clorpromazina (cloridrato)',
    'Sanofi Medley',
    'AMPLICTIL',
    '183260385',
    '25mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    385,
    'diazepam',
    'Belfar',
    'VALIUM',
    '105710166',
    '5 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    386,
    'diazepam',
    'Belfar',
    'VALIUM',
    '105710166',
    '10 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    387,
    'clorpromazina (cloridrato)',
    'Sanofi Medley',
    'AMPLICTIL',
    '183260385',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    388,
    'diclofenaco (ácido)',
    'Novartis Biociências',
    'CATAFLAM D',
    '100680038',
    '44,3 mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    389,
    'clorpromazina (cloridrato)',
    'Sanofi Medley',
    'AMPLICTIL',
    '183260385',
    '40mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    390,
    'candesartana cilexetila',
    'Astrazeneca',
    'ATACAND',
    '116180095',
    '16mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    391,
    'diclofenaco (colestiramina)',
    'Novartis Biociências',
    'FLOTAC',
    '100680102',
    '140 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    392,
    'clorpromazina (cloridrato)',
    'União Química',
    'CLORPROMAZ',
    '104970155',
    '5mg/mL',
    'sol inj',
    '2022-12-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    393,
    'candesartana cilexetila',
    'Libbs',
    'VENZER',
    '100330197',
    '32mg',
    'com',
    '2023-01-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    394,
    'diclofenaco (dietilamônio)',
    'PF Consumer',
    'CATAFLAMPRO',
    '192900008',
    '11,6 mg',
    'sol derm (aerossol)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    395,
    'clorpropamida',
    'Pfizer',
    'DIABINESE',
    '102160010',
    '250mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    396,
    'diclofenaco (dietilamônio)',
    'Glaxosmithkline',
    'CATAFLAMPRO EMUGEL',
    '101070328',
    '11,6 mg/g',
    'gel',
    '2014-12-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    397,
    'diclofenaco (dietilamônio)',
    'Glaxosmithkline',
    'CATAFLAMPRO XT EMUGEL',
    '101070328',
    '23,2mg/g',
    'gel',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    398,
    'capecitabina',
    'Biopas',
    'XELODA',
    '189770004',
    '150mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    399,
    'diclofenaco potássico',
    'Novartis Biociência',
    'CATAFLAM',
    '100680038',
    '50mg',
    'com rev',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    400,
    'capecitabina',
    'Biopas',
    'XELODA',
    '189770004',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    401,
    'captopril',
    'Pharlab',
    'CAPTOSEN',
    '141070025',
    '25mg',
    'com',
    '2013-06-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    402,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR JET',
    '100580111',
    '200mcg/dose',
    'sol aer inal or+ inal + espaç',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    403,
    'captopril',
    'Pharlab',
    'CAPTOSEN',
    '141070025',
    '50mg',
    'com',
    '2013-06-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    404,
    'beclometasona (dipropionato)',
    'Chiesi',
    'CLENIL HFA SPR JET',
    '100580111',
    '250mcg/dose',
    'sol aer inal or+ inal + espaç',
    '2012-11-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    405,
    'carbamazepina',
    'Novartis Biociências',
    'TEGRETOL',
    '100680085',
    '20mg/ml',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    406,
    'carbamazepina',
    'Novartis Biociências',
    'TEGRETOL',
    '100680085',
    '200mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    407,
    'belinostate',
    'Pint Pharma',
    'BELEODAQ',
    '139000002',
    '500mg',
    'po liof sol inj',
    '2023-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    408,
    'carbamazepina',
    'Novartis Biociências',
    'TEGRETOL',
    '100680085',
    '400mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    409,
    'benazepril (cloridrato)',
    'Biolab Sanus',
    'BHENA',
    '109740293',
    '5mg',
    'com rev',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    410,
    'carbamazepina',
    'Novartis Biociências',
    'TEGRETOL CR',
    '100680085',
    '200mg',
    'com desint lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    411,
    'benazepril (cloridrato)',
    'Biolab Sanus',
    'BHENA',
    '109740293',
    '10 mg',
    'com rev',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    412,
    'carbamazepina',
    'Novartis Biociências',
    'TEGRETOL CR',
    '100680085',
    '400mg',
    'com desint lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    413,
    'bendamustina (cloridrato)',
    'Janssen-Cilag',
    'RIBOMUSTIN',
    '112363413',
    '25mg',
    'pó liof sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    414,
    'carbetocina',
    'Ferring',
    'DURATOCIN',
    '128760024',
    '100µg/mL',
    'sol inj',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    415,
    'bendamustina (cloridrato)',
    'Janssen-Cilag',
    'RIBOMUSTIN',
    '112363413',
    '100mg',
    'pó liof sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    416,
    'benfotiamina',
    'Cosmed',
    'MILGAMMA',
    '178170796',
    '150mg',
    'drag',
    '2015-02-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    417,
    'carbocisteína',
    'EMS S/A',
    'Carbocisteína',
    '102350461',
    '20 mg/Ml',
    'xpe',
    '2021-06-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    418,
    'benzidamina (cloridrato)',
    'Aché',
    'FLOGORAL',
    '105730313',
    '1,5mg/mL',
    'colut spray',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    419,
    'carbocisteína',
    'EMS S/A',
    'Carbocisteína',
    '102350461',
    '50 mg/Ml',
    'xpe',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    420,
    'carboplatina',
    'Blau Farmacêutica',
    'B-PLATIN',
    '116370014',
    '10mg/ml',
    'sol inj',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    421,
    'benzidamina (cloridrato)',
    'Aché',
    'FLOGORAL',
    '105730313',
    '1,5mg/mL',
    'colut',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    422,
    'carboplatina',
    'Blau Farmacêutica',
    'B-PLATIN',
    '116370014',
    '150mg',
    'pó liof sol inj',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    423,
    'benzidamina (cloridrato)',
    'Aché',
    'FLOGORAL',
    '105730313',
    '3mg',
    'past',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    424,
    'carfilzomibe',
    'Amgen',
    'KYPROLIS',
    '102440010',
    '60mg',
    'pó liof sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    425,
    'carmustina',
    'Dr.Reddy\'s',
    'NIBISNU',
    '151430063',
    '100mg',
    'pó liof sol inj',
    '2022-12-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    426,
    'benzidamina (cloridrato)',
    'Aché',
    'FLOGORAL',
    '105730313',
    '5mg/g',
    'crem dental',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    427,
    'benzilpenicilina  benzatina',
    'Eurofarma',
    'BENZETACIL',
    '100430686',
    '1.200.000UI\n(300.000UI/mLX4mL)',
    'sus inj',
    '12/11/2012; 10/12/2014'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    428,
    'clortalidona',
    'EMS S/A',
    'CLORTALIDONA',
    '102350614',
    '12,5mg',
    'com',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    429,
    'clortalidona',
    'EMS S/A',
    'CLORTALIDONA',
    '102350614',
    '25mg',
    'com',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    430,
    'clortalidona',
    'EMS S/A',
    'CLORTALIDONA',
    '102350614',
    '50mg',
    'com',
    '2019-12-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    431,
    'benzilpenicilina  potássica',
    'Blau Farmacêutica',
    'ARICILINA',
    '116370108',
    '5.000.000 UI',
    'pó inj',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    432,
    'clotrimazol',
    'Bayer',
    'CANESTEN',
    '170560102',
    '10mg/g',
    'sol top (spr)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    433,
    'benznidazol',
    'Lafepe',
    'LAFEPE BENZNIDAZOL',
    '101830145',
    '100 mg',
    'com',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    434,
    'benzoato de alogliptina',
    'Cosmed',
    'NESINA',
    '178170906',
    '12,5mg',
    'com rev',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    435,
    'benzoato de alogliptina',
    'Cosmed',
    'NESINA',
    '178170906',
    '25mg',
    'com rev',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    436,
    'clotrimazol',
    'Bayer',
    'CANESTEN',
    '170560102',
    '10mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    437,
    'benzoilmetronidazol',
    'Belfar',
    'FLAGIMAX',
    '1057100125',
    '40mg/mL',
    'susp oral',
    '2021-12-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    438,
    'clotrimazol',
    'Bayer',
    'CANESTEN',
    '170560102',
    '10mg/g',
    'po uso top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    439,
    'betaistina (dicloridrato)',
    'Aché',
    'BETADINE XR',
    '105730730',
    '32mg/24h',
    'com lib prol',
    '2020-07-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    440,
    'clotrimazol',
    'Bayer',
    'GINO CANESTEN',
    '170560102',
    '10mg/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    441,
    'diclofenaco sódico',
    'EMS S/A',
    'DICLOFENACO SÓDICO',
    '102350785',
    '10mg/g',
    'gel',
    '2013-04-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    442,
    'diclofenaco sódico',
    'Zodiac',
    'FLODIN DUO',
    '122140043',
    '150mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    443,
    'clotrimazol',
    'Bayer',
    'GINO CANESTEN',
    '170560102',
    '20mg/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    444,
    'betaistina (dicloridrato)',
    'Aché',
    'BETADINE XR',
    '105730730',
    '48mg/24h',
    'com lib prol',
    '2020-07-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    445,
    'betaistina (dicloridrato)',
    'Abbott',
    'BETASERC',
    '105530343',
    '16mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    446,
    'clotrimazol',
    'Bayer',
    'GINO CANESTEN',
    '170560102',
    '500mg',
    'com vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    447,
    'diclofenaco sódico',
    'Latinofarma',
    'MAXILERG',
    '117250030',
    '1mg/mL',
    'sol oft',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    448,
    'Clotrimazol',
    'Bayer S. A',
    'GINO-CANESTEN',
    '170560124',
    '500mg',
    'cap mole vag',
    '2023-08-04 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    449,
    'diclofenaco sódico',
    'Novartis Biociências',
    'VOLTAREN',
    '100680060',
    '25mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    450,
    'betaistina (dicloridrato)',
    'Abbott',
    'BETASERC',
    '105530343',
    '24mg',
    'com',
    '2012-11-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    451,
    'diclofenaco sódico',
    'Novartis Biociências',
    'VOLTAREN',
    '100680060',
    '50mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    452,
    'betaistina (dicloridrato)',
    'Apsen Farmacêutica',
    'LABIRIN',
    '101180157',
    '8mg',
    'com',
    '2018-05-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    453,
    'diclofenaco sódico',
    'Novartis Biociências',
    'VOLTAREN RETARD',
    '100680060',
    '100mg',
    'com rev desint lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    454,
    'betametasona',
    'Cosmed',
    'CELESTONE',
    '178170785',
    '0,1mg/mL',
    'elx',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    455,
    'carvedilol',
    'Libbs',
    'CARDILOL',
    '100330066',
    '3,125mg',
    'com',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    456,
    'betametasona',
    'Cosmed',
    'CELESTONE',
    '178170785',
    '0,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    457,
    'diclofenaco sódico',
    'Novartis Biociências',
    'VOLTAREN SR',
    '100680060',
    '75mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    458,
    'carvedilol',
    'Libbs',
    'CARDILOL',
    '100330066',
    '6,25mg',
    'com',
    '2020-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    459,
    'betametasona',
    'Cosmed',
    'CELESTONE',
    '178170785',
    '2mg',
    'com',
    '2012-11-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    460,
    'carvedilol',
    'Libbs',
    'CARDILOL',
    '100330066',
    '12,5mg',
    'com',
    '2020-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    461,
    'betametasona (dipropionato)',
    'Cosmed',
    'DIPROSONE',
    '178170799',
    '0,64mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    462,
    'dicloridrato de sapropterina',
    'Biomarin',
    'KUVAN',
    '173330004',
    '100mg',
    'com disp',
    '2017-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    463,
    'betametasona (dipropionato)',
    'Cosmed',
    'DIPROSONE',
    '178170799',
    '0,64mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    464,
    'didrogesterona',
    'Abbott',
    'DUPHASTON',
    '105530347',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    465,
    'carvedilol',
    'Libbs',
    'CARDILOL',
    '100330066',
    '25mg',
    'com',
    '2020-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    466,
    'clozapina',
    'Mylan',
    'LEPONEX',
    '100680027',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    467,
    'caspofungina (acetato)',
    'Merck Sharp & Dohme',
    'CANCIDAS',
    '101710226',
    '50mg',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    468,
    'betametasona (dipropionato)',
    'Cosmed',
    'DIPROSONE',
    '178170799',
    '0,64mg/mL',
    'sus derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    469,
    'caspofungina (acetato)',
    'Merck Sharp & Dohme',
    'CANCIDAS',
    '101710226',
    '70mg',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    470,
    'dienogeste',
    'Bayer',
    'ALLURENE',
    '170560088',
    '2mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    471,
    'clozapina',
    'Mylan',
    'LEPONEX',
    '100680027',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    472,
    'cefadroxila',
    'Eurofarma',
    'CEFADROXILA',
    '100430733',
    '500 mg',
    'cap dura',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    473,
    'cobimetinibe (hemifumarato)',
    'Roche',
    'COTELLIC',
    '101000662',
    '20mg',
    'com rev',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    474,
    'betametasona (fosfato dissódico)',
    'Cosmed',
    'CELESTONE INJETÁVEL',
    '178170785',
    '4mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    475,
    'betametasona (valerato)',
    'Glaxosmithkline',
    'BETNOVATE',
    '101070233',
    '1mg/g',
    'loção',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    476,
    'cefadroxila',
    'Eurofarma',
    'CEFADROXILA',
    '100430814',
    '50mg/mL',
    'po sus or',
    '2022-02-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    477,
    'betametasona (valerato)',
    'Glaxosmithkline',
    'BETNOVATE',
    '101070233',
    '1mg/g',
    'solução capilar',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    478,
    'cefalexina monoidratada',
    'União Química',
    'CEFALEXINA',
    '104971355',
    '50mg/mL',
    'po sus or',
    '2021-05-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    479,
    'codeína (fosfato)',
    'Cristália',
    'CODEIN',
    '102980199',
    '30mg',
    'com',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    480,
    'betametasona (valerato)',
    'Glaxosmithkline',
    'BETNOVATE',
    '101070233',
    '1mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    481,
    'cefalexina monoidratada',
    'Laboratórios Bagó',
    'KEFLEX',
    '156260017',
    '50mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    482,
    'betametasona (valerato)',
    'Glaxosmithkline',
    'BETNOVATE',
    '101070233',
    '1mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    483,
    'cefalexina monoidratada',
    'Laboratórios Bagó',
    'KEFLEX',
    '156260017',
    '1,5g/15mL (100mg/mL)',
    'po sol extemp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    484,
    'betaxolol (cloridrato)',
    'Novartis Biociências',
    'BETOPTIC',
    '100681111',
    '5,0mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    485,
    'betaxolol (cloridrato)',
    'Novartis Biociências',
    'BETOPTIC',
    '100681111',
    '2,5mg/mL',
    'sus oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    486,
    'cefalexina monoidratada',
    'Laboratórios Bagó',
    'KEFLEX',
    '156260017',
    '100mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    487,
    'codeína (fosfato)',
    'Cristália',
    'CODEIN',
    '102980199',
    '60mg',
    'com',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    488,
    'cefalexina monoidratada',
    'Laboratórios Bagó',
    'KEFLEX',
    '156260017',
    '500mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    489,
    'bezafibrato',
    'Teva Farmacêutica',
    'CEDUR',
    '155730060',
    '400mg',
    'com desint lenta',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    490,
    'codeína (fosfato)',
    'Cristália',
    'CODEIN',
    '102980199',
    '3mg/mL',
    'sol oral',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    491,
    'cefalexina monoidratada',
    'Laboratórios Bagó',
    'KEFLEX',
    '156260017',
    '1000mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    492,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM',
    '103670062',
    '30mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    493,
    'bicalutamida',
    'Astrazeneca',
    'CASODEX',
    '116180062',
    '50mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    494,
    'codeína (fosfato)',
    'Cristália',
    'CODEIN',
    '102980199',
    '30mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    495,
    'cefalexina monoidratada',
    'Antibióticos do Brasil',
    'KEFORAL',
    '155620001',
    '500mg',
    'cap dura',
    '2013-09-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    496,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM',
    '103670062',
    '60mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    497,
    'bilastina',
    'Cosmed',
    'ALEKTOS',
    '178170902',
    '20mg',
    'com',
    '2014-12-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    498,
    'codergocrina (mesilato)',
    'Aché',
    'MESILATO DE CODERGOCRINA',
    '105730693',
    '4,5mg/1,5ml',
    'sol oral',
    '2016-01-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    499,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM CD',
    '103670062',
    '180mg',
    'cap dura lib gradual',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    500,
    'colchicina',
    'Apsen Farmacêutica',
    'COLCHIS',
    '101180109',
    '0,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    501,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM CD',
    '103670062',
    '240mg',
    'cap dura lib gradual',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    502,
    'colchicina',
    'Apsen Farmacêutica',
    'COLCHIS',
    '101180109',
    '1mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    503,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM SR',
    '103670062',
    '90mg',
    'cap dura + microgran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    504,
    'colestiramina',
    'Moksha',
    'QUESTRAN LIGHT',
    '164250004',
    '4g/90mL',
    'po or',
    '2013-05-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    505,
    'colistimetato sódico',
    'Opem',
    'COLIS-TEK',
    '127480023',
    '150mg colistina base/2mL',
    'pó sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    506,
    'diltiazem (cloridrato)',
    'Boehringer Ingelheim',
    'CARDIZEM SR',
    '103670062',
    '120mg',
    'cap dura + microgran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    507,
    'dimaleato de afatinibe',
    'Boehringer Ingelheim',
    'GIOTRIF',
    '103670174',
    '30mg',
    'com rev',
    '2017-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    508,
    'colistimetato sódico',
    'Zambon',
    'PROMIXIN',
    '100849957',
    '500.000 UI/mL a 250.000\nUI/mL',
    'pó estéril',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    509,
    'dimaleato de afatinibe',
    'Boehringer Ingelheim',
    'GIOTRIF',
    '103670174',
    '40mg',
    'com rev',
    '2017-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    510,
    'cefalotina sódica (tamponada)',
    'Antibióticos do Brasil',
    'KEFLIN NEUTRO',
    '155620004',
    '1000mg',
    'pó liof sol inj',
    '2013-01-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    511,
    'crizotinibe',
    'Wyeth',
    'XALKORI',
    '121100454',
    '250mg',
    'cap gel dur',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    512,
    'dimenidrinato',
    'Cosmed',
    'DRAMIN',
    '178170901',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    513,
    'cefazolina sódica',
    'Antibióticos do Brasil',
    'KEFAZOL',
    '155620003',
    '1000 mg/10mL',
    'pó sol inj',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    514,
    'crizotinibe',
    'Wyeth',
    'XALKORI',
    '121100454',
    '200mg',
    'cap gel dur',
    '2018-09-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    515,
    'cefotaxima sódica',
    'Fresenius',
    'CETAZIMA',
    '100410209',
    '250mg/mL',
    'pó sol inj',
    '2019-01-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    516,
    'dimenidrinato',
    'Cosmed',
    'DRAMIN',
    '178170901',
    '25mg',
    'cap mole',
    '2014-12-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    517,
    'enalapril (maleato)',
    'Organon',
    'RENITEC',
    '100290031',
    '5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    518,
    'cromoglicato dissódico',
    'Allergan',
    'CROMOLERG OCULUM',
    '101470096',
    '2PCC (20mg/g)',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    519,
    'cefotaxima sódica',
    'Fresenius',
    'CETAZIMA',
    '100410209',
    '1000mg',
    'pó inj',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    520,
    'dimenidrinato',
    'Cosmed',
    'DRAMIN',
    '178170901',
    '50mg',
    'cap mole',
    '2016-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    521,
    'enalapril (maleato)',
    'Organon',
    'RENITEC',
    '100290031',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    522,
    'ceftarolina fosamila',
    'Astrazeneca',
    'ZINFORO',
    '116180247',
    '600mg',
    'Po Sol Ext',
    '2016-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    523,
    'enalapril (maleato)',
    'Organon',
    'RENITEC',
    '100290031',
    '20mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    524,
    'ceftazidima',
    'Antibióticos do Brasil',
    'KEFADIM',
    '155620006',
    '1g',
    'po sol inj',
    '2022-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    525,
    'enflurano',
    'Cristália',
    'ENFLURAN',
    '102980157',
    '1ml/ml',
    'sol inal',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    526,
    'enfuvirtida',
    'Roche',
    'FUZEON',
    '101000617',
    '108mg/1,1mL (90mg/mL)',
    'pó liof sol inj',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    527,
    'entacapona',
    'Sandoz',
    'COMTAN',
    '100470633',
    '200mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    528,
    'ceftriaxona dissódica hemieptaidratada',
    'Roche',
    'ROCEFIN',
    '101000132',
    '500mg/5mL',
    'pó sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    529,
    'enzalutamida',
    'Astellas',
    'XTANDI',
    '177170006',
    '40mg',
    'cap mole',
    '2016-01-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    530,
    'ceftriaxona dissódica hemieptaidratada',
    'Roche',
    'ROCEFIN',
    '101000132',
    '1000mg/10mL',
    'pó sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    531,
    'cromoglicato dissódico',
    'Allergan',
    'CROMOLERG OCULUM',
    '101470096',
    '4PCC (40mg/g)',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    532,
    'epinastina (cloridrato)',
    'Aché',
    'TALERC',
    '105730364',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    533,
    'cromoglicato dissódico',
    'Uci Farma',
    'RILAN',
    '105500068',
    '20mg/mL',
    'sol spr nas',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    534,
    'ceftriaxona dissódica hemieptaidratada',
    'Roche',
    'ROCEFIN',
    '101000132',
    '500mg/2mL',
    'pó sol inj (im)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    535,
    'epinastina (cloridrato)',
    'Aché',
    'TALERC',
    '105730364',
    '20mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    536,
    'cromoglicato dissódico',
    'Uci Farma',
    'RILAN',
    '105500068',
    '40mg/mL',
    'sol spr nas',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    537,
    'ceftriaxona dissódica hemieptaidratada',
    'Roche',
    'ROCEFIN',
    '101000132',
    '1000mg/3,5mL',
    'pó sol inj (im)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    538,
    'epinastina (cloridrato)',
    'Aché',
    'TALERC',
    '105730364',
    '2mg/mL',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    539,
    'dabigatrana (etexilato)',
    'Boehringer Ingelheim',
    'PRADAXA',
    '103670160',
    '75mg',
    'cap',
    '2013-04-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    540,
    'cefuroxima sódica',
    'Sandoz',
    'ZINACEF',
    '100470646',
    '750mg/6mL',
    'pó sol inj',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    541,
    'dabigatrana (etexilato)',
    'Boehringer Ingelheim',
    'PRADAXA',
    '103670160',
    '110mg',
    'cap',
    '2013-04-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    542,
    'celecoxibe',
    'Mylan',
    'CELEBRA',
    '188300086',
    '100mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    543,
    'celecoxibe',
    'Mylan',
    'CELEBRA',
    '188300086',
    '200 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    544,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '300mg',
    'sup',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    545,
    'cetirizina (dicloridrato)',
    'Johnson & Johnson',
    'REACTINE',
    '157211212',
    '10mg',
    'cap mole',
    '2021-10-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    546,
    'cetirizina (dicloridrato)',
    'Glaxosmithkline',
    'ZYRTEC',
    '101070252',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    547,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '500mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    548,
    'dabigatrana (etexilato)',
    'Boehringer Ingelheim',
    'PRADAXA',
    '103670160',
    '150 mg',
    'cap',
    '2013-04-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    549,
    'dabrafenibe (mesilato)',
    'Novartis Biociências',
    'TAFINLAR',
    '100681135',
    '50 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    550,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '1000mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    551,
    'dabrafenibe (mesilato)',
    'Novartis Biociências',
    'TAFINLAR',
    '100681135',
    '75 mg',
    'cap dura',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    552,
    'dacarbazina',
    'Eurofarma',
    'DACARB',
    '100430636',
    '10mg/ml',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    553,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '500mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    554,
    'cetirizina (dicloridrato)',
    'Glaxosmithkline',
    'ZYRTEC',
    '101070252',
    '1mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    555,
    'dactinomicina',
    'Laboratórios Bagó',
    'COSMEGEN',
    '156260014',
    '0,5mg/1,1mL',
    'pó liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    556,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '50mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    557,
    'danazol',
    'Sanofi Medley',
    'LADOGAL',
    '183260355',
    '100mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    558,
    'cetoconazol',
    'Aché',
    'CANDORAL',
    '105730067',
    '200mg',
    'com',
    '2015-05-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    559,
    'danazol',
    'Sanofi Medley',
    'LADOGAL',
    '183260355',
    '200mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    560,
    'cetoconazol',
    'Cristalia',
    'CETOCONAZOL',
    '102980294',
    '20mg/g',
    'shampoo',
    '2019-09-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    561,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '500mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    562,
    'epinefrina',
    'Hipolabor',
    'ADREN',
    '113430001',
    '1mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    563,
    'cetoconazol',
    'Janssen-Cilag',
    'NIZORAL',
    '112360016',
    '20mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    564,
    'dantroleno sódico',
    'Cristália',
    'DANTROLEN',
    '102980206',
    '20mg',
    'pó liof sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    565,
    'eplerenona',
    'Upjohn Brasil',
    'INSPRA',
    '115350010',
    '25mg',
    'com rev',
    '2023-10-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    566,
    'cetoprofeno',
    'Sanofi-Aventis',
    'BI - PROFENID',
    '183260360',
    '150mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    567,
    'eplerenona',
    'Upjohn Brasil',
    'INSPRA',
    '115350010',
    '50mg',
    'com rev',
    '2023-10-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    568,
    'cetoprofeno',
    'Sanofi Medley',
    'PROFENID',
    '183260360',
    '100mg',
    'sup',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    569,
    'dapaglifozina',
    'Astrazeneca',
    'FORXIGA',
    '116180259',
    '5mg',
    'com rev',
    '2014-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    570,
    'erdafitinibe',
    'Janssen-Cilag',
    'ERFANDEL',
    '112363433',
    '3mg',
    'com rev',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    571,
    'cetoprofeno',
    'Sanofi Medley',
    'PROFENID',
    '183260360',
    '20mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    572,
    'dapaglifozina',
    'Astrazeneca',
    'FORXIGA',
    '116180259',
    '10mg',
    'com rev',
    '2014-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    573,
    'erdafitinibe',
    'Janssen-Cilag',
    'ERFANDEL',
    '112363433',
    '4mg',
    'com rev',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    574,
    'cetoprofeno',
    'Sanofi Medley',
    'PROFENID',
    '183260360',
    '50mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    575,
    'dapoxetina (cloridrato)',
    'Farmoquímica',
    'PROSOY',
    '103900222',
    '30mg',
    'com rev',
    '2023-06-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    576,
    'erdafitinibe',
    'Janssen-Cilag',
    'ERFANDEL',
    '112363433',
    '5mg',
    'com rev',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    577,
    'daptomicina',
    'Merck Sharp & Dohme',
    'CUBICIN',
    '101710228',
    '500 mg/10mL',
    'pó liof sol inj',
    '2013-01-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    578,
    'eribulina (mesilato)',
    'Eisai Laboratórios',
    'HALAVEN',
    '173100001',
    '0,5mg/ml',
    'sol inj',
    '2015-02-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    579,
    'dipirona sódica monoidratada',
    'Opella Healthcare',
    'NOVALGINA',
    '186200018',
    '1g',
    'com efer',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    580,
    'eritromicina (lactobionato)',
    'Opem',
    'TROMAXIL',
    '127480025',
    '1000mg',
    'po sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    581,
    'cetoprofeno',
    'Sanofi-Aventis',
    'PROFENID ENTÉRICO',
    '183260360',
    '100mg',
    'com lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    582,
    'divalproato de sódio',
    'Abbott',
    'DEPAKOTE',
    '105530203',
    '250mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    583,
    'cetoprofeno',
    'Sanofi-Aventis',
    'PROFENID IM',
    '183260360',
    '50mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    584,
    'divalproato de sódio',
    'Abbott',
    'DEPAKOTE',
    '105530203',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    585,
    'cetoprofeno',
    'Cristália',
    'CETOPROFENO',
    '102980320',
    '100mg',
    'pó liof sol inj',
    '2022-12-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    586,
    'divalproato de sódio',
    'Abbott',
    'DEPAKOTE ER',
    '105530203',
    '250mg',
    'com rev lib prol',
    '2013-01-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    587,
    'divalproato de sódio',
    'Abbott',
    'DEPAKOTE ER',
    '105530203',
    '500mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    588,
    'flutrimazol',
    'Aché',
    'MICETAL',
    '105730701',
    '0,01g/mL',
    'sol top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    589,
    'divalproato de sódio',
    'Abbott',
    'DEPAKOTE SPRINKLE',
    '105530203',
    '125mg',
    'cap + microgran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    590,
    'fosaprepitanto dimeglumina',
    'Merck Sharp & Dohme',
    'EMEND INJETÁVEL',
    '101710225',
    '150mg',
    'po liof sol inf',
    '2016-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    591,
    'erlotinibe (cloridrato)',
    'Roche',
    'TARCEVA',
    '101000651',
    '25mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    592,
    'dobesilato de cálcio',
    'Apsen Farmacêutica',
    'DOBEVEN',
    '101180612',
    '500mg',
    'cap dura',
    '2015-09-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    593,
    'fotemustina',
    'Servier',
    'MUPHORAN',
    '112780053',
    '50mg/mL',
    'po sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    594,
    'erlotinibe (cloridrato)',
    'Roche',
    'TARCEVA',
    '101000651',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    595,
    'fulvestranto',
    'Astrazeneca',
    'FASLODEX',
    '116180114',
    '50mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    596,
    'erlotinibe (cloridrato)',
    'Roche',
    'TARCEVA',
    '101000651',
    '150mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    597,
    'dobutamina (cloridrato)',
    'Antibióticos do Brasil',
    'DOBUTREX',
    '155620008',
    '12,5mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    598,
    'ertapeném sódico',
    'Merck Sharp & Dohme',
    'INVANZ',
    '101710224',
    '1g',
    'po liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    599,
    'fumarato dimetila',
    'Biogen',
    'TECFIDERA',
    '169930004',
    '120mg',
    'cap lib retardada',
    '2017-05-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    600,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '10mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    601,
    'docetaxel (triidratado)',
    'Sanofi Medley',
    'TAXOTERE',
    '183260439',
    '20mg/ml',
    'sol inj',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    602,
    'escetamina (cloridrato)',
    'Cristália',
    'KETAMIN',
    '102980213',
    '50mg/ml',
    'sol inj com conservante',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    603,
    'fumarato dimetila',
    'Biogen',
    'TECFIDERA',
    '169930005',
    '240mg',
    'cap lib retardada',
    '2017-05-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    604,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '15mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    605,
    'dolutegravir sódico',
    'Glaxosmithkline',
    'TIVICAY',
    '101070300',
    '50mg',
    'com rev',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    606,
    'escetamina (cloridrato)',
    'Cristália',
    'KETAMIN NP',
    '102980213',
    '50mg/ml',
    'sol inj sem conservante',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    607,
    'furosemida',
    'Sanofi Medley',
    'LASIX',
    '183260356',
    '10mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    608,
    'domperidona',
    'Johnson & Johnson',
    'MOTILIUM',
    '157211213',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    609,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '20mg',
    'cap dura',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    610,
    'furosemida',
    'Sanofi Medley',
    'LASIX',
    '183260356',
    '40mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    611,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '25mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    612,
    'fusídico, ácido',
    'Leo Pharma',
    'VERUTEX',
    '185690002',
    '20mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    613,
    'lenvatinibe (mesilato)',
    'United Medical',
    'LENVIMA',
    '125760027',
    '4mg',
    'cap dura',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    614,
    'galantamina (bromidrato)',
    'Prati Donaduzzi',
    'BROMIDRATO DE GALANTAMINA',
    '125680250',
    '8 mg',
    'cap dura lib prol',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    615,
    'lenvatinibe (mesilato)',
    'United Medical',
    'LENVIMA',
    '125760027',
    '10mg',
    'cap dura',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    616,
    'galantamina (bromidrato)',
    'Prati Donaduzzi',
    'BROMIDRATO DE GALANTAMINA',
    '125680250',
    '16 mg',
    'cap dura lib prol',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    617,
    'lercanidipino (cloridrato)',
    'Apsen Farmacêutica',
    'ZANIDIP',
    '101180641',
    '10mg',
    'com rev',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    618,
    'galantamina (bromidrato)',
    'Prati Donaduzzi',
    'BROMIDRATO DE GALANTAMINA',
    '125680250',
    '24 mg',
    'cap dura lib prol',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    619,
    'lercanidipino (cloridrato)',
    'Apsen Farmacêutica',
    'ZANIDIP',
    '101180641',
    '20mg',
    'com rev',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    620,
    'gabapentina',
    'Upjohn Brasil',
    'NEURONTIN',
    '115350007',
    '300mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    621,
    'escetamina (cloridrato)',
    'Janssen-Cilag',
    'SPRAVATO',
    '112363435',
    '140mg/mL',
    'sol spr nas',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    622,
    'letermovir',
    'Merck Sharp & Dohme',
    'PRIVYMTRA',
    '101710223',
    '240mg',
    'com rev',
    '2022-07-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    623,
    'gabapentina',
    'Upjohn Brasil',
    'NEURONTIN',
    '115350007',
    '400mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    624,
    'escitalopram (oxalato)',
    'Lundbeck',
    'LEXAPRO',
    '104750044',
    '20 mg/ml',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    625,
    'domperidona',
    'Johnson & Johnson',
    'MOTILIUM',
    '157211213',
    '1mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    626,
    'gabapentina',
    'Upjohn Brasil',
    'NEURONTIN',
    '115350007',
    '600mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    627,
    'escitalopram (oxalato)',
    'Lundbeck',
    'LEXAPRO',
    '104750044',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    628,
    'donepezila (cloridrato)',
    'Wyeth',
    'ERANZ',
    '121100106',
    '5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    629,
    'escitalopram (oxalato)',
    'Lundbeck',
    'LEXAPRO',
    '104750044',
    '15mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    630,
    'ganciclovir sódico',
    'União Química',
    'GANCICLOTRAT',
    '104970251',
    '500mg',
    'pó liof sol inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    631,
    'donepezila (cloridrato)',
    'Wyeth',
    'ERANZ',
    '121100106',
    '10 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    632,
    'escitalopram (oxalato)',
    'Lundbeck',
    'LEXAPRO',
    '104750044',
    '20mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    633,
    'acetato de ganirrelix',
    'Organon',
    'ORGALUTRAN',
    '100290212',
    '0,5mg/ml',
    'sol inj',
    '2022-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    634,
    'dopamina (cloridrato)',
    'Cristália',
    'DOPACRIS',
    '102980106',
    '5mg/mL',
    'sol inj',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    635,
    'escitalopram (oxalato)',
    'Eurofarma',
    'ESC ODT',
    '100431328',
    '5mg',
    'com orodisp',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    636,
    'gatifloxacino',
    'Allergan',
    'ZYMAR',
    '101470159',
    '3 mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    637,
    'dorzolamida (cloridrato)',
    'União Química',
    'OCUPRESS',
    '104971295',
    '20mg/mL',
    'sol oft',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    638,
    'escitalopram (oxalato)',
    'Eurofarma',
    'ESC ODT',
    '100431328',
    '10mg',
    'com orodisp',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    639,
    'letermovir',
    'Merck Sharp & Dohme',
    'PRIVYMTRA',
    '101710223',
    '480mg',
    'com rev',
    '2022-07-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    640,
    'escitalopram (oxalato)',
    'Eurofarma',
    'ESC ODT',
    '100431328',
    '15mg',
    'com orodisp',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    641,
    'letrozol',
    'Novartis Biociências',
    'FEMARA',
    '100680100',
    '2,5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    642,
    'doxazosina (mesilato)',
    'Upjohn Brasil',
    'CARDURAN XL',
    '115350006',
    '4,0 mg',
    'com lib cont',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    643,
    'escitalopram (oxalato)',
    'Eurofarma',
    'ESC ODT',
    '100431328',
    '20mg',
    'com orodisp',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    644,
    'leuprorrelina (acetato)',
    'Zodiac',
    'ELIGARD',
    '122140074',
    '7,5mg',
    'pó liof susp inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    645,
    'doxazosina (mesilato)',
    'Merck S/A',
    'MESILATO DE DOXAZOSINA',
    '100890277',
    '2mg',
    'com',
    '20/11/2012; 04/2/2013'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    646,
    'escopolamina (butilbrometo)',
    'Cosmed',
    'BUSCOPAN',
    '178170890',
    '10mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    647,
    'leuprorrelina (acetato)',
    'Zodiac',
    'ELIGARD',
    '122140074',
    '22,5mg',
    'pó liof susp inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    648,
    'leuprorrelina (acetato)',
    'Zodiac',
    'ELIGARD',
    '122140074',
    '45mg',
    'pó liof susp inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    649,
    'levamisol (cloridrato)',
    'Janssen-Cilag',
    'ASCARIDIL',
    '112363331',
    '80mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    650,
    'levamisol (cloridrato)',
    'Janssen-Cilag',
    'ASCARIDIL',
    '112363331',
    '150mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    651,
    'levanlodipino (besiltato)',
    'Biolab Sanus',
    'NOVANLO',
    '109740219',
    '2,5mg',
    'com',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    652,
    'levanlodipino (besiltato)',
    'Biolab Sanus',
    'NOVANLO',
    '109740219',
    '5mg',
    'com',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    653,
    'gatifloxacino',
    'Allergan',
    'ZYMAR',
    '101470159',
    '5 mg/mL',
    'sol oft',
    '2022-07-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    654,
    'Gefitinibe',
    'Astrazeneca',
    'IRESSA',
    '116180236',
    '250 mg',
    'com rev',
    '2016-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    655,
    'gemifloxacino (mesilato)',
    'Aché',
    'FACTIVE',
    '105730363',
    '320 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    656,
    'escopolamina (butilbrometo)',
    'Cosmed',
    'BUSCOPAN',
    '178170890',
    '10mg/mL',
    'sol or (got)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    657,
    'gencitabina (cloridrato)',
    'Eli Lilly',
    'GEMZAR',
    '112600017',
    '200mg/5mL',
    'po liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    658,
    'escopolamina (butilbrometo)',
    'Cosmed',
    'BUSCOPAN',
    '178170890',
    '20mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    659,
    'gencitabina (cloridrato)',
    'Eli Lilly',
    'GEMZAR',
    '112600017',
    '1g/25 mL',
    'po liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    660,
    'esilato de nintedanibe',
    'Boehringer Ingelheim',
    'OFEV',
    '103670173',
    '100mg',
    'cap mole',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    661,
    'genfibrozila',
    'Pfizer',
    'LOPID',
    '102160098',
    '600 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    662,
    'esilato de nintedanibe',
    'Boehringer Ingelheim',
    'OFEV',
    '103670173',
    '150mg',
    'cap mole',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    663,
    'genfibrozila',
    'Pfizer',
    'LOPID',
    '102160098',
    '900 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    664,
    'esmolol (cloridrato)',
    'Cristália',
    'BREVIBLOC',
    '102980227',
    '10mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    665,
    'gentamicina (sulfato)',
    'Santisa Laboratório',
    'GENTAMISAN',
    '101860002',
    '40 mg/mL',
    'sol Inj',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    666,
    'levetiracetam',
    'Aché',
    'ETIRA',
    '105730515',
    '500 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    667,
    'esmolol (cloridrato)',
    'Cristália',
    'BREVIBLOC DILUÍDO',
    '102980470',
    '10mg/mL',
    'sol inf',
    '2023-08-04 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    668,
    'doxazosina (mesilato)',
    'Merck S/A',
    'MESILATO DE DOXAZOSINA',
    '100890277',
    '4 mg',
    'com',
    '20/11/2012; 04/2/2013'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    669,
    'glibenclamina',
    'Sanofi Medley',
    'DAONIL',
    '183260433',
    '5,0 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    670,
    'levetiracetam',
    'Aché',
    'ETIRA',
    '105730515',
    '1000 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    671,
    'esomeprazol magnésio triidratado',
    'Astrazeneca',
    'NEXIUM',
    '116180105',
    '20mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    672,
    'gliclazida',
    'Servier',
    'DIAMICRON MR',
    '112780004',
    '30 mg',
    'com lib prol',
    '12/11/2012; 21/1/2013'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    673,
    'levetiracetam',
    'Ucb Biopharma',
    'KEPPRA',
    '123610083',
    '250mg',
    'com rev',
    '2016-05-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    674,
    'esomeprazol magnésio triidratado',
    'Astrazeneca',
    'NEXIUM',
    '116180105',
    '40mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    675,
    'gliclazida',
    'Servier',
    'DIAMICRON MR',
    '112780004',
    '60 mg',
    'com lib prol',
    '12/11/2012; 21/1/2013'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    676,
    'doxiciclina (hiclato)',
    'Pharlab',
    'DOXICLIN',
    '141070037',
    '100mg',
    'com rev',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    677,
    'levetiracetam',
    'Ucb Biopharma',
    'KEPPRA',
    '123610083',
    '100mg/mL',
    'sol oral',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    678,
    'glimepirida',
    'Sanofi Medley',
    'AMARYL',
    '183260388',
    '1 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    679,
    'doxiciclina monoidratada',
    'Wyeth',
    'VIBRAMICINA',
    '121100437',
    '100mg',
    'com sol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    680,
    'levetiracetam',
    'Ucb Biopharma',
    'KEPPRA',
    '123610083',
    '750mg',
    'com rev',
    '2016-05-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    681,
    'glimepirida',
    'Sanofi Medley',
    'AMARYL',
    '183260388',
    '2 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    682,
    'levetiracetam',
    'Ucb Biopharma',
    'KEPPRA XR',
    '123610093',
    '500mg',
    'com rev lib prol',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    683,
    'doxorrubicina (cloridrato)',
    'Wyeth',
    'ADRIBLASTINA RD',
    '121100357',
    '10mg',
    'pó sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    684,
    'glimepirida',
    'Sanofi Medley',
    'AMARYL',
    '183260388',
    '3 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    685,
    'levetiracetam',
    'Ucb Biopharma',
    'KEPPRA XR',
    '123610093',
    '750mg',
    'com rev lib prol',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    686,
    'doxorrubicina (cloridrato)',
    'Farmarin',
    'EVORUBICIN',
    '116880016',
    '50mg',
    'pó liof inj',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    687,
    'glimepirida',
    'Sanofi Medley',
    'AMARYL',
    '183260388',
    '4 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    688,
    'levocetirizina (dicloridrato)',
    'Ucb Biopharma',
    'ZYXEM',
    '100580105',
    '5mg/ml',
    'sol oral',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    689,
    'glimepirida',
    'Sanofi Medley',
    'AMARYL',
    '183260388',
    '6 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    690,
    'levocetirizina (dicloridrato)',
    'Ucb Biopharma',
    'ZYXEM',
    '100580105',
    '5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    691,
    'esomeprazol sódico',
    'Astrazeneca',
    'NEXIUM IV',
    '116180209',
    '40mg',
    'po liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    692,
    'levodropropizina',
    'Aché',
    'ANTUX',
    '105730205',
    '6mg/mL',
    'xpe',
    '2022-07-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    693,
    'espiramicina',
    'Sanofi Medley',
    'ROVAMICINA',
    '183260363',
    '1,5 MUI',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    694,
    'levodropropizina',
    'Aché',
    'ANTUX',
    '105730205',
    '30mg/mL',
    'sol oral',
    '2022-07-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    695,
    'espironolactona',
    'EMS S/A',
    'Espironolactona',
    '102350632',
    '25 mg',
    'com',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    696,
    'levofloxacino (hemiidratado)',
    'Janssen-Cilag',
    'LEVAQUIN',
    '112363316',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    697,
    'espironolactona',
    'EMS S/A',
    'Espironolactona',
    '102350632',
    '50mg',
    'com',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    698,
    'levofloxacino (hemiidratado)',
    'Cristália',
    'LEVOTAC',
    '102980303',
    '5mg/ml',
    'sol inj bolsa',
    '2017-11-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    699,
    'espironolactona',
    'EMS S/A',
    'Espironolactona',
    '102350632',
    '100mg',
    'com',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    700,
    'levofloxacino (hemiidratado)',
    'Apsen Farmacêutica',
    'LEVOXIN',
    '101180149',
    '250mg',
    'com rev',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    701,
    'estazolam',
    'Abbott',
    'NOCTAL',
    '105530045',
    '2mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    702,
    'doxorrubicina (cloridrato)',
    'Libbs',
    'FAULDOXO',
    '100330134',
    '2mg/mL',
    'sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    703,
    'levofloxacino (hemiidratado)',
    'Eurofarma',
    'TAMIRAM',
    '100431111',
    '750mg',
    'com rev',
    '2016-01-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    704,
    'estradiol',
    'Libbs',
    'NATIFA',
    '100330103',
    '1mg',
    'com',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    705,
    'levomalato de cabozantinibe',
    'Beaufor Ipsen',
    'CABOMETYX',
    '169770004',
    '20mg',
    'com rev',
    '2020-03-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    706,
    'estradiol',
    'Organon',
    'SANDRENA',
    '100290216',
    '0,1PCC (1mg/g)',
    'gel (sachê)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    707,
    'levomalato de cabozantinibe',
    'Beaufor Ipsen',
    'CABOMETYX',
    '169770004',
    '40mg',
    'com rev',
    '2020-03-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    708,
    'estradiol hemi-hidratado',
    'Farma Vision',
    'ESTREVA',
    '174650006',
    '0,1PCC (1mg/g)',
    'gel',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    709,
    'glipizida',
    'Pfizer',
    'MINIDIAB',
    '102160136',
    '5 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    710,
    'levomalato de cabozantinibe',
    'Beaufor Ipsen',
    'CABOMETYX',
    '169770004',
    '60mg',
    'com rev',
    '2020-03-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    711,
    'estradiol hemi-hidratado',
    'Besins Healthcare',
    'OESTROGEL',
    '187590002',
    '0,6mg/g',
    'gel',
    '2017-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    712,
    'gliteritinibe (hemifumarato)',
    'Astellas',
    'XOSPATA',
    '177170010',
    '40 mg',
    'com ver',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    713,
    'levomepromazina (cloridrato)',
    'Sanofi Medley',
    'NEOZINE',
    '183260316',
    '40mg/ml',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    714,
    'estradiol hemi-hidratado',
    'Farma Vision',
    'SYSTEN',
    '174650002',
    '1,6mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    715,
    'gosserrelina (acetato)',
    'Astrazeneca',
    'ZOLADEX',
    '116180043',
    '3,6 mg',
    'depot',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    716,
    'levomepromazina (cloridrato)',
    'Sanofi Medley',
    'NEOZINE',
    '183260316',
    '5mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    717,
    'droperidol',
    'Cristália',
    'DROPERDAL',
    '102980078',
    '2,5mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    718,
    'estradiol hemi-hidratado',
    'Farma Vision',
    'SYSTEN',
    '174650002',
    '3,2mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    719,
    'gosserrelina (acetato)',
    'Astrazeneca',
    'ZOLADEX LA',
    '116180043',
    '10,8 mg',
    'depot',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    720,
    'levomepromazina (maleato)',
    'Sanofi Medley',
    'NEOZINE',
    '183260316',
    '25mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    721,
    'dropropizina',
    'Abbott',
    'VIBRAL',
    '105530348',
    '1,5mg/mL',
    'xpe (infantil)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    722,
    'estradiol hemi-hidratado',
    'Farma Vision',
    'SYSTEN',
    '174650002',
    '6,4mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    723,
    'levomepromazina (maleato)',
    'Sanofi Medley',
    'NEOZINE',
    '183260316',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    724,
    'dropropizina',
    'Abbott',
    'VIBRAL',
    '105530348',
    '3mg/mL',
    'xpe (adulto)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    725,
    'estradiol hemi-hidratado',
    'Besins Healthcare',
    'VAGIFEM',
    '187590007',
    '10,3µg',
    'com vag',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    726,
    'levonorgestrel',
    'Cimed',
    'DIAD',
    '143810088',
    '0,75mg',
    'com',
    '2021-04-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    727,
    'estriol',
    'Schering Plough',
    'OVESTRION',
    '101710030',
    '1,0 mg/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    728,
    'dropropizina',
    'Abbott',
    'VIBRAL',
    '105530348',
    '30mg/mL',
    'sol or (got)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    729,
    'levonorgestrel',
    'Cimed',
    'DIAD',
    '143810088',
    '1,5mg',
    'com',
    '2021-04-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    730,
    'estriol',
    'Schering Plough',
    'OVESTRION',
    '101710030',
    '1,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    731,
    'levonorgestrel',
    'Bayer',
    'MIRENA',
    '170560106',
    '52mg',
    'sistema intrauterino',
    '2013-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    732,
    'estriol',
    'Schering Plough',
    'OVESTRION',
    '101710030',
    '2,0mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    733,
    'levosimendana',
    'Abbott',
    'SIMDAX',
    '105530255',
    '2,5mg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    734,
    'eszopiclona',
    'Eurofarma',
    'PRYSMA',
    '100431248',
    '2mg',
    'com rev',
    '2019-10-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    735,
    'levotiroxina sódica',
    'Aché',
    'LEVOID',
    '105730366',
    '38mcg',
    'com',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    736,
    'eszopiclona',
    'Eurofarma',
    'PRYSMA',
    '100431248',
    '3mg',
    'com rev',
    '2019-10-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    737,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '25mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    738,
    'etionamida',
    'Fundação Oswaldo Cruz',
    'FARMANGUINHOS - ETIONAMIDA',
    '110630078',
    '250mg',
    'com rev',
    '2018-09-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    739,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '50mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    740,
    'etodolaco',
    'Apsen Farmacêutica',
    'FLANCOX',
    '101180146',
    '200mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    741,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '75mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    742,
    'drospirenona',
    'Exeltis',
    'SLINDA',
    '135640010',
    '4mg',
    'com rev',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    743,
    'etodolaco',
    'Apsen Farmacêutica',
    'FLANCOX',
    '101180146',
    '300mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    744,
    'etodolaco',
    'Apsen Farmacêutica',
    'FLANCOX',
    '101180146',
    '400mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    745,
    'granisetrona (cloridrato)',
    'Laboratórios Bagó',
    'KYTRIL',
    '156260029',
    '1 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    746,
    'etodolaco',
    'Apsen Farmacêutica',
    'FLANCOX',
    '101180146',
    '500mg',
    'com rev',
    '2018-04-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    747,
    'granisetrona (cloridrato)',
    'Halex Istar',
    'QUEVATRYL',
    '103110185',
    '0,06 mg/mL',
    'sol inj',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    748,
    'griseofulvina',
    'Astrazeneca',
    'FULCIN',
    '116180013',
    '500 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    749,
    'guaifenesina',
    'Aché',
    'TRANSPULMIN XAROPE ADULTO',
    '105730349',
    '13,3mg/ml',
    'xpe',
    '2013-05-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    750,
    'etodolaco',
    'Apsen',
    'FLANCOX',
    '101180146',
    '600mg',
    'com rev',
    '2022-12-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    751,
    'guaifenesina',
    'Aché',
    'TRANSPULMIN XAROPE INFANTIL',
    '105730354',
    '6,667mg/mL',
    'xpe',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    752,
    'etomidato',
    'Antibióticos do Brasil',
    'HYPNOMIDATE',
    '155620059',
    '2mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    753,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '88mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    754,
    'etonogestrel',
    'Organon',
    'IMPLANON',
    '100290211',
    '68mg',
    'impl sc',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    755,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '100mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    756,
    'etoposídeo',
    'Blau Farmacêutica',
    'EPÓSIDO',
    '116370036',
    '20mg/ml',
    'sol inj',
    '2021-02-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    757,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '112mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    758,
    'etoricoxib',
    'Organon',
    'ARCOXIA',
    '100290035',
    '60mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    759,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '125mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    760,
    'etoricoxib',
    'Organon',
    'ARCOXIA',
    '100290035',
    '90mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    761,
    'duloxetina (cloridrato)',
    'Eli Lilly',
    'CYMBALTA',
    '112600164',
    '30mg',
    'cap + microgran\ngastrorresistentes',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    762,
    'haloperidol',
    'Janssen-Cilag',
    'HALDOL',
    '112360011',
    '2mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    763,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '150mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    764,
    'etravirina',
    'Janssen-Cilag',
    'INTELENCE',
    '112363391',
    '100mg',
    'com',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    765,
    'haloperidol',
    'Janssen-Cilag',
    'HALDOL',
    '112360011',
    '1mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    766,
    'duloxetina (cloridrato)',
    'Eli Lilly',
    'CYMBALTA',
    '112600164',
    '60mg',
    'cap + microgran\ngastrorresistentes',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    767,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '175mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    768,
    'everolimo',
    'Novartis Biociências',
    'AFINITOR',
    '100681065',
    '2,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    769,
    'haloperidol',
    'Janssen-Cilag',
    'HALDOL',
    '112360011',
    '5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    770,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '200mcg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    771,
    'dutasterida',
    'Glaxosmithkline',
    'AVODART',
    '101070231',
    '0,5mg',
    'cap  mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    772,
    'everolimo',
    'Novartis Biociências',
    'AFINITOR',
    '100681065',
    '5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    773,
    'haloperidol',
    'União Química',
    'UNI HALOPER',
    '104970191',
    '5mg/mL',
    'sol inj',
    '2021-12-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    774,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '300mcg',
    'com',
    '2015-08-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    775,
    'haloperidol (decanoato)',
    'Janssen-Cilag',
    'HALDOL DECANOATO',
    '112360012',
    '50 mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    776,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '12,5mcg',
    'com',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    777,
    'hidralazina (cloridrato)',
    'Novartis Biociências',
    'APRESOLINA',
    '100680013',
    '25mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    778,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '37,5mcg',
    'com',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    779,
    'hidralazina (cloridrato)',
    'Novartis Biociências',
    'APRESOLINA',
    '100680013',
    '50mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    780,
    'levotiroxina sódica',
    'Sanofi Medley',
    'PURAN T4',
    '183260353',
    '62,5mcg',
    'com',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    781,
    'hidroclorotiazida',
    'Sanofi Medley',
    'CLORANA',
    '183260436',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    782,
    'levotiroxina sódica',
    'Abbott',
    'SYNTHROID',
    '105530329',
    '137mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    783,
    'hidroclorotiazida',
    'Sanofi Medley',
    'CLORANA',
    '183260436',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    784,
    'lidocaína',
    'Grünenthal do Brasil',
    'TOPERMA',
    '186100002',
    '700mg',
    'emplastro',
    '2016-05-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    785,
    'hidrocortisona (butirato)',
    'Eurofarma',
    'LOCOID',
    '100430682',
    '1mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    786,
    'lidocaína (cloridrato)',
    'Cristália',
    'XYLESTESIN',
    '102980357',
    '20mg/mL',
    'sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    787,
    'hidrocortisona (butirato)',
    'Eurofarma',
    'LOCOID',
    '100430682',
    '1mg/g',
    'loc meu',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    788,
    'lidocaína (cloridrato)',
    'Cristália',
    'XYLESTESIN',
    '102980357',
    '10mg/ml',
    'sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    789,
    'hidrocortisona (succinato sódico)',
    'União Química',
    'CORTISONAL',
    '104970020',
    '100mg',
    'po sol  inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    790,
    'everolimo',
    'Novartis Biociências',
    'AFINITOR',
    '100681065',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    791,
    'lidocaína (cloridrato)',
    'Aspen Pharma',
    'XYLOCAÍNA GELÉIA',
    '137640158',
    '20mg/mL',
    'geléia top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    792,
    'hidrocortisona (succinato sódico)',
    'União Química',
    'CORTISONAL',
    '104970020',
    '500mg',
    'po sol  inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    793,
    'ebastina',
    'Eurofarma',
    'EBASTEL',
    '100430760',
    '1mg/mL',
    'sol oral',
    '2016-05-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    794,
    'lidocaína base',
    'Aché',
    'DERMOMAX',
    '105730589',
    '40mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    795,
    'hidroxicloroquina (sulfato)',
    'Sanofi Medley',
    'PLAQUINOL',
    '183260379',
    '400mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    796,
    'everolimo',
    'Novartis Biociências',
    'CERTICAN',
    '100680959',
    '0,5mg',
    'com',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    797,
    'lidocaína base',
    'Cristália',
    'XYLESTESIN',
    '102980357',
    '100mg/ml',
    'sol top',
    '2013-04-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    798,
    'hidroxizina (dicloridrato)',
    'Germed',
    'CLORIDRATO DE HIDROXIZINA',
    '105830642',
    '2mg/ml',
    'sol oral',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    799,
    'ebastina',
    'Eurofarma',
    'EBASTEL',
    '100430760',
    '10mg',
    'com rev',
    '2016-06-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    800,
    'ibandronato de sódio',
    'Laboratórios Bagó',
    'BONVIVA',
    '156260030',
    '150mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    801,
    'edoxabana (tosilato)',
    'Daiichi Sankyo',
    'LIXIANA',
    '104540185',
    '15 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    802,
    'everolimo',
    'Novartis Biociências',
    'CERTICAN',
    '100680959',
    '0,75mg',
    'com',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    803,
    'lidocaína base',
    'Aspen Pharma',
    'XYLOCAÍNA',
    '137640158',
    '50mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    804,
    'everolimo',
    'Novartis Biociências',
    'CERTICAN',
    '100680959',
    '1,0mg',
    'com',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    805,
    'limeciclina',
    'Galderma',
    'TETRALYSAL',
    '129160022',
    '150mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    806,
    'evogliptina (tartarato)',
    'Eurofarma',
    'SUGANON',
    '100431343',
    '5mg',
    'com ver',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    807,
    'edoxabana (tosilato)',
    'Daiichi Sankyo',
    'LIXIANA',
    '104540185',
    '30 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    808,
    'limeciclina',
    'Galderma',
    'TETRALYSAL',
    '129160022',
    '300mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    809,
    'exemestano',
    'Pfizer',
    'AROMASIN',
    '102160141',
    '25mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    810,
    'edoxabana (tosilato)',
    'Daiichi Sankyo',
    'LIXIANA',
    '104540185',
    '60 mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    811,
    'exenatida',
    'Eli Lilly',
    'BYETTA',
    '112600182',
    '250mcg/ml',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    812,
    'efavirenz',
    'Farmanguinhos',
    'EFAVIRENZ',
    '110630126',
    '600mg',
    'com rev',
    '2018-04-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    813,
    'ezetimiba',
    'Organon',
    'EZETROL',
    '100290076',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    814,
    'ibrutinibe',
    'Janssen-Cilag',
    'IMBRUVICA',
    '112363412',
    '140 mg',
    'cap gel dura',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    815,
    'efedrina (sulfato)',
    'Cristália',
    'EFEDRIN',
    '102980198',
    '50mg/mL',
    'sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    816,
    'famotidina',
    'Aché',
    'FAMOX',
    '105730144',
    '40mg',
    'com',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    817,
    'ibrutinibe',
    'Janssen-Cilag',
    'IMBRUVICA',
    '112363439',
    '140 mg',
    'com rev',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    818,
    'eltrombopague olamina',
    'Novartis Biociências',
    'REVOLADE',
    '100681132',
    '25mg',
    'com rev',
    '2015-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    819,
    'fampridina',
    'Biogen',
    'FAMPYRA',
    '169930003',
    '10mg',
    'com rev lib prol',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    820,
    'ibrutinibe',
    'Janssen-Cilag',
    'IMBRUVICA',
    '112363439',
    '420 mg',
    'com rev',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    821,
    'ibrutinibe',
    'Janssen-Cilag',
    'IMBRUVICA',
    '112363439',
    '560 mg',
    'com rev',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    822,
    'ibuprofeno',
    'PF Consumer',
    'ADVIL',
    '192900005',
    '200mg',
    'com rev',
    '2018-07-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    823,
    'eltrombopague olamina',
    'Novartis Biociências',
    'REVOLADE',
    '100681132',
    '50mg',
    'com rev',
    '2015-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    824,
    'fanciclovir',
    'EMS Sigma Pharma',
    'PENVIR',
    '135690607',
    '125mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    825,
    'linagliptina',
    'Boehringer Ingelheim',
    'TRAYENTA',
    '103670167',
    '5 mg',
    'com rev',
    '2013-04-22 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    826,
    'fanciclovir',
    'EMS Sigma Pharma',
    'PENVIR',
    '135690607',
    '500mg',
    'com rev',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    827,
    'linezolida',
    'Dr. Reddy’s',
    'LINEZOLIDA',
    '151430048',
    '600 mg',
    'com rev',
    '2022-06-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    828,
    'empagliflozina',
    'Boehringer Ingelheim',
    'JARDIANCE',
    '103670172',
    '10mg',
    'com rev',
    '2015-06-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    829,
    'fenazopiridina (cloridrato)',
    'Zodiac',
    'PYRIDIUM',
    '122140075',
    '100mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    830,
    'ibuprofeno',
    'PF Consumer',
    'ADVIL',
    '192900005',
    '400 mg',
    'cap mole',
    '2013-03-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    831,
    'linezolida',
    'Wyeth',
    'ZYVOX',
    '121100430',
    '2 mg/mL',
    'sol inj infus',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    832,
    'fenazopiridina (cloridrato)',
    'Zodiac',
    'PYRIDIUM',
    '122140075',
    '200mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    833,
    'ibuprofeno',
    'PF Consumer',
    'ADVIL 12h',
    '192900007',
    '600mg',
    'com rev lib prol',
    '2021-11-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    834,
    'lisdexanfetamina (dimesilato)',
    'Takeda',
    'VENVANSE',
    '106390304',
    '30 mg',
    'cap dura',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    835,
    'empagliflozina',
    'Boehringer Ingelheim',
    'JARDIANCE',
    '103670172',
    '25mg',
    'com rev',
    '2015-06-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    836,
    'fenilbutazona cálcica',
    'Vitamedic',
    'BUTACID',
    '103920155',
    '200mg',
    'com rev',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    837,
    'lisdexanfetamina (dimesilato)',
    'Takeda',
    'VENVANSE',
    '106390304',
    '50 mg',
    'cap dura',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    838,
    'fenitoína',
    'Cosmed',
    'HIDANTAL',
    '178170938',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    839,
    'lisdexanfetamina (dimesilato)',
    'Takeda',
    'VENVANSE',
    '106390304',
    '70 mg',
    'cap dura',
    '2013-07-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    840,
    'fenitoína sódica',
    'Cristália',
    'FENITAL',
    '102980015',
    '50mg/ml',
    'sol inj',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    841,
    'lisinopril',
    'Sanofi Medley',
    'LISINOPRIL',
    '183260198',
    '10 mg',
    'com',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    842,
    'fenobarbital',
    'Sanofi Medley',
    'GARDENAL',
    '183260323',
    '40mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    843,
    'lisinopril',
    'Sanofi Medley',
    'LISINOPRIL',
    '183260198',
    '20 mg',
    'com',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    844,
    'ibuprofeno',
    'Cosmed',
    'ALIVIUM',
    '178170807',
    '30mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    845,
    'fenobarbital',
    'Sanofi Medley',
    'GARDENAL',
    '183260323',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    846,
    'ibuprofeno',
    'Cosmed',
    'ALIVIUM',
    '178170807',
    '50mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    847,
    'ibuprofeno',
    'Cosmed',
    'ALIVIUM',
    '178170807',
    '100mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    848,
    'lítio (carbonato)',
    'Eurofarma',
    'CARBOLITIUM',
    '100430518',
    '300 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    849,
    'fenobarbital',
    'Sanofi Medley',
    'GARDENAL',
    '183260323',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    850,
    'ibuprofeno',
    'Cosmed',
    'ALIVIUM',
    '178170807',
    '200mg/mL',
    'sus got',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    851,
    'lítio (carbonato)',
    'Eurofarma',
    'CARBOLITIUM CR',
    '100430518',
    '450 mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    852,
    'fenofibrato',
    'Cosmed',
    'LIPANON',
    '178170095',
    '250mg',
    'cap dura com gran\ngastrorresistentes',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    853,
    'ibuprofeno',
    'Multilab',
    'BUPROVIL',
    '118190061',
    '300mg',
    'com rev',
    '2021-10-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    854,
    'lodenafila (carbonato)',
    'Cristália',
    'HELLEVA',
    '102980366',
    '80 mg',
    'com',
    '2024-04-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    855,
    'fenofibrato',
    'Abbott',
    'LIPIDIL',
    '105530358',
    '200mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    856,
    'ibuprofeno',
    'Catalent',
    'CAPSFEN',
    '101750021',
    '600mg',
    'cap mole',
    '2021-03-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    857,
    'loperamida (cloridrato)',
    'Johnson & Johnson',
    'IMOSEC',
    '157211211',
    '2 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    858,
    'ibuprofeno',
    'Cosmed',
    'ALIVIUM',
    '178170807',
    '600mg',
    'com rev',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    859,
    'losartana potássica',
    'Aché',
    'CORUS',
    '105730593',
    '25 mg',
    'com rev',
    '2023-06-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    860,
    'ibuprofeno arginina',
    'Zambon',
    'SPIDUFEN',
    '100840148',
    '1155mg',
    'gran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    861,
    'ibuprofeno arginina',
    'Zambon',
    'SPIDUFEN',
    '100840148',
    '770mg',
    'gran',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    862,
    'loratadina',
    'Bayer',
    'CLARITIN',
    '170560110',
    '10 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    863,
    'ibuprofeno (levolisinato)',
    'Recordati',
    'NEOPROFEN',
    '171260006',
    '10mg/ml',
    'sol p dil p infus',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    864,
    'loratadina',
    'Aché',
    'LORATADINA',
    '105730624',
    '1 mg/mL',
    'xpe',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    865,
    'fenofibrato',
    'Abbott',
    'LIPIDIL',
    '105530358',
    '160mg',
    'com rev',
    '2014-12-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    866,
    'lorazepam',
    'Wyeth',
    'LORAX',
    '121100035',
    '1 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    867,
    'fenoterol (bromidrato)',
    'Boehringer Ingelheim',
    'BEROTEC',
    '103670006',
    '5,0 mg/mL',
    'sol oral',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    868,
    'icatibanto (acetato)',
    'Takeda',
    'FIRAZYR',
    '106390305',
    '10mg/mL',
    'sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    869,
    'fenoterol (bromidrato)',
    'Boehringer Ingelheim',
    'BEROTEC',
    '103670006',
    '2mg/ml (100mcg/dose)',
    'sol aer dosif',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    870,
    'ifosfamida',
    'Baxter',
    'HOLOXANE',
    '106830171',
    '40mg/ml',
    'po prep extemp',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    871,
    'lorazepam',
    'Wyeth',
    'LORAX',
    '121100035',
    '2 mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    872,
    'fenoterol (bromidrato)',
    'Boehringer Ingelheim',
    'BEROTEC',
    '103670006',
    '4mg/ml (200mcg/dose)',
    'sol aer dosif',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    873,
    'imatinib (mesilato)',
    'Novartis Biociências',
    'GLIVEC',
    '100680174',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    874,
    'lornoxicam',
    'Biolab Sanus',
    'XEFO',
    '109740216',
    '8 mg',
    'com rev',
    '2015-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    875,
    'fentanila',
    'Janssen-Cilag',
    'DUROGESIC D-TRANS',
    '112360027',
    '2,1mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    876,
    'fentanila',
    'Janssen-Cilag',
    'DUROGESIC D-TRANS',
    '112360027',
    '4,2mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    877,
    'losartana potássica',
    'Organon',
    'COZAAR',
    '100290007',
    '50 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    878,
    'imatinib (mesilato)',
    'Novartis Biociências',
    'GLIVEC',
    '100680174',
    '400mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    879,
    'losartana potássica',
    'Organon',
    'COZAAR',
    '100290007',
    '100 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    880,
    'mesalazina',
    'Ferring',
    'PENTASA',
    '128760002',
    '500mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    881,
    'imiquimode',
    'Farmoquímica S/A',
    'IXIUM',
    '103900176',
    '50mg/g',
    'crem derm',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    882,
    'loteprednol (etabonato)',
    'Baush  & Lomb',
    'LOTEPROL',
    '119610007',
    '5 mg/ml',
    'sus oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    883,
    'mesalazina',
    'Ferring',
    'PENTASA',
    '128760002',
    '1g',
    'gran lib prol',
    '2021-10-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    884,
    'imipramina (cloridrato)',
    'Cristália',
    'IMIPRA',
    '102980023',
    '25mg',
    'com rev',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    885,
    'loxoprofeno sódico',
    'Daiichi Sankyo',
    'LOXONIN',
    '104540159',
    '60 mg',
    'com',
    '2015-12-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    886,
    'mesalazina',
    'Ferring',
    'PENTASA',
    '128760002',
    '2g',
    'gran lib prol',
    '2021-10-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    887,
    'indacaterol (maleato)',
    'Novartis Biociências',
    'ONBRIZE',
    '100681073',
    '150mcg',
    'cap dura po inal or',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    888,
    'loxoprofeno sódico',
    'Daiichi Sankyo',
    'LOXONIN FLEX',
    '104540188',
    '100mg',
    'ades transd',
    '2022-06-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    889,
    'mesalazina',
    'Ferring',
    'PENTASA ENEMA',
    '128760002',
    '10mg/mL',
    'enema ret',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    890,
    'indacaterol (maleato)',
    'Novartis Biociências',
    'ONBRIZE',
    '100681073',
    '300mcg',
    'cap dura po inal or',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    891,
    'lurasidona (cloridrato)',
    'Daiichi Sankyo',
    'LATUDA',
    '104540184',
    '20mg',
    'com rev',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    892,
    'mesilato de osimertinibe',
    'Astrazeneca',
    'TAGRISSO',
    '116180254',
    '40mg',
    'com rev',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    893,
    'mesilato de osimertinibe',
    'Astrazeneca',
    'TAGRISSO',
    '116180254',
    '80mg',
    'com rev',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    894,
    'indapamida',
    'Servier',
    'NATRILIX',
    '112780048',
    '2,5mg',
    'drag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    895,
    'fentanila',
    'Janssen-Cilag',
    'DUROGESIC D-TRANS',
    '112360027',
    '8,4 mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    896,
    'mesilato de rasagilina',
    'Teva Farmacêutica',
    'AZILECT',
    '155730033',
    '1mg',
    'com',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    897,
    'fentanila',
    'Janssen-Cilag',
    'DUROGESIC D-TRANS',
    '112360027',
    '16,8 mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    898,
    'lurasidona (cloridrato)',
    'Daiichi Sankyo',
    'LATUDA',
    '104540184',
    '40mg',
    'com rev',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    899,
    'fentanila (citrato)',
    'Cristália',
    'FENTANEST',
    '102980081',
    '0,05 mg/mL',
    'sol inj (com conservante)',
    '2017-11-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    900,
    'indapamida',
    'Servier',
    'NATRILIX SR',
    '112780048',
    '1,5mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    901,
    'mesna',
    'Baxter',
    'MITEXAN',
    '106830170',
    '100mg/mL',
    'sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    902,
    'fentanila (citrato)',
    'Antibióticos do Brasil',
    'FENTANIL',
    '155620060',
    '0,05 mg/mL',
    'sol inj (sem conservante)',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    903,
    'lurasidona (cloridrato)',
    'Daiichi Sankyo',
    'LATUDA',
    '104540184',
    '80mg',
    'com rev',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    904,
    'metadona (cloridrato)',
    'Cristália',
    'MYTEDOM',
    '102980138',
    '10mg/mL',
    'sol inj',
    '2017-09-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    905,
    'fenticonazol (nitrato)',
    'Aché',
    'FENTIZOL',
    '105730327',
    '0,02 g/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    906,
    'metadona (cloridrato)',
    'Cristália',
    'MYTEDOM',
    '102980138',
    '5mg',
    'com',
    '2018-12-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    907,
    'metadona (cloridrato)',
    'Cristália',
    'MYTEDOM',
    '102980138',
    '10mg',
    'com',
    '2018-12-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    908,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE',
    '100890193',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    909,
    'indometacina',
    'Aspen Pharma',
    'INDOCID',
    '137640119',
    '25mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    910,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE',
    '100890193',
    '850mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    911,
    'indometacina',
    'Aspen Pharma',
    'INDOCID',
    '137640119',
    '50mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    912,
    'malato de sunitinibe',
    'Pfizer',
    'SUTENT',
    '121100466',
    '12,5mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    913,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE',
    '100890193',
    '1000mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    914,
    'malato de sunitinibe',
    'Pfizer',
    'SUTENT',
    '121100466',
    '25mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    915,
    'ipratrópio (brometo)',
    'Boehringer Ingelheim',
    'ATROVENT',
    '103670004',
    '0,25mg/mL',
    'sol inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    916,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE XR',
    '100890340',
    '500mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    917,
    'malato de sunitinibe',
    'Pfizer',
    'SUTENT',
    '121100466',
    '50mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    918,
    'ipratrópio (brometo)',
    'Boehringer Ingelheim',
    'ATROVENT N',
    '103670004',
    '20 mcg/dose',
    'aer dosif',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    919,
    'maleato de fluvoxamina',
    'Abbott',
    'LUVOX',
    '105530352',
    '50mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    920,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE XR',
    '100890340',
    '750mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    921,
    'irbesartana',
    'Sanofi Medley',
    'APROVEL',
    '183260450',
    '150mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    922,
    'maleato de fluvoxamina',
    'Abbott',
    'LUVOX',
    '105530352',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    923,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE XR',
    '100890340',
    '850mg',
    'com lib prol',
    '2021-06-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    924,
    'irbesartana',
    'Sanofi Medley',
    'APROVEL',
    '183260450',
    '300mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    925,
    'metformina (cloridrato)',
    'Merck S/A',
    'GLIFAGE XR',
    '100890340',
    '1000mg',
    'com lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    926,
    'irinotecano (cloridrato tri-hidratado)',
    'Wyeth',
    'CAMPTOSAR',
    '121100434',
    '20mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    927,
    'manidipino (dicloridrato)',
    'Chiesi',
    'MANIVASC',
    '100580089',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    928,
    'metildopa',
    'Aspen Pharma',
    'ALDOMET',
    '137640117',
    '250mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    929,
    'manidipino (dicloridrato)',
    'Chiesi',
    'MANIVASC',
    '100580089',
    '20mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    930,
    'metildopa',
    'Aspen Pharma',
    'ALDOMET',
    '137640117',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    931,
    'maraviroque',
    'Glaxosmithkline',
    'CELSENTRI',
    '101070283',
    '150mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    932,
    'metilergometrina (maleato)',
    'União Química',
    'ERGOMETRIN',
    '104970126',
    '0,2mg/mL',
    'sol inj',
    '2021-07-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    933,
    'metilfenidato (cloridrato)',
    'Janssen-Cilag',
    'CONCERTA',
    '112363357',
    '18mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    934,
    'metilfenidato (cloridrato)',
    'Janssen-Cilag',
    'CONCERTA',
    '112363357',
    '36mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    935,
    'isavuconazônio (sulfato)',
    'United Medical',
    'CRESEMBA',
    '125760030',
    '200mg',
    'po liof sol inf',
    '2023-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    936,
    'maraviroque',
    'Glaxosmithkline',
    'CELSENTRI',
    '101070283',
    '300mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    937,
    'fenticonazol (nitrato)',
    'Aché',
    'FENTIZOL',
    '105730327',
    '600 mg',
    'ovul',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    938,
    'metilfenidato (cloridrato)',
    'Janssen-Cilag',
    'CONCERTA',
    '112363357',
    '54mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    939,
    'mebendazol',
    'Natulab',
    'HELMILAB',
    '138410036',
    '20mg/mL',
    'sus or',
    '2021-08-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    940,
    'isoconazol (nitrato)',
    'Bayer',
    'GYNO-ICADEN',
    '170560099',
    '10mg/g',
    'crem vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    941,
    'fenticonazol (nitrato)',
    'Aché',
    'FENTIZOL',
    '105730327',
    '20 mg/ml',
    'sol derm',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    942,
    'metilfenidato (cloridrato)',
    'Novartis Biociências',
    'RITALINA',
    '100680080',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    943,
    'mebeverina (cloridrato)',
    'Abbott',
    'DUSPATALIN',
    '105530353',
    '200mg',
    'cap lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    944,
    'fenticonazol (nitrato)',
    'Aché',
    'FENTIZOL',
    '105730327',
    '0,02 g/g',
    'crem derm',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    945,
    'isoconazol (nitrato)',
    'Bayer',
    'GYNO-ICADEN',
    '170560099',
    '600mg',
    'ovul',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    946,
    'mebutato de ingenol',
    'Leo Pharma',
    'PICATO',
    '185690005',
    '150mcg/g',
    'gel',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    947,
    'metilfenidato (cloridrato)',
    'Novartis Biociências',
    'RITALINA LA',
    '100680080',
    '10mg',
    'cap dura  lib mod',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    948,
    'fexofenadina (cloridrato)',
    'Opella Healthcare',
    'ALLEGRA',
    '186200010',
    '60 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    949,
    'mebutato de ingenol',
    'Leo Pharma',
    'PICATO',
    '185690005',
    '500mcg/g',
    'gel',
    '2017-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    950,
    'isoconazol (nitrato)',
    'Leo Pharma',
    'ICADEN',
    '185690008',
    '10mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    951,
    'fexofenadina (cloridrato)',
    'Opella Healthcare',
    'ALLEGRA',
    '186200010',
    '120 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    952,
    'isoconazol (nitrato)',
    'Leo Pharma',
    'ICADEN',
    '185690008',
    '10mg/mL',
    'sol top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    953,
    'fexofenadina (cloridrato)',
    'Opella Healthcare',
    'ALLEGRA',
    '186200010',
    '180 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    954,
    'isoflurano',
    'Biochimico',
    'ISOFLURANO',
    '100630222',
    '1ml/mL',
    'sol inal',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    955,
    'fexofenadina (cloridrato)',
    'Opella Healthcare',
    'ALLEGRA',
    '186200010',
    '6 mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    956,
    'isoniazida',
    'Fundação Oswaldo Cruz',
    'FARMANGUINHOS-ISONIAZIDA',
    '110630073',
    '100mg',
    'com ver',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    957,
    'finasterida',
    'Eurofarma',
    'FINASTERIDA',
    '100430815',
    '5 mg',
    'com rev',
    '2022-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    958,
    'isotretinoína',
    'Germed',
    'ISOTRETINOÍNA',
    '105830755',
    '10mg',
    'cap mole',
    '2016-06-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    959,
    'finasterida',
    'Libbs',
    'FINALOP',
    '100330174',
    '1 mg',
    'com rev',
    '2024-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    960,
    'fingolimode (cloridrato)',
    'Novartis Biociências',
    'GILENYA',
    '100681076',
    '0,5 mg',
    'cap dura',
    '2013-01-21 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    961,
    'fluconazol',
    'Pfizer',
    'ZOLTEC',
    '102160044',
    '2 mg/mL',
    'sol inj infus iv',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    962,
    'isotretinoína',
    'Stiefel',
    'ISOTREX',
    '106750046',
    '0,5mg/g',
    'gel',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    963,
    'fluconazol',
    'Pfizer',
    'ZOLTEC',
    '102160044',
    '50 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    964,
    'isotretinoína',
    'Stiefel',
    'ISOTREX',
    '106750046',
    '0,5mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    965,
    'metilfenidato (cloridrato)',
    'Novartis Biociências',
    'RITALINA LA',
    '100680080',
    '20mg',
    'cap dura  lib mod',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    966,
    'fluconazol',
    'Pfizer',
    'ZOLTEC',
    '102160044',
    '100 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    967,
    'metilfenidato (cloridrato)',
    'Novartis Biociências',
    'RITALINA LA',
    '100680080',
    '30mg',
    'cap dura  lib mod',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    968,
    'fluconazol',
    'Pfizer',
    'ZOLTEC',
    '102160044',
    '150 mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    969,
    'metilfenidato (cloridrato)',
    'Novartis Biociências',
    'RITALINA LA',
    '100680080',
    '40mg',
    'cap dura  lib mod',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    970,
    'fludarabina(fosfato)',
    'Libbs',
    'FLUDALIBBS',
    '100330150',
    '50 mg',
    'po liof',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    971,
    'metilprednisolona (aceponato)',
    'Leo Pharma',
    'ADVANTAN',
    '185690010',
    '1mg/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    972,
    'flumazenil',
    'Biopas',
    'LANEXAT',
    '189770002',
    '0,1mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    973,
    'isotretinoína',
    'Roche',
    'ROACUTAN',
    '101000182',
    '20mg',
    'cap mole',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    974,
    'meclizina (cloridrato)',
    'Apsen Farmacêutica',
    'MECLIN',
    '101180165',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    975,
    'itraconazol',
    'Janssen-Cilag',
    'SPORANOX',
    '112360028',
    '100mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    976,
    'meclizina (cloridrato)',
    'Apsen Farmacêutica',
    'MECLIN',
    '101180165',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    977,
    'flunitrazepam',
    'Farmoquímica S/A',
    'ROHYPNOL',
    '101000075',
    '1mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    978,
    'ivabradina (cloridrato)',
    'Servier',
    'PROCORALAN',
    '112780071',
    '5mg',
    'com rev',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    979,
    'medroxiprogesterona (acetato)',
    'Wyeth',
    'DEPO-PROVERA',
    '121100367',
    '150mg/mL',
    'sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    980,
    'fluoruracila',
    'Accord',
    'FLUORURACILA',
    '155370021',
    '50mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    981,
    'medroxiprogesterona (acetato)',
    'Pfizer',
    'PROVERA',
    '102160196',
    '2,5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    982,
    'metilprednisolona (aceponato)',
    'Leo Pharma',
    'ADVANTAN',
    '185690010',
    '1mg/g',
    'loç derm',
    '2017-05-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    983,
    'fluoxetina',
    'EMS Sigma Pharma',
    'DAFORIN',
    '135690598',
    '20mg/mL',
    'sol oral',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    984,
    'metilprednisolona (aceponato)',
    'Leo Pharma',
    'ADVANTAN',
    '185690010',
    '1mg/g',
    'sol top',
    '2017-05-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    985,
    'fluoxetina',
    'EMS Sigma Pharma',
    'DAFORIN',
    '135690598',
    '20mg',
    'com rev',
    '2018-04-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    986,
    'metilprednisolona (acetato)',
    'Pfizer',
    'DEPO MEDROL',
    '102160126',
    '40mg/mL',
    'sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    987,
    'fluoxetina (cloridrato)',
    'Eli Lilly',
    'PROZAC',
    '112600007',
    '20mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    988,
    'metoclopramida (cloridrato)',
    'Teuto',
    'CLORIDRATO DE\nMETOCLOPRAMIDA',
    '103700281',
    '5mg/ml',
    'sol inj',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    989,
    'metoclopramida (cloridrato)',
    'Teuto',
    'CLORIDRATO DE\nMETOCLOPRAMIDA',
    '103700281',
    '4mg/ml',
    'sol oral',
    '2018-10-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    990,
    'flurbiprofeno',
    'Reckitt Benckiser',
    'STREPSILS',
    '173900003',
    '8,75mg',
    'past',
    '2015-11-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    991,
    'metoclopramida (cloridrato)',
    'Sanofi Medley',
    'PLASIL',
    '183260318',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    992,
    'flurbiprofeno',
    'Laboratórios Bagó',
    'TARGUS',
    '156260023',
    '40mg',
    'ades transd',
    '2022-06-03 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    993,
    'metoprolol (succinato)',
    'Astrazeneca',
    'SELOZOK',
    '116180077',
    '25mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    994,
    'metoprolol (succinato)',
    'Astrazeneca',
    'SELOZOK',
    '116180077',
    '50mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    995,
    'medroxiprogesterona (acetato)',
    'Pfizer',
    'PROVERA',
    '102160196',
    '5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    996,
    'flutamida',
    'Hypermarcas',
    'EULEXIN',
    '172870521',
    '250mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    997,
    'metoprolol (succinato)',
    'Astrazeneca',
    'SELOZOK',
    '116180077',
    '100mg',
    'com rev lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    998,
    'medroxiprogesterona (acetato)',
    'Pfizer',
    'PROVERA',
    '102160196',
    '10mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    999,
    'fluticasona (furoato)',
    'Glaxosmithkline',
    'AVAMYS',
    '101070271',
    '27,5mcg/dose',
    'spr nas',
    '2013-04-19 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1000,
    'metoprolol (succinato)',
    'Libbs',
    'QUENZOR',
    '100330208',
    '25mg',
    'cap dura lib prol',
    '2022-02-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1001,
    'fluticasona (proprionato)',
    'PF Consumer',
    'FLIXONASE',
    '192900012',
    '50mcg/dose',
    'sus nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1002,
    'metoprolol (succinato)',
    'Libbs',
    'QUENZOR',
    '100330208',
    '50mg',
    'cap dura lib prol',
    '2022-02-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1003,
    'fluticasona (proprionato)',
    'Glaxosmithkline',
    'FLIXOTIDE SPR',
    '101070197',
    '50mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1004,
    'metoprolol (succinato)',
    'Libbs',
    'QUENZOR',
    '100330208',
    '100mg',
    'cap dura lib prol',
    '2022-02-18 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1005,
    'fluticasona (proprionato)',
    'Glaxosmithkline',
    'FLIXOTIDE SPR',
    '101070197',
    '250mcg/dose',
    'sol aer inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1006,
    'metoprolol (tartarato)',
    'Astrazeneca',
    'SELOKEN',
    '116180071',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1007,
    'fluticasona (proprionato)',
    'Libbs',
    'PLURAIR',
    '100330104',
    '50mcg/dose',
    'sus top',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1008,
    'metoprolol (tartarato)',
    'Astrazeneca',
    'SELOKEN',
    '116180071',
    '1mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1009,
    'flutrimazol',
    'Aché',
    'MICETAL',
    '105730701',
    '0,01g/g',
    'crem derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1010,
    'metotrexato',
    'Libbs Farmacêutica',
    'FAULDMETRO',
    '100330137',
    '25mg/mL',
    'sol inj',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1011,
    'metotrexato',
    'Libbs Farmacêutica',
    'FAULDMETRO',
    '100330137',
    '100mg/mL',
    'sol inj',
    '2023-04-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1012,
    'metronidazol',
    'Sanofi Medley',
    'FLAGYL',
    '183260377',
    '250mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1013,
    'mefenâmico, ácido',
    'Pfizer',
    'PONSTAN',
    '102160093',
    '500mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1014,
    'metronidazol',
    'Sanofi Medley',
    'FLAGYL',
    '183260377',
    '400mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1015,
    'megestrol (acetato)',
    'Bergamo',
    'FEMIGESTROL',
    '106460123',
    '160 mg',
    'com',
    '2018-09-26 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1016,
    'metronidazol',
    'Sanofi Medley',
    'FLAGYL',
    '183260377',
    '5mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1017,
    'ivabradina (cloridrato)',
    'Servier',
    'PROCORALAN',
    '112780071',
    '7,5mg',
    'com rev',
    '2013-05-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1018,
    'metronidazol',
    'Sanofi-Aventis',
    'FLAGYL GINECOLÓGICO',
    '113000078',
    '100mg/g',
    'geleia vag',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1019,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '50mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1020,
    'ivermectina',
    'Abbott',
    'REVECTINA',
    '105530351',
    '6mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1021,
    'meglumina (antimoniato)',
    'Sanofi Medley',
    'GLUCANTIME',
    '183260322',
    '300mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1022,
    'metronidazol',
    'Galderma',
    'ROZEX',
    '129160007',
    '7,5mg/g',
    'gel',
    '2013-06-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1023,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '10mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1024,
    'melfalana',
    'Aspen Pharma',
    'ALKERAN',
    '137640150',
    '2 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1025,
    'micafungina sódica',
    'Astellas',
    'MYCAMINE',
    '177170001',
    '100mg',
    'po liof sol inj',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1026,
    'nimesulida',
    'Multilab',
    'NIZUIL GEL',
    '118190069',
    '20mg/g',
    'gel',
    '2015-04-20 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1027,
    'melfalana',
    'Aspen Pharma',
    'ALKERAN',
    '137640150',
    '50mg/10mL',
    'po liof sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1028,
    'nimesulida betaciclodextrina*',
    'Cosmed',
    'MAXSULID',
    '178170098',
    '400mg',
    'com',
    '2020-06-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1029,
    'meloxicam',
    'Cristália',
    'BIOFLAC',
    '102980289',
    '15mg',
    'com',
    '2020-08-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1030,
    'nistatina',
    'Teuto',
    'CANDITRAT',
    '103700078',
    '100.000UI/ml',
    'sus or',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1031,
    'nistatina',
    'Teuto',
    'CANDITRAT',
    '103700078',
    '25.000 UI',
    'creme vaginal',
    '2020-06-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1032,
    'meloxicam',
    'Eurofarma',
    'MELOXICAM',
    '100430039',
    '7,5mg',
    'com',
    '2018-08-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1033,
    'nitazoxanida',
    'Farmoquímica S/A',
    'ANNITA',
    '103900173',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1034,
    'meloxicam',
    'Eurofarma',
    'MELOXICAM',
    '100430037',
    '10mg/ml',
    'sol inj',
    '2023-09-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1035,
    'micafungina sódica',
    'Astellas',
    'MYCAMINE',
    '177170001',
    '50mg',
    'po liof sol inj',
    '2016-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1036,
    'nitazoxanida',
    'Farmoquímica S/A',
    'ANNITA',
    '103900173',
    '20mg/mL',
    'sus or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1037,
    'memantina (cloridrato)',
    'Apsen Farmacêutica',
    'ALOIS',
    '101180615',
    '10mg/mL',
    'sol oral',
    '2018-05-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1038,
    'micofenolato sódico',
    'Novartis Biociências',
    'MYFORTIC',
    '100680897',
    '180mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1039,
    'nitrofural',
    'Cosmed',
    'FURACIN',
    '172870508',
    '2mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1040,
    'micofenolato sódico',
    'Novartis Biociências',
    'MYFORTIC',
    '100680897',
    '360mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1041,
    'miconazol',
    'Johnson & Johnson',
    'DAKTARIN GEL ORAL',
    '157211207',
    '20mg/ml',
    'gel or',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1042,
    'nitrofural',
    'Cosmed',
    'FURACIN',
    '172870508',
    '2mg/mL',
    'sol top',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1043,
    'miconazol (nitrato)',
    'Brainfarma',
    'DAKTAZOL',
    '155840555',
    '20mg/ml',
    'emulsão',
    '2013-10-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1044,
    'nitrofurantoína',
    'Cosmed',
    'MACRODANTINA',
    '178170787',
    '100mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1045,
    'miconazol (nitrato)',
    'Teuto',
    'NITRATO DE MICONAZOL',
    '103700296',
    '20mg/g',
    'crem vag',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1046,
    'nitroglicerina',
    'Cristália',
    'TRIDIL',
    '102980133',
    '5mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1047,
    'miconazol (nitrato)',
    'União Química',
    'VODOL',
    '104971357',
    '20mg/ml',
    'susp top',
    '2016-06-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1048,
    'nitroprusseto sódico diidratado',
    'Cristália',
    'NITROPRUS',
    '102980218',
    '50mg',
    'po liof inj + diluente 2 mL',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1049,
    'miconazol (nitrato)',
    'União Química',
    'VODOL',
    '104971357',
    '20mg/ml',
    'susp aer',
    '2016-06-24 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1050,
    'norepinefrina (hemitartarato)',
    'Hypofarma',
    'HYPONOR',
    '103870030',
    '2mg/mL',
    'sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1051,
    'miconazol (nitrato)',
    'União Química',
    'VODOL',
    '104971155',
    '20mg/g',
    'po uso top',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1052,
    'noretisterona',
    'Biolab',
    'NORESTIN',
    '109740101',
    '0,35mg',
    'com',
    '2022-05-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1053,
    'miconazol (nitrato)',
    'União Química',
    'VODOL',
    '104971155',
    '20mg/g',
    'crem derm',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1054,
    'memantina (cloridrato)',
    'Lundbeck',
    'EBIX',
    '104750050',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1055,
    'norfloxacino',
    'Medley',
    'NORFLOXACINO',
    '183260141',
    '400mg',
    'com rev',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1056,
    'midazolam',
    'Teuto',
    'MIDAZOLAM',
    '103700636',
    '1mg/mL',
    'sol inj',
    '2023-11-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1057,
    'nortriptilina (cloridrato)',
    'Cellera Farmacêutica',
    'PAMELOR',
    '104400215',
    '10mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1058,
    'midazolam',
    'Farmoquímica S/A',
    'DORMONID',
    '103900204',
    '5mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1059,
    'nortriptilina (cloridrato)',
    'Cellera Farmacêutica',
    'PAMELOR',
    '104400215',
    '25mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1060,
    'ivermectina',
    'Galderma',
    'SOOLANTRA',
    '129160205',
    '10mg/g',
    'crem derm',
    '2020-09-11 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1061,
    'memantina (cloridrato)',
    'Lundbeck',
    'EBIX',
    '104750050',
    '20mg',
    'com rev',
    '2016-01-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1062,
    'nortriptilina (cloridrato)',
    'Cellera Farmacêutica',
    'PAMELOR',
    '104400215',
    '50mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1063,
    'lacidipino',
    'Glaxosmithkline',
    'LACIPIL',
    '101070179',
    '4mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1064,
    'memantina (cloridrato)',
    'EMS S/A',
    'MORIALE ODT',
    '102351324',
    '5mg',
    'com orodisp',
    '2020-06-17 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1065,
    'nortriptilina (cloridrato)',
    'Cellera Farmacêutica',
    'PAMELOR',
    '104400215',
    '75mg',
    'cap dura',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1066,
    'memantina (cloridrato)',
    'EMS S/A',
    'MORIALE ODT',
    '102351324',
    '10mg',
    'com orodisp',
    '2020-06-17 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1067,
    'nusinersena',
    'Biogen',
    'SPINRAZA',
    '169930008',
    '2,4/mgL',
    'sol inj',
    '2020-12-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1068,
    'mepivacaína (cloridrato)',
    'DLA Pharmaceutical Ltda',
    'MEPIVALEM 3%',
    '109930008',
    '30mg/mL',
    'sol inj',
    '2018-02-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1069,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '50mg',
    'com rev',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1070,
    'ocitocina',
    'Mylan',
    'SYNTOCINON',
    '188300043',
    '40UI/mL',
    'sol spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1071,
    'mercaptopurina',
    'Aspen Pharma',
    'PURINETHOL',
    '137640133',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1072,
    'Ocitocina',
    'Blau Farmacêutica',
    'OCITOCINA',
    '116370072',
    '5UI/mL',
    'Sol Inj',
    '2023-08-04 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1073,
    'midazolam (maleato)',
    'Farmoquímica S/A',
    'DORMONID',
    '103900204',
    '7,5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1074,
    'octreotida',
    'Novartis Biociências',
    'SANDOSTATIN',
    '100680009',
    '0,05mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1075,
    'octreotida',
    'Novartis Biociências',
    'SANDOSTATIN',
    '100680009',
    '0,1mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1076,
    'meropeném triidratado',
    'Eurofarma',
    'MEROMAX',
    '100431008',
    '2g/20mL',
    'po sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1077,
    'midazolam (maleato)',
    'Farmoquímica S/A',
    'DORMONID',
    '103900204',
    '15mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1078,
    'octreotida',
    'Novartis Biociências',
    'SANDOSTATIN',
    '100680009',
    '0,5mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1079,
    'Midostaurina',
    'Novartis Biociências',
    'RYDAPT',
    '100681156',
    '25mg',
    'cap mole',
    '2020-10-16 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1080,
    'meropeném triidratado',
    'Wyeth',
    'MERONEM IV',
    '121100433',
    '500mg/10mL',
    'po sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1081,
    'octreotida (acetato)',
    'Novartis Biociências',
    'SANDOSTATIN LAR',
    '100680009',
    '10mg/2,5mL',
    'po sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1082,
    'miglustate',
    'Janssen-Cilag',
    'ZAVESCA',
    '112363431',
    '100mg',
    'cap dura',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1083,
    'milrinona (lactato)',
    'Sanofi Medley',
    'PRIMACOR',
    '183260321',
    '1mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1084,
    'meropeném triidratado',
    'Wyeth',
    'MERONEM IV',
    '121100433',
    '1000mg/20mL',
    'po sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1085,
    'octreotida (acetato)',
    'Novartis Biociências',
    'SANDOSTATIN LAR',
    '100680009',
    '20mg/2,5mL',
    'po sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1086,
    'mesalazina',
    'Takeda',
    'MESACOL',
    '106390248',
    '500mg',
    'sup ret',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1087,
    'octreotida (acetato)',
    'Novartis Biociências',
    'SANDOSTATIN LAR',
    '100680009',
    '30mg/2,5mL',
    'po sus inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1088,
    'mesalazina',
    'Takeda',
    'MESACOL',
    '106390200',
    '250mg',
    'sup ret',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1089,
    'ofloxacino',
    'Allergan',
    'OFLOX',
    '101470027',
    '3mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1090,
    'mesalazina',
    'Nycomed',
    'MESACOL',
    '106390248',
    '800mg',
    'com rev lib retard',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1091,
    'olanzapina',
    'Eli Lilly',
    'ZYPREXA',
    '112600021',
    '2,5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1092,
    'mesalazina',
    'Nycomed',
    'MESACOL',
    '106390248',
    '1200mg',
    'com lib mod',
    '2019-10-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1093,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '100mg',
    'com rev',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1094,
    'olanzapina',
    'Eli Lilly',
    'ZYPREXA',
    '112600021',
    '5mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1095,
    'mesalazina',
    'Brainfarma',
    'MESALAZINA',
    '155840259',
    '400mg',
    'com rev',
    '2013-08-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1096,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '150mg',
    'com rev',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1097,
    'olanzapina',
    'Eli Lilly',
    'ZYPREXA',
    '112600021',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1098,
    'minociclina (cloridrato)',
    'Ranbaxy',
    'CLORIDRATO DE MINOCICLINA',
    '123520091',
    '100mg',
    'com rev',
    '2013-04-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1099,
    'mesalazina',
    'Ferring',
    'PENTASA',
    '128760002',
    '1000mg',
    'sup ret',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1100,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '200mg',
    'com rev',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1101,
    'minoxidil',
    'Theraskin',
    'ALOXIDIL',
    '101910304',
    '50 mg/mL',
    'sol capilar',
    '2013-03-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1102,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '10mg/ml',
    'sol oral',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1103,
    'mirabegrona',
    'Astellas',
    'MYRBETRIC',
    '177170009',
    '25 mg',
    'com rev lib prol',
    '2018-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1104,
    'lacosamida',
    'Ucb Biopharma',
    'VIMPAT',
    '123610081',
    '10mg/ml',
    'sol inj',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1105,
    'mirabegrona',
    'Astellas',
    'MYRBETRIC',
    '177170009',
    '50 mg',
    'com rev lib prol',
    '2017-01-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1106,
    'mirtazapina',
    'Sandoz',
    'MIRTAZAPINA',
    '100470462',
    '30mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1107,
    'lamivudina',
    'Glaxosmithkline',
    'EPIVIR',
    '101070236',
    '150mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1108,
    'mirtazapina',
    'Sandoz',
    'MIRTAZAPINA',
    '100470462',
    '45mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1109,
    'lamivudina',
    'Cristália',
    'LAMI',
    '102980245',
    '10mg/mL',
    'sol oral',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1110,
    'mirtazapina',
    'Organon',
    'REMERON SOLTAB',
    '100290224',
    '15mg',
    'com orodisp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1111,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '25mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1112,
    'mirtazapina',
    'Organon',
    'REMERON SOLTAB',
    '100290224',
    '30mg',
    'com orodisp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1113,
    'olanzapina',
    'Eli Lilly',
    'ZYPREXA',
    '112600021',
    '5mg',
    'com orodisp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1114,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '50mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1115,
    'olanzapina',
    'Eli Lilly',
    'ZYPREXA',
    '112600021',
    '10mg',
    'com orodisp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1116,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1117,
    'olaparibe',
    'Astrazeneca',
    'LYNPARZA COMPRIMIDO',
    '116180268',
    '100mg',
    'com rev',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1118,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '5mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1119,
    'olaparibe',
    'Astrazeneca',
    'LYNPARZA COMPRIMIDO',
    '116180268',
    '150mg',
    'com rev',
    '2019-07-31 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1120,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '25mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1121,
    'olmesartana medoxomila',
    'Daiichi Sankyo',
    'BENICAR',
    '104540172',
    '20mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1122,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '50mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1123,
    'olmesartana medoxomila',
    'Daiichi Sankyo',
    'BENICAR',
    '104540172',
    '40mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1124,
    'olmesartana medoxomila',
    'Daiichi Sankyo',
    'BENICAR ODT',
    '104540193',
    '20mg',
    'com oro',
    '2023-10-09 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1125,
    '*Este medicamento está em processo de adequação e poderá sofrer alterações em sua bula e rotulagem',
    'nan',
    'nan',
    'nan',
    'nan',
    'nan',
    'nan'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1126,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '100mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1127,
    'lamotrigina',
    'Glaxosmithkline',
    'LAMICTAL',
    '101070006',
    '200mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1128,
    'lanreotida (acetato)',
    'Beaufor Ipsen',
    'SOMATULINE AUTOGEL',
    '169770002',
    '60mg/0,5mL',
    'sol inj',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1129,
    'lanreotida (acetato)',
    'Beaufor Ipsen',
    'SOMATULINE AUTOGEL',
    '169770002',
    '90mg/0,5mL',
    'sol inj',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1130,
    'lanreotida (acetato)',
    'Beaufor Ipsen',
    'SOMATULINE AUTOGEL',
    '169770002',
    '120mg/0,5mL',
    'sol inj',
    '2022-04-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1131,
    'lansoprazol',
    'Medley',
    'LANSOPRAZOL',
    '183260178',
    '15mg',
    'cap dura lib retard',
    '2016-11-25 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1132,
    'lansoprazol',
    'Legrand',
    'LANSOPRAZOL',
    '167730301',
    '30mg',
    'cap dura lib retard',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1133,
    'mirtazapina',
    'Organon',
    'REMERON SOLTAB',
    '100290224',
    '45mg',
    'com orodisp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1134,
    'misoprostol',
    'Infan',
    'PROSTOKOS',
    '115570044',
    '100mcg',
    'com vag',
    '2014-07-01 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1135,
    'mitotano',
    'Moksha',
    'LISODREN',
    '164250003',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1136,
    'lapatinibe (ditosilato)',
    'Novartis Biociências',
    'TYKERB',
    '100681137',
    '250mg',
    'com rev',
    '2013-06-06 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1137,
    'mitoxantrona',
    'Farmarin',
    'EVOMIXAN',
    '116880019',
    '2mg/ml',
    'sol inj',
    '2020-04-07 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1138,
    'modafinila',
    'Libbs',
    'STAVIGILE',
    '100330145',
    '100mg',
    'com',
    '2014-09-23 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1139,
    'latanoprosta',
    'Upjohn Brasil',
    'XALATAN',
    '115350001',
    '50mcg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1140,
    'modafinila',
    'Libbs',
    'STAVIGILE',
    '100330145',
    '200mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1141,
    'latanoprosteno bunode',
    'BL Industria',
    'VYZULTA',
    '119610029',
    '0,24mg/mL',
    'sol gotas',
    '2023-12-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1142,
    'mofetila (micofenolato)',
    'Roche',
    'CELLCEPT',
    '101000539',
    '500mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1143,
    'leflunomida',
    'Sanofi Medley',
    'ARAVA',
    '183260442',
    '20mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1144,
    'mometasona (furoato)',
    'Organon',
    'NASONEX',
    '100290217',
    '0,5mg/g',
    'sus spr nas',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1145,
    'leflunomida',
    'Sanofi Medley',
    'ARAVA',
    '183260442',
    '100mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1146,
    'mometasona (furoato)',
    'Cosmed',
    'OXIMAX',
    '178170788',
    '200mcg',
    'cap dura po inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1147,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '2,5mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1148,
    'lenalidomida',
    'Bristol Myers Squibb',
    'REVLIMID',
    '101800410',
    '5mg',
    'cap dura',
    '2018-06-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1149,
    'mometasona (furoato)',
    'Cosmed',
    'OXIMAX',
    '178170788',
    '400mcg',
    'cap dura po inal or + inal',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1150,
    'monoetanolamina (oleato)',
    'Farmoquímica S/A',
    'ETHAMOLIN',
    '149160002',
    '50mg/mL',
    'sol inj',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1151,
    'montelucaste sódico',
    'Aché',
    'MONTELAIR',
    '105730405',
    '4mg',
    'grânulo',
    '2017-03-02 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1152,
    'montelucaste sódico',
    'Organon',
    'SINGULAIR',
    '100290005',
    '10mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1153,
    'montelucaste sódico',
    'Organon',
    'SINGULAIR',
    '100290005',
    '4mg',
    'com mast',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1154,
    'montelucaste sódico',
    'Organon',
    'SINGULAIR',
    '100290005',
    '5mg',
    'com mast',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1155,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '10mg/mL',
    'sol inj',
    '2016-09-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1156,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '10mg/mL',
    'sol oral',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1157,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980363',
    '0,1mg/mL',
    'sol inj',
    '2020-06-17 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1158,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '0,2mg/mL',
    'sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1159,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '1mg/mL',
    'sol inj',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1160,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '10mg',
    'com',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1161,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF',
    '102980097',
    '30mg',
    'com',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1162,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF LC',
    '102980097',
    '30mg',
    'cap gel lib retard',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1163,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF LC',
    '102980097',
    '60mg',
    'cap gel lib retard',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1164,
    'morfina (sulfato pentahidratado)',
    'Cristália',
    'DIMORF LC',
    '102980097',
    '100mg',
    'cap gel lib retard',
    '2019-06-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1165,
    'moxifloxacino (cloridrato)',
    'Bayer',
    'AVALOX',
    '170560031',
    '400mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1166,
    'moxifloxacino (cloridrato)',
    'Hypofarma',
    'CLORIDRATO DE MOXIFLOXACINO',
    '103870066',
    '1,6mg/mL',
    'sol infus',
    '09/072021'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1167,
    'moxifloxacino (cloridrato)',
    'Novartis Biociências',
    'VIGAMOX',
    '100681112',
    '5mg/mL',
    'sol oft',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1168,
    'mupirocina',
    'Glaxosmithkline',
    'BACTROBAN',
    '101070078',
    '20mg/g',
    'pom derm',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1169,
    'nafazolina (cloridrato)',
    'Aché',
    'SORINE',
    '105730050',
    '0,5mg',
    'sol nas',
    '2016-03-08 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1170,
    'nalbufina (cloridrato)',
    'Cristália',
    'NUBAIN',
    '102980284',
    '10mg/mL',
    'sol inj',
    '2013-03-13 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1171,
    'naloxona (cloridrato)',
    'Cristália',
    'NARCAN',
    '102980283',
    '0,4mg/mL',
    'sol inj',
    '2016-07-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1172,
    'naltrexona (cloridrato)',
    'Cristália',
    'REVIA',
    '102980164',
    '50 mg',
    'com rev',
    '2014-10-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1173,
    'naproxeno',
    'Teuto',
    'NAPROXENO',
    '103700446',
    '250mg',
    'com',
    '2017-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1174,
    'naproxeno',
    'Teuto',
    'NAPROXENO',
    '103700446',
    '500mg',
    'com',
    '2017-07-28 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1175,
    'naproxeno sódico',
    'Bayer',
    'FLANAX',
    '170560047',
    '275mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1176,
    'naproxeno sódico',
    'Bayer',
    'FLANAX',
    '170560047',
    '550mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1177,
    'naproxeno sódico',
    'Bayer',
    'FLANAX XR',
    '170560126',
    '660mg',
    'com rev lib prol',
    '2024-01-05 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1178,
    'naratriptana (cloridrato)',
    'Glaxosmithkline',
    'NARAMIG',
    '101070259',
    '2,5 mg',
    'com rev',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1179,
    'nebivolol (cloridrato)',
    'Biolab Sanus',
    'NEBILET',
    '109740211',
    '5mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1180,
    'neostigmina (metilsulfato)',
    'União Química',
    'NORMASTIG',
    '104971406',
    '0,5mg/mL',
    'sol inj',
    '2023-02-10 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1181,
    'nepafenaco',
    'Novartis Biociências',
    'NEVANAC',
    '100681105',
    '1mg/ml',
    'sus oft',
    '2013-02-14 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1182,
    'nevirapina',
    'Fundação Oswaldo Cruz',
    'FARMANGUINHOS - NEVIRAPINA',
    '110630063',
    '200mg',
    'comprimido',
    '2016-10-27 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1183,
    'nicotina',
    'Johnson & Johnson',
    'NICORETTE',
    '157211210',
    '2mg',
    'goma',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1184,
    'nicotina',
    'Johnson & Johnson',
    'NICORETTE',
    '157211210',
    '4mg',
    'goma',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1185,
    'nicotina',
    'Mappel',
    'NIQUITIN',
    '134800106',
    '7mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1186,
    'nicotina',
    'Mappel',
    'NIQUITIN',
    '134800106',
    '14mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1187,
    'nicotina',
    'Mappel',
    'NIQUITIN',
    '134800106',
    '21mg',
    'ades',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1188,
    'nicotina',
    'Mappel',
    'NIQUITIN',
    '134800107',
    '2mg',
    'pastilha',
    '2018-05-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1189,
    'nicotina',
    'Mappel',
    'NIQUITIN',
    '134800107',
    '4mg',
    'pastilha',
    '2018-05-15 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1190,
    'nilotinibe',
    'Novartis Biociências',
    'TASIGNA',
    '100681060',
    '200mg',
    'cap dura',
    '2015-12-29 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1191,
    'nilotinibe',
    'Novartis Biociências',
    'TASIGNA',
    '100681061',
    '150mg',
    'cap dura',
    '2017-08-30 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1192,
    'nimesulida',
    'Diffucap-Chemobras',
    'ARFLEX RETARD',
    '104300041',
    '200 mg',
    'cap lib prol',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1193,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '50mg',
    'sup',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1194,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '100mg',
    'sup',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1195,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '100mg',
    'com',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1196,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '100mg',
    'com disp',
    '2012-11-12 00:00:00'
  );
INSERT INTO
  `medicamentos` (
    `id`,
    `farmaco`,
    `detentor`,
    `medicamento`,
    `registro`,
    `concentracao`,
    `forma_farmaceutica`,
    `data_inclusao`
  )
VALUES
  (
    1197,
    'nimesulida',
    'Aché',
    'NISULID',
    '105730301',
    '100mg',
    'gran',
    '2012-11-12 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: user_data
# ------------------------------------------------------------

INSERT INTO
  `user_data` (`id`, `name`, `cpf`, `weight`, `height`, `bornDate`)
VALUES
  (7, 'Nome', 'cpf', 1, 2, 'aaa');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: user_medicines
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (`id`, `email`, `password`)
VALUES
  (7, 'email', 'senha');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
