import javax.swing.JFrame;
// https://github.com/folke/

@Deprecated
class Sarthak extends JFrame{

   private static final String JAPAN = "Japan";
   private JFrame frame;

   public void thisIsCool() {
      frame = new JFrame();
      String dada = "dada";
      new String("mama" + dada + JAPAN);
   }

   // aslkjfdkl
   public String getSomething(Boolean yon) {
      frame.setVisible(yon);
      return null;
   }

   protected void ifStatement() {
      if (4 > 5) {
         getSomething(true);
         return;
      } else {
         frame.dispose();
      }
   }
}
