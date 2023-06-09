PGDMP     /                     {            Shop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    41102    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    41115    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    41114    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    41122    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    41121    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    41160    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    41159    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    223            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    222            �            1259    41129    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    41128    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    41138    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    41167    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    41166    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    41137    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            ~           2604    41118    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    41125    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    41163 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41132 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    41141 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    41170    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            (          0    41115    category 
   TABLE DATA                 public          postgres    false    215   n9       *          0    41122    image 
   TABLE DATA                 public          postgres    false    217    :       0          0    41160    orders 
   TABLE DATA                 public          postgres    false    223   i?       ,          0    41129    person 
   TABLE DATA                 public          postgres    false    219   j@       .          0    41138    product 
   TABLE DATA                 public          postgres    false    221   [A       2          0    41167    product_cart 
   TABLE DATA                 public          postgres    false    225   qX       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 5, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    222            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    218            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 3, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    220            �           2606    41120    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    41127    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    41165    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    41136    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    41172    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    41146    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    41148 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    41173 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    223    3210    219            �           2606    41154 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    3206    221    215            �           2606    41178 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    3212    223            �           2606    41149 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    217    3212            �           2606    41188 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    225    3212            �           2606    41183 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    219    225    3210            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b�Ŧ�.l���b����b녽v\�ua����5�'i���wa˅���da2bЀ�@��b�.. ��Vg      *   Y  x���M��5���w�V�GN�$�X��	
[��B�����x�}f���΍}���Ï������Ï�}������i��<�w���y��g�2�ݾ��������q����������&���N��J3�%�t�N�>��dm�X��_?�~wo�{��D1B�G�"}�V���
��k�#�$V�K)
s��;�k�Q�ud򐅓���R���h�6�L>R&m�d�"�3�P���})�E���x�V�)��;s7	K�K)f(��r�b���B�e%�)��0�h�s�b�U]u��IJp�􆪢��q�5rt��s���0{J���JjT�#�(j:�-]�9V�P�5V��h��>:3��b�l�|9�X10$�%ǔY-�#����59�����ι�:5jS[�GF0`��W�l��Y��䝹5�Xss'�*�c�ٲ���d�T��l:�fi�{�%7x�՜�ًbD&Yagc��T-�}�%7y����8X#M#���Ir������Ϲ�FO��9�P�!���wM(,�&�
�>��\r��h��rl��3U_`h%��a8_��c��Դψ��(ȕ�7+�un\�&�}�%7}�leTL߽s ���RwǤ��>�?n�2���b\<�F��V��o�ϱd��I3��E��(�vNj!Iů�"ɗ}�%7~fmVy8�s(�2��PP����쓎%7}JH�Vw*�)ˤ�'����[k]�9���Isj�4�-�jC
�!#�`.K��>璛>q˚�{�@��6F�ֻ�n�g��Kn�X��V����pF���4$�����t��\rӧݙ�q� ���YN=�2�x�O>�����C��T����Г4�J�x��\r�g�UZ�Nu5d�9��BqJ<�fL��^�9���3!P:`ZA/;�R#�����>ǒ��;���Xߟ6��Ԭʁ��/7�K�;

��B�6�q�d�E���� �����n��V��iX��RD��N+�GK0Cs^:����Ĳ\g�@ikD_'�Y"���V̗��%7���H�*
��-QKe��Ñ��B��t.��0�Q�-I|�N?Xd�Eɬ$�ϩ�g��Kn���kC����$c�Au1�El�e�Xr�'F#ၸ~v.�H���d�w�=�g���=����m��̫�lq����9.��K�{z�
�N���6�*��2��̧��e����c�#����fAʫ�W�:j�2й���A��B���u��^�vE�[�>/�z,y���pq�K �lm,|V/ؚ.#�şs���,q6Ю�����O��������%��1�څ0��)�C�:�\��̟s�͟�[��2���9��H���n�y�gK�z�/ܺ��      0   �   x��Ͻj�0 ��O�-	XFw�,ɝ:d0���k�u2����W�Хt���q�q?���������[�>�jZ(.+�T�0mc*��i�Œ�ۭ�K��e�]�Oۚ�|2��ϛy�h)�����z<�=�,�J.ǚ�nP6
*��Q��S�Y�K�\��r���{逃�,���{����s><���;�5 ���ܝ�(8a���Ď+���).�%$!"��?�����r���%�,(��o��      ,   �   x���Ak�0 ໿"�$jV;�NN3��F��]��٪��T毟���w{<x��$�9 I��v�MU�V�ZI���6h�g%m�ZO�_�^5b^����<X��ZIk	&*L�5���Drz��)�rL���v(��2�z�O�����\7n=��8S)�mO��ў$��� ����oТ����-������3��c>9��b��woC��H���Շ�f�0�pn.��h�\�      .      x��\[oWr~���<��!w��L�����"��`���V"beːh~�E�
eђx�+˫�� yh΅�5����(U_U�s�{��!�ș�>������u�����(���GD�~��;۷V?�w��g�v�K۷k��;[����x�~ܺ����;�w?�E��۾E��ߺsg�^-��޹C����{[�v�����-��_����W۷/G�|��_\�0�ԨEo7���J���\��n��m7W�k������m��,�βy6�w��R��|?���v��wj�|�����;Q���Q�m���i6��E6�Ҽ���=�f�3Ώ�������#~pvB�ϲ$ʦـ����Y�ղD>�q��#��9ȏi�E~�M�{�Ř~MxZ�6O������o�Nq�<���Q�#���N��A���Sq>���G�뤼��)\Nd���HW��~2v��J��1����Q�ϧK��n$���H���o>�����%�|/;�Rz8d�O��)]z@�M�g�L����裄�E��?�?#��.aE`R�l�o�{��.-5�k'�*���<U�6^&7/U^|$:�-�|��"�@_���C+�z��)}<�&"���ߧ���|p�]tZx��Lm?�;�P�H'u���Ո�&���l�lH$�3�����KD�)K�|����ES\4��$��i ��S�*H�������h���b���)�����8�����$}6::Փ��1@��pH_�B#X�	̚�U�k@���*:���X�1�)��Ļ�8�1o�u�dC����V��0������#��]�b]�"�]:��o��l�������e5j���v���\�ti')�1^7@�`XVvـ\��v5��S��C��&�A����l��p���}ӨY�z��g��/�au>�@�1�)��>j���%���a�ա<e�����+���u��\onl�q�{Q����~�'6�Ś�N�S�[�Ns��Fg{���;�'�kap�_�7{�K�B#�ˬ�(�}���p�����?��y�g`���d�A�)���O�	x�ߝ����	} �OE�-����sa�x��f\b�����v?�G�"_�c�U�s(�돜�r�yΏ!�Ɯ�Y=�)r���e�N$�q��	�
���X�2�N%�"��E�#g����!�wjs����1�U�B��Oq�Ws��l�5"���8�#c�|�z�'!��Oңc��C�������C湄h�I���j�y��h4d1f�Zv܃��T��H�r���ؒ�'�6E�R���X���g��� b�bYb1Ĭb
� q�2e�\e�U�͎�Q�iX>�^[�ku��K]1Z);m��޾�� ;0 pYF @!���X���0��oa_c�Ȭ��q�ߺ����fn���N{��Ѯ7���"�^����Nm����;s�b(�نN���+�T�d���.B��0��z͞Z�B}��om�dy~A$=��-��!����}{x�3u�y_�Va�@v
�{�UЩD�Y��VA�O�=ǰf	�8�+kj%�E��H�R/���Na�q|���aDsZ�c�F>�,0��H,��X�Eh��T�B�Ǩ64lJd� '��U(s�~葼�E���S9)�)��k�Ύ^�z��'�9����S���HO��*"���:�N�Պ$��E�h;�h1"~zpX+����r�Ho! vX	��)tߐPJ��������s��� �l�R��I^"��=��F�t�L�1��B���Vu��	�'��R�2ȷ�鱔ժ\#�T9��ù���<O���nS�^6��䣿!s� `mr��@���L�>�Qai=-��|�Q���k-�T�\|Uc�(�$�
���sl�}N��ȟ!OZk� �l���chPU��L+k�ضj-b`$|_�%��F,rLA$�C�,ۘ���9�j�!Y�ˬ��֒��\з��|�;��1�%C�H�EIֆ6�z����� 7LY�h����=%����"y��B��W����QvD�VN����^)��U)'�NA��A9l=��)����L4��~-�� �����vz��� R1׉���W���{��r~�r�	�<�)y�7����;RoI&;� S�y�����˚�5b��BdȈ���%6�5�^���v�ݩU����J�|[��$��hn�Vkv�?�]r��֖� ����*��f�����۫���fk�ˍ:�_k�׮�� �8�`��0�F �k9��G	;��P�NP�3����"�@��OjV���y� �CS��O��B�Ab΁9�C ����Q�ˎK�p%���Ɣ-�����%*v�T�?��CF¶?��
�Q�)��$	�4]�+)=��Mx��Gu_�j5�U�!�r�
4�P�9X�]��5��	���Ω�(L�C��)���ņWo%`�8Ό5�1(��bu�̫O멑��S��֊T��@b,�8h�л@��"yhb9C��'��	^���I�[y	~K���j�@���9&E4�T+�b��%m��.���l�*E<p���/9�`ĥ�:�T`33�Ǩs�j�-NX��lQ@����d�10'6E�,��L\A��u�j_��!x-��BH�Zld ����ALJ��?F�~if]�FL�����P����v%W��vc��h�o��ͯ�/��5b�ԃN�X$%���A�A�K��رt��Pݳc�]�@�[��~=A4J�Ǖ��t>�J�M&F�͇��Q���?�_B�j_�g6�O�%e�s<c�_
C�X���w1vւ�u�����8�X&Z��o��),�)��J�];9F�FĮ�q7Rg:��N�F�פ�7!�)l׍�B�C��������+a��Gy�Qr/�H�r<g���X ���">g��X�2�&�ZS������T"oϼ��R�,\�.���BD�$A�T�衰
a�s�����Ö��҉vA�":(��L@��@�h�=��*M]�R��Yp�\+'�B��'�H� �]�AE=-���}$��A[�4��H�i���.;��V���,��Ϊp�u�SK^;�����;���N�ﻎ/�V�@ʫ�gNX�f?�on}���������l"��L�,��ű��0��S\���1�EG<pMK 0��U53(-Hb�Њ|���?�1]�/�mB��J���3eU�Ȋ�8��L���#|(c���4��(l�e~�<��8R�<�"3t0-���]BTR�0/�yQ$���u��|�)��'P�+��䐞ӗ̷@�����"L���N\"1�����3	�T�6@����j�	肢�X����,���Uߢ΅��gdx�u����`LB��,�~c���xl�����ݼ	M�bPk��́�Ex^�X\U�$�������u>$�c� 
v��q���"&�#��tw d��LԴ�H��l�`�I�$F$(�-�lw���;�o���y�-�Qc��HWC����>޺����vxQ�� �6r�ک���O	��;ml�O0>�PsB��}����A,��,�,�C:c��J�%�^'�G:pꮐJqW�y�P� 	��K�%�	���-�i���^�55M�M��&\p���R[�#&��VZÇ�7|d�1�����Y7�����K_P�ר����*���;�����F=b��g$S�@$�%��=J)�*��ȦĪYáF&e1㣾�<cE�����L������C��2���p�����6%M����zL�^�37�y�X}����L�ԍP��3�T3ʙ�.��+" ��
T�H����gHj�"����{;GdR�L��o�pj�j��Ø#�COZ�6��uD�V
H�Hc�D��$��1F!��5��B��$����uP�`�[vϦ�|Eg���k ��$��ڢ����~�ÉA�O%���B�s�������y�<�pЯ<R.�쟌��P���MM���۪�c�,�?�Bw���*$b�tWɅ�R	T����Ɖ-����XZ��٤�� ogHC��EHI��_V��A�   |j̶��C�����0�Y����x�pYa�U.��ӑ���Ip�sj�M��q%�b�QР���}������zF:��Xf�$N�X�1;xB"4di�S�yU�}IqRSyj S��c�A���r�����O�~�~��� ��*r�t;����� ���S_�NQY��	�s�p����6N[�_0�?�E���f�t$�k�?�RE"�cU�\��+�J�y���M�FX���Caf4L<W�����D�=��+{�B�
��`�sm��vx���p��lo�^�������@��6��5v�����9P:��1��^���n�����j��x�＃I�F�Q���;��p$:�����Bz�A�x��&CiB���5��5��ʦڔ�5.\�>��潝����3��S�m@A�h��jȌ��.M�j�&��<�����zSD��X�1���&�,0�+���!�`����`g���?Q�HLo٠��X`:cAƺ ����;�W��>�`��������J���oXr�>JZ�0�9@�x���8�w
8���yJ�~�)�y/��q��&�4y�	��l5Z�����,��~��p�vja_���M�
�J@�͕�~�8F��[ �+��^8#	�b}Y�߅f�	�_)^��R��<m���wT (��H��S؝8��b���Q��]^SsT����/c�<�w(��I���!!L^�iͱd����6j�r���Or(b:��M������6�w�<� �<�O>�b��ۜ�;&})؃� VBT�8AO�+ƣg8��=D�R�ףֳK��)��xեT�3��s#�Q��|uB�~���{��_+��L��~�dbN����{�|�]����Wn\���ɭ��'��jr��v�W7ki�>.�A����z��ѕ��J�G��0�Z��h�{/x{�4�q��g�5h_��0l�c (yG�o ��H����P���C	F�S�q0;�WL]�K����0ŻA7(����~Jl�:[/m׶���Ẳ�٨��֌��5׫�<Q��N����5��O�½� �Æ��!7�%�͊�-�ׅp�!X�3q���KRؿ�L�x�{�j�dKҊ��2�J8��YHLxC�A].��ԑ+|cPھE��1V�����\�N;-.:���q�7�Fp_`&��Bbn���j��硬Չ�K��՞�5�Fv6�^�Ny�"H���B9|m�=D�z2l(ٚ��V�ZT�]S3g9���f@�=�}jӀ��|��IR�����TA�K�^
����Wj+�c�f�77�秔��K���=�y�E�)�cۿ��\z����.u8!P^���j6+����v���͍����y2��	j�0�^���+���a f�W�D��_^�c��ꔄL���_��Ĭ�M0�W�G���H�\ �/��D���W`GBjb�@�{O�j��Q�\�9����:�#3�w���{�U��qr�!���y�r�M��F�`vCH���ʼJ1R,G0V��ifl�j�f��>ҩ�?佯��SF� ^	��g2�̌���;���!�X/g�m--�kEH�b)M&�J����A�|����q���AS[r�8�W��z>X_����q��1~ť��L^�i87���A��a~1i�ǽ�1�8�2��7�WO�P��7ٸ͹�B�n����pb�h��_��R� �"lM��IB����Q���^Fu��r��c���F�Մ�*i��*����++���Q��h����o���~���      2   
   x���         