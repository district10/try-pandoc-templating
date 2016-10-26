public static Vector<String> getFiles() {
    Vector<String> files = new Vector<>();
    try {
        for (String f: src2dst.keySet()) {
            files.add(f);
        }
        for (String f: key2dir.values()) {
            files.add(f);
        }
        files.sort(new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    return files;
}
